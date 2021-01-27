'''
  <b>Copyright 2017 Silicon Laboratories, Inc. http://www.silabs.com</b>
  
  This is an example script to demonstrate how Simplicity Studio can be 
  used for headless builds.  The script is passed as an argument to Simplicity
  Studio from the command line.
  ==============================================================================
  Use case: Build an existing project in a new workspace. This can be used for 
    continuous integration builds where the workspace is based on a build number
    or some other identifier associated with the build.
  ==============================================================================
  Required files: .project, .cproject and project specific source files.
  ==============================================================================
  This script takes as arguments the path to the project folder (must contain 
  .project and a .cproject files) to import. It will import the project into the 
  specified workspace, and then it will build the project.
  ==============================================================================
  Script-required arguments
  • The full path to the project folder.
  ==============================================================================
  Script-optional arguments
  • -cfg is the build configuration for the build – if not given then the 
    current active configuration of the project is used.
  • --AutoEnable – If this option is specified then Simplicity Studio finds 
    compatible values for the SDK and toolchain settings. The default is False.
  ==============================================================================
  Examples of using this script:
  /SiliconLabs/SimplicityStudio/v4/developer/scripting/runScript.sh 
    -data /c/temp/test_v4_workspace/ 
    /c/SWTools/scripts/ImportExistingProjectAndBuild.py 
    /c/temp/project_input_src/SLSTK3401A_emode_2

  /SiliconLabs/SimplicityStudio/v4/developer/scripting/runScript.sh 
    -data /c/temp/test_v4_workspace/ 
    /c/SWTools/scripts/ImportExistingProjectAndBuild.py 
    /c/temp/project_input_src/soc-smartphone 
    -cfg "GNU ARM v4.9.3 - Default"
'''

import Studio
from Studio.project import *

import sys, os, shutil, os.path
import argparse

def copyProjectFolder(projectPath, baseName):
    # get project contents
    tempPath = getWorkspaceLocation()
    projPath = os.path.join(tempPath, baseName)
    if os.path.isdir(projPath):
      shutil.rmtree(projPath, ignore_errors = True)
      # check if rmtree left behind top directory
      if os.path.isdir(projPath):
        os.rmdir(projPath)
    print "copying project to",projPath
    names = os.listdir(projectPath)

    os.makedirs(projPath)
    errors = []
    for name in names:
        srcname = os.path.join(projectPath, name)
        dstname = os.path.join(projPath, name)
        try:
            if os.path.isdir(srcname):
                copyProjectFolder(srcname, dstname)
            else:
                shutil.copy(srcname, dstname)
        except (IOError, os.error) as why:
            errors.append((srcname, dstname, str(why)))
        # catch the Error from the recursive copytree so that we can
        # continue with other files
        except Error as err:
            errors.extend(err.args[0])
    if errors:
        raise Error(errors)
    
    return projPath

def main(): 

  parser = argparse.ArgumentParser()
  parser.add_argument("proj", help="the path to the project directory to import")
  parser.add_argument("-cfg","--buildConfig", help="the build configuration to use for the project")
  parser.add_argument("--AutoEnable", action='store_true', help="Set to True or False(Default). Enable automatically detecting compatible board / part / SDKs or toolchains.")
  optionalArguments = parser.parse_args()
  buildConfig = ""

  print "ImportExistingProjectAndBuild.py"
  print "Project: "+optionalArguments.proj
  if optionalArguments.buildConfig:
    print "buildConfig: "+optionalArguments.buildConfig
    buildConfig = optionalArguments.buildConfig
  noAutoEnable = not optionalArguments.AutoEnable

  fileName = os.path.basename(optionalArguments.proj)
  baseName = os.path.splitext(fileName)[0]
  importOptions = { 
    OPTION_PROJECT_NAME : baseName,
    OPTION_NO_AUTO_ENABLE : noAutoEnable
  }
  
  project = Studio.project.getProject(baseName)
  if project.exists():
    print "*** Deleting existing project",project.name
    project.delete(project.NEVER_DELETE_PROJECT_CONTENT, None)
    
  print "*** importing from",optionalArguments.proj

  #import pdb; pdb.set_trace()
  path = copyProjectFolder(optionalArguments.proj, baseName)
  
  project = Studio.project.importExistingProject(
    path,
    importOptions,
    None)
  
  projInfo = getProjectInfo(project)
  
  print projInfo
  
  if not buildConfig:
    buildConfig = projInfo[INFO_CURRENT_CONFIG]
    
  buildOptions = { 
    OPTION_BUILD_TYPE: BUILD_TYPE_FULL,
    OPTION_BUILD_CONFIG: buildConfig,
    OPTION_NO_AUTO_ENABLE : noAutoEnable 
  }
    
  print "Project lives in", project.location
  
  results = Studio.project.buildProject(project, buildOptions, None)
  
  print "Generated files:\n","\n".join([str(x) for x in results.newFiles]),"\n"
  print "Errors?",results.anyErrors(),"\n"
  print "Markers:\n","\n".join([Studio.project.markerToString(marker) for marker in results.problemMarkers]),"\n"

if __name__ == "__main__":
  main()
  
  