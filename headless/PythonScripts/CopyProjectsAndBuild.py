'''
  <b>Copyright 2017 Silicon Laboratories, Inc. http://www.silabs.com</b>
  
  This is an example script to demonstrate how Simplicity Studio can be 
  used for headless builds.  The script is passed as an argument to Simplicity
  Studio from the command line.
  ==============================================================================
  Use case: Building multiple projects in a new workspace. Projects can be 
    stored in an existing workspace or any file structure that has all projects 
    in subfolders to the specified path, but nested projects are not supported.
  ==============================================================================
  Required files: Each project in a subfolder that contains the .project, 
    .cproject and project specific source files.
  ==============================================================================
  This script takes as an argument the path to a folder that has multiple 
  project folders under it. It will copy all of the project folders into the 
  specified workspace and then import each project into the workspace and then 
  it will build the projects.
  ==============================================================================
  Script-required arguments
  • The path to the folder that contains one or more project folders.
  ==============================================================================
  Script-optional arguments
  • none
  ==============================================================================
  Examples of using this script:
  Using <runScript.sh>
  /SiliconLabs/SimplicityStudio/v4/developer/scripting/runScript.sh 
    -data /c/temp/test_v4_workspace/ 
    /c/SWTools/scripts/CopyProjectsAndBuild.py 
    /c/temp/project_input_src
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
        except shutil.Error as err:
            errors.extend(err.args[0])
    if errors:
        raise shutil.Error(errors)
    
    return projPath

def copyProjects(projectPath):
    dstPath = getWorkspaceLocation()
    print "copying project to",dstPath
    names = os.listdir(projectPath)

    errors = []
    for name in names:
        if name != ".metadata" and name != ".closet":
          srcname = os.path.join(projectPath, name)
          dstname = os.path.join(dstPath, name)
          try:
              if os.path.isdir(srcname):
                  copyProjectFolder(srcname, dstname)
              else:
                  shutil.copy(srcname, dstname)
          except (IOError, os.error) as why:
              errors.append((srcname, dstname, str(why)))
          # catch the Error from the recursive copytree so that we can
          # continue with other files
          except shutil.Error as err:
              errors.extend(err.args[0])
    if errors:
        raise shutil.Error(errors)
    
    return dstPath

def main(): 

  parser = argparse.ArgumentParser()
  parser.add_argument("projects", help="the path to the projects")
  parser.add_argument("--AutoEnable", action='store_true', help="Set to True or False(Default). Enable automatically detecting compatible board / part / SDKs or toolchains.")
  optionalArguments = parser.parse_args()
  buildConfig = ""

  print os.path.basename(__file__)
  print "CopyProjectsAndBuild.py"
  print "Projects directory: "+optionalArguments.projects
  noAutoEnable = not optionalArguments.AutoEnable

  path = copyProjects(optionalArguments.projects)

  names = os.listdir(path)
  errors = []
  for name in names:
    if name != ".metadata" and name != "outgoing":
      importOptions = { 
        OPTION_PROJECT_NAME : name,
        OPTION_NO_AUTO_ENABLE : noAutoEnable
      }

      projectPath = os.path.join(path, name)
      project = Studio.project.importExistingProject(
        projectPath,
        importOptions,
        None)
      
      projInfo = getProjectInfo(project)

      print projInfo

      buildConfig = projInfo[INFO_CURRENT_CONFIG]
      
      buildOptions = { 
        OPTION_BUILD_TYPE: BUILD_TYPE_FULL,
        OPTION_BUILD_CONFIG: buildConfig, 
        OPTION_NO_AUTO_ENABLE : noAutoEnable
      }
      
      results = Studio.project.buildProject(project, buildOptions, None)
      print "Generated files:\n","\n".join([str(x) for x in results.newFiles]),"\n"
      print "Errors?",results.anyErrors(),"\n"
      print "Markers:\n","\n".join([Studio.project.markerToString(marker) for marker in results.problemMarkers]),"\n"

if __name__ == "__main__":
  main()
  
  