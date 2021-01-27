'''
  <b>Copyright 2017 Silicon Laboratories, Inc. http://www.silabs.com</b>
  
  This is an example script to demonstrate how Simplicity Studio can be 
  used for headless builds.  The script is passed as an argument to Simplicity
  Studio from the command line.
  ==============================================================================
  Use Case: This script is for Silicon Labs AppBuilder based workflows for 
  Wireless products. AppBuilder generates the project settings and required SDK 
  source file links from the project .isc file.
  ==============================================================================
  Required files: .isc file, customer specific source files.
  ==============================================================================
  This script takes as arguments the .isc file used for building Mesh, Flex or 
  BLE projects and the path to the stack that generated the project and 
  optionally the toolchain. It will import the .isc file into the specified 
  workspace, call AppBuilder to generate the project and then it will build the 
  project.
  ==============================================================================
  Script-required arguments
  ==============================================================================
  • The full path to the .isc file.
  ==============================================================================
  Script-optional arguments
  • -tc is the toolchain type
  ==============================================================================
  Examples of using this script:
  Using <runScript.sh>
  /SiliconLabs/SimplicityStudio/v4/developer/scripting/runScript.sh 
    -data /c/temp/test_v4_workspace/ 
    /c/SwTools/scripts/ImportAndGenerateIsc_v4Pub.py 
    /c/temp/project_input_isc/Z3LightSoc/Z3LightSoc.isc 
    /c/SiliconLabs/SimplicityStudio/v4/developer/stacks/znet/v5.8.1.0 
    -tc=iar

    /SiliconLabs/SimplicityStudio/v4/developer/scripting/runScript.sh 
      -data /c/temp/test_v4_workspace/ 
      /c/SwTools/scripts/ImportAndGenerateIsc_v4Pub.py 
      /c/temp/project_input_isc/Z3DimmableLightSoc_2/Z3DimmableLightSoc_2.isc 
      /c/SiliconLabs/SimplicityStudio/v4/developer/sdks/gecko_sdk_suite/v1.1 
      -tc=iar
'''
import os
import shutil
import sys
import time
import argparse
import traceback

from Studio import project, appbuilder, stack, cpp, bugreport

'''
#
# Build the current configuration. AppBuilder only generates
# into the current configuration, so only that configuration
# should be built.
#
'''
def buildProject(__project__, destPath=None):
  # Build project
  print "getProjectInfo"
  projInfo = project.getProjectInfo(__project__)
  
  # Can only build the latest configuration
  print "buildOptions"
  config = projInfo.get(project.INFO_CURRENT_CONFIG)
  buildOptions = {
    project.OPTION_BUILD_TYPE: project.BUILD_TYPE_FULL,
    project.OPTION_BUILD_CONFIG: config
  }
  
  # Build project and return the results
  print "buildProject"
  results = project.buildProject(__project__, buildOptions, None)
  
  # Note that this logic is now throwing errors, we should not use this anymore
  # and just grab the binaries within the Studio workspace directory
  # Copy output folder to new directory
  if destPath != None:
    configFolder = __project__.getFolder(config).getLocation().toFile().getAbsolutePath()
    
    try:
      shutil.copytree(configFolder, destPath)
    except:
      if os.listdir(destPath)==[]:
        raise
      else:
        pass

  return results

'''
#
# Import the isc file into a Studio project.
#
'''
def importIscFile(iscFile, afv2, toolchain=None):
  if afv2: # AFV2 must be linked into the project
    importOptions = { project.OPTION_IMPORT_MODE : project.IMPORT_MODE_LINK }
  else: # Nothing special is required for AFV6
    importOptions = { project.OPTION_IMPORT_MODE : project.IMPORT_MODE_LINK_LIBRARIES }
  
  if toolchain:
    importOptions[project.OPTION_TOOLCHAIN_ID] = toolchain
  
  importOptions[project.OPTION_INDEXER_ID] = project.INDEXER_ID_NULL
    
  # Import the isc file into a project
  return project.importSlsProject(iscFile, importOptions, None)

'''
#
# Find the existing project that contains the isc file
# or import it into a new project.
#
'''
def findProjectForIscFile(iscFile, afv2, toolchain=None):
  # Find the project for the input isc file
  proj = project.getProjectForFile(iscFile)
  if proj != None:
    return proj
  
  # Fall back to assumed project name
  projectName = os.path.split(iscFile)[1].replace(".isc", "")
  proj = project.getProject(projectName)
  if proj != None and proj.exists():
    return proj

  # else import it
  return importIscFile(iscFile, afv2, toolchain)

'''
#
# Handle the eccentricities of AFV2 isc files. AFV2 files 
# must always be inside the stack. So, we need to copy the
# isc file directory into the stack.
#
'''
def handleAfv2(iscFile, stackLoc):
  # Copy isc files into stack (afv2 only)
  iscFolderLoc = os.path.dirname(iscFile)
  appLoc = stackLoc + os.sep + "app" + os.sep + "builder" + os.sep +  os.path.basename(iscFile).replace(".isc", "")
  if os.path.exists(appLoc) and appLoc != iscFolderLoc:
    shutil.rmtree(appLoc)

  try:
    shutil.copytree(iscFolderLoc, appLoc)
  except:
    if os.listdir(appLoc)==[]:
      raise
    else:
      pass

  # Update the isc file location
  return appLoc + "/" + os.path.basename(iscFile)

'''
#
# Find an existing stack at the stack location or
# scan for it.
#
'''
def getStack(stackLoc):
  # Try to use an existing stack first
  sdk = stack.getSDKForStack(stackLoc)
  if sdk == None:
    # It doesn't exist yet, so scan for it
    sdk = stack.scanStack(stackLoc, None)
    
  return sdk
    
'''
#
# Find the actual isc file if the input was not a file.
#
'''
def formatIscFileInput(iscFile):
  if os.path.isfile(iscFile):
    return iscFile
  
  # Find the isc files
  for filey in os.listdir(iscFile):
    if ".isc" in filey:
      iscFile = iscFile +"/" + filey
      break
  return iscFile

'''
#
# Primary starting point. This will add the stack, import the  
# isc file into a project, generate into that project, and 
# build every configuration. It will return a non-zero exit
# value if there were any errors.
#
'''
def importAndGenerate(iscFile, stackLoc, outputDir=None,onlyGenerate=None,userSpecificToolchain=None):
  
# Make sure the iscFile is actually a file
  cpp.enableCDTIndexer(False)
  print "formatIscFileInput"
  try:
    iscFile = formatIscFileInput(iscFile)
  except:
    print "\nError, hit exception:"
    traceback.print_stack()
  
  if iscFile == None:
    print "Error: No isc file found! Looked in ",iscFile
    return 1
  
  # Add the stacks here
  print "getStack"
  try:
    sdk = getStack(stackLoc)
  except:
    print "\nError, hit exception getting/loading stack.  Usually indicates stack could not load."
    traceback.print_stack() 
  
  if sdk == None:
    print "\nError: The scanned Stack is invalid. Scanned at: ",stackLoc
    return 1
  
  # Find out if the isc file is AFV6 or AFV2
  afv2 = not appbuilder.isAfv6IscFile(iscFile)
  if afv2:
    iscFile = handleAfv2(iscFile, stackLoc)
  
  # Get all of the valid toolchains for this isc file
  try:
    toolchains = appbuilder.getCompatibleToolchains(iscFile) 
    
    retValue = 0
    useToolchain = toolchains[0]
    for toolchain in toolchains:
      print "Supported (available) toolchains: ",toolchain
      
      if userSpecificToolchain:
        if userSpecificToolchain in toolchain:
          print "setting user specific toolchain =", toolchain
          useToolchain = toolchain
  except:
    useToolchain = None
  print "Toolchain set to: ", useToolchain
    
  # Import the isc file
  print "findProjectForIscFile"
  __project__ = findProjectForIscFile(iscFile, afv2, useToolchain)
    
  # Generate into the project
  print "generateProject"
  appbuilder.generateProject(__project__, None)
  projectName = os.path.split(iscFile)[1].replace(".isc", "")
  proj = project.getProject(projectName)
    
  if onlyGenerate:
    print "Generated project.  Now closing project and exiting as og flag is set"
    proj.close(None)
    return 0
  
  retValue = 0
  # Build the project and print the results
  print "buildProject"
  try:
    results = buildProject(__project__, outputDir)
    print "Build completed successfully."
  except Exception, e:
    print "Error: Exception caught:"
    traceback.print_stack()
    print "Building through Studio Excepted: "+str(e)
    retValue=1
    
  if retValue is 0: 
    print "\nErrors?",results.anyErrors()
    print "Markers:\n","\n".join([project.markerToString(marker) for marker in results.problemMarkers])
    if results.anyErrors():
      print "\nError: There were build errors in the project"
      retValue= 1
  
  # Create a bug report if there were errors and there's an output directory
  if retValue != 0 and outputDir != None:
    print "\nGenerating bug.zip to dir:"+outputDir
    bugreport.createReportBugLog(outputDir, os.path.basename(iscFile).replace(".isc", ""))
  print "Closing project."
  proj.close(None)
  
  return retValue

'''
#
# Command line starting point
#
Toolchain example strings being checked against:
com.silabs.ide.si32.gcc:4.8.3.20131129
com.silabs.ide.si32.iar:7.30.1.7746
'''
def main(): 
  parser = argparse.ArgumentParser()
  parser.add_argument("iscFile", help="the isc file to import")
  parser.add_argument("stackLoc", help="where the stack to use is installed")
  parser.add_argument("-out","--outputDir", help="the output directory you would like the binaries copied to (they remain in your studio workspace as well)")
  parser.add_argument("-og","--onlyGenerate",action="store_true", help="only generate the application, do not build it with a toolchain")
  parser.add_argument("-tc","--toolchain", help="toolchain to use - part of toolchain name, such as 'gcc', 'arm'")
  optionalArguments = parser.parse_args()
  
  #import pdb; pdb.set_trace()
  print "ImportAndGenerateIsc.py"
  print "ISCFile: "+optionalArguments.iscFile
  print "StackDir: "+optionalArguments.stackLoc
  
  if optionalArguments.outputDir:
    print "OutputDir: "+optionalArguments.outputDir
  ret = importAndGenerate(optionalArguments.iscFile, optionalArguments.stackLoc, optionalArguments.outputDir, optionalArguments.onlyGenerate, optionalArguments.toolchain)
  sys.exit(ret)
  

if __name__ == '__main__':
  main()
  