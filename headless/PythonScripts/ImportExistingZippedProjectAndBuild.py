'''
  <b>Copyright 2017 Silicon Laboratories, Inc. http://www.silabs.com</b>
  
  This is an example script to demonstrate how Simplicity Studio can be 
  used for headless builds.  The script is passed as an argument to Simplicity
  Studio from the command line.
  ==============================================================================
  Use case: Projects that are shared between engineers or build machines in a 
    zip file as opposed to being pulled from a version control system.
  ==============================================================================
  Required files: A zip file containing the.project, .cproject and project 
    specific source files.
  ==============================================================================
  This script takes as arguments the path to the zipped project folder (must 
    contain .project and .cproject files) to import. It will unzip the
    project into the specified workspace, import the project into the workspace 
    and then it will build the project.
  ==============================================================================
  Script-required arguments
  • The path to the zipped project folder.
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
    /c/SWTools/scripts/ImportExistingZippedProjectAndBuild.py 
    /c/temp/project_input_zipped/railtest_efr32.zip

    /SiliconLabs/SimplicityStudio/v4/developer/scripting/runScript.sh 
      -data /c/temp/test_v4_workspace/ 
      /c/SWTools/scripts/ImportExistingZippedProjectAndBuild.py 
      /c/temp/project_input_zipped/railtest_efr32.zip 
      -cfg "GNU ARM v4.9.3 - Default"
'''

import Studio
from Studio.project import *

Studio.core.addContextBundle("org.eclipse.core.resources")
import org.eclipse.core.resources.WorkspaceJob
import org.eclipse.core.runtime.Status

import os, shutil, os.path, zipfile
#import tempfile
import sys
import argparse


def extractZipFile(zipPath, baseName):
  tempPath = getWorkspaceLocation()
  print "extracting project to",tempPath
  z = zipfile.ZipFile(zipPath)
  z.extractall(tempPath)
  z.close()
    
  return os.path.join(tempPath, baseName)

def main(): 
  #import pdb; pdb.set_trace()

  parser = argparse.ArgumentParser()
  parser.add_argument("zFile", help="the zip file that contains the project to import")
  parser.add_argument("-cfg","--buildConfig", help="the build configuration to use for the project")
  parser.add_argument("--AutoEnable", action='store_true', help="Set to True or False(Default). Enable automatically detecting compatible SDKs or toolchains.")
  optionalArguments = parser.parse_args()
  buildConfig = ""

  print "ImportExistingZippedProjectAndBuild.py"
  print "ZipFile: "+optionalArguments.zFile
  if optionalArguments.buildConfig:
    print "buildConfig: "+optionalArguments.buildConfig
    buildConfig = optionalArguments.buildConfig
  noAutoEnable = not optionalArguments.AutoEnable

  fileName = os.path.basename(optionalArguments.zFile)
  baseName = os.path.splitext(fileName)[0]
  importOptions = { 
    OPTION_PROJECT_NAME : baseName,
    OPTION_NO_AUTO_ENABLE : noAutoEnable
  }
  
  project = Studio.project.getProject(importOptions[OPTION_PROJECT_NAME])
  if project.exists():
    print "*** Deleting existing",project.name
    project.delete(project.ALWAYS_DELETE_PROJECT_CONTENT, None)
    
  # normally, path is just a path to something on the filesystem
  path = extractZipFile(optionalArguments.zFile, baseName)
  
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
  