'''
  <b>Copyright 2017 Silicon Laboratories, Inc. http://www.silabs.com</b>

  This is an example script to demonstrate how Simplicity Studio can be
  used for headless builds.  The script is passed as an argument to Simplicity
  Studio from the command line.
  ==============================================================================
  Use case: Headless build of an existing project in an existing workspace.
  ==============================================================================
  Required files: .project, .cproject and project-specific source files.
  ==============================================================================
  The script takes as an argument the name of an existing project folder in the
  workspace for the build. An optional argument specifies which build
  configuration to use - for example "GNU ARM v4.9.3 - Release".
  The project must already exist in the workspace.

  ==============================================================================
  Python script-required arguments
  • The name of the project folder.

  ==============================================================================
  Python script-optional arguments
  • -cfg is the build configuration for the build – if not given then the
      current active configuration of the project is used.
  • --AutoEnable – If this option is specified then Simplicity Studio finds
      compatible values for the SDK and toolchain settings. The default
      is False.

  Examples of using this script:
  Using <runScript.sh>
  /SiliconLabs/SimplicityStudio/v4/developer/scripting/runScript.sh
    -data /c/temp/test_v4_workspace
    /C/SWTools/scripts/BuildExistingProject_v2.py SLSTK3401A_emode_2

  /SiliconLabs/SimplicityStudio/v4/developer/scripting/runScript.sh
    -data /c/temp/test_v4_workspace
    /C/SWTools/scripts/BuildExistingProject_v2.py soc-smartphone

  /SiliconLabs/SimplicityStudio/v4/developer/scripting/runScript.sh
    -data /c/temp/test_v4_workspace
    /C/SWTools/scripts/BuildExistingProject_v2.py SLSTK3401A_emode_2
    -cfg "GNU ARM v4.9.3 - Release"
'''

import Studio
from Studio.project import *

import sys, os, shutil, os.path
import argparse

def main():
  #import pdb; pdb.set_trace()

  parser = argparse.ArgumentParser()
  parser.add_argument("proj", help="the project name to build (no trailing slash if project path is given)")
  parser.add_argument("-cfg","--buildConfig", help="the build configuration to use for the project")
  parser.add_argument("--AutoEnable", action='store_true', help="Set to True or False(Default). Enable automatically detecting compatible board / part / SDKs or toolchains.")
  optionalArguments = parser.parse_args()
  buildConfig = ""

  print os.path.basename(__file__)
  print "Project: "+optionalArguments.proj
  print "Workspace: "+getWorkspaceLocation()
  if optionalArguments.buildConfig:
    print "buildConfig: "+optionalArguments.buildConfig
    buildConfig = optionalArguments.buildConfig
  noAutoEnable = not optionalArguments.AutoEnable

  head, baseName = os.path.split(optionalArguments.proj)

  proj_ = Studio.project.getProject(baseName)
  if not proj_.exists():
    print "*** Project not found in workspace",baseName
    sys.exit(1)

  projInfo = getProjectInfo(proj_)

  print projInfo

  if not buildConfig:
    buildConfig = projInfo[INFO_CURRENT_CONFIG]

  buildOptions = {
    OPTION_BUILD_TYPE: BUILD_TYPE_INCREMENTAL,
    OPTION_BUILD_CONFIG: buildConfig,
    OPTION_NO_AUTO_ENABLE : noAutoEnable
  }

  results = Studio.project.buildProject(proj_, buildOptions, None)

  print "Generated files:\n","\n".join([str(x) for x in results.newFiles]),"\n"
  print "Errors?",results.anyErrors(),"\n"
  print "Markers:\n","\n".join([Studio.project.markerToString(marker) for marker in results.problemMarkers]),"\n"

if __name__ == "__main__":
  main()
