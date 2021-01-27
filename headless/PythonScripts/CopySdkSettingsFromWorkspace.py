'''
  <b>Copyright 2017 Silicon Laboratories, Inc. http://www.silabs.com</b>
  
  This is an example script to demonstrate how Simplicity Studio can be 
  used for headless builds.  The script is passed as an argument to Simplicity
  Studio from the command line.
  ==============================================================================
  Use case: Headless builds will be performed on a new workspace and SDKs 
    external to Simplicity Studio are used for the build.
  ==============================================================================
  Required files: There should be a ‘.metadata’ folder with ‘.plugins’ subfolder. 
  Specific files that contain the SDK settings are then copied into the new 
  workspace.
  ==============================================================================
  This script imports the SDK settings from the workspace passed as an argument 
  to the script. This script is mainly useful if there are external SDKs that 
  are used when building projects. External SDKs means SDKs that are installed 
  outside of the Simplicity Studio installation directory. It can also be used 
  if some projects are built in a workspace that disables some of the SDKs 
  installed in the Simplicity Studio installation directory.
  ==============================================================================
  Script-required arguments
  • The path to the workspace folder that contains the desired SDK settings.
  ==============================================================================
  Script-optional arguments
  • None
  ==============================================================================
  Examples of using this script:
  Using <runScript.sh>
  /SiliconLabs/SimplicityStudio/v4/developer/scripting/runScript.sh 
    -data /c/temp/test_v4_workspace/ 
    /c/SWTools/scripts/CopySdkSettingsFromWorkspace.py 
    /c/temp/project_input_src
'''

import Studio
from Studio.project import *

import sys, os, shutil, os.path
import argparse

SDK_RUNTIME_PATH = ".plugins\org.eclipse.core.runtime\.settings"
FILELIST = [
'com.silabs.ss.framework.project.templates.core-templateManager.prefs',
'com.silabs.ss.platform.sdk.core-protocolRegistry.prefs',
'com.silabs.ss.platform.sdk.core-sdkManager.prefs']

def main(): 

  parser = argparse.ArgumentParser()
  parser.add_argument("WSpath", help="the path to the workspace to copy SDK settings from")
  #import pdb; pdb.set_trace()
  optionalArguments = parser.parse_args()

  print "CopySDKsettingsFromWorkspace.py"
  print "Workspace: "+optionalArguments.WSpath

  #import pdb; pdb.set_trace()
  print "checking for Stack IDs in source workspace\n"
  metaPathSrc = os.path.join(optionalArguments.WSpath,".metadata")
  if os.path.isdir(metaPathSrc):
    #sdkSource = os.path.join(metaPathSrc, SDK_PREF_FILE) 
    workspace = getWorkspaceLocation()
    metaPathDst = os.path.join(workspace,".metadata")
    runtimeSrc = os.path.join(metaPathSrc, SDK_RUNTIME_PATH)
    runtimeDst = os.path.join(metaPathDst, SDK_RUNTIME_PATH)
    if not os.path.isdir(runtimeDst):
      os.makedirs(runtimeDst)
    errors = []
    for sdkFile in FILELIST:
        srcname = os.path.join(runtimeSrc, sdkFile)
        dstname = os.path.join(runtimeDst, sdkFile)
        try:
            if os.path.isfile(srcname):
                shutil.copy(srcname, dstname)
        except (IOError, os.error) as why:
            errors.append((srcname, dstname, str(why)))
        # catch the Error from the recursive copytree so that we can
        # continue with other files
        except Error as err:
            errors.extend(err.args[0])
    if errors:
        raise Error(errors)
    
    #if os.path.lexists(runtimeDst):
    #  shutil.rmtree(runtimeDst, ignore_errors = True)
    #shutil.copytree(os.path.join(metaPathSrc, SDK_RUNTIME_PATH), runtimeDst, ignore=shutil.ignore_patterns('org.*','com.ember.*','com.iar.*'))
    print "Copied SDK preferences into destination workspace\n"
  else:
    print "\n Not a valid workspace, so no SDK IDs were copied!!!\n"
  

if __name__ == "__main__":
  main()
  
  