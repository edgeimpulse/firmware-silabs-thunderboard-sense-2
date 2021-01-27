#
#
#	This file is a STUB that is used only to populate symbols for use by
#	Pydev under an editor.  Don't attempt to point to this module for running code! 
#

raise Exception("This script cannot run outside of Studio.  Use the 'Python for Studio' launch instead.")

from StudioClasses import *
#
#	Generated from com.silabs.ss.app.internal.api.ide.scripting.ISLSArchitectureModule 
#	API version 0
#

class architecture(com_silabs_ss_platform_api_scripting_core_IScriptModule):
  '''
  This module provides support for converting between
  Architectures and Studio parts/kits/toolchains
   *
  '''
  NAME = str
  '''
  Name of this module
  @value "architecture"
  '''

  VERSION = int
  '''
  Version of this API
  @value (0 << 16) | (0 << 8) | 0
  '''

  def getCompatibleParts(self, framework):
    '''
    Get all of the compatible parts for a framework
    @param framework the framework to scan
    @type framework: com_ember_workbench_app_framework_application_IFramework
    @return a list of parts that are compatible with the framework
    '''
    return list()


  def getVersion(self):
    '''
    Get the version of the API in the form &lt;major&gt;&lt;minor&gt;&lt;bugfix&gt;
    where each component takes up one byte.

    A version of 0 (0.0.0) means the API is not finalized and may be changing 
    unpredictably between builds without any required change to this version. 

    	Major revisions imply API breakage.

    	Minor revisions imply API additions.

    	Bugfix revisions imply functional changes to correct undefined or broken behavior.

    @return int in the form (major&lt;&lt;16) | (minor&lt;&lt;8) | (bugfix)
    '''
    return int()


  def convertBoardCompat(self, archId):
    '''
    Utility to convert the board id and then
    concatenate the board ids for use in kit
    compatibilities.
    @param archId an ESF architecture id
    @type archId: str
    @return a catenated string of all converted board ids
    '''
    return str()


  def convertPartCompat(self, archId):
    '''
    Utility to convert the part id and then
    concatenate the part ids for use in part
    compatibilities.
    @param archId an ESF architecture id
    @type archId: str
    @return a catenated string of all converted part ids
    '''
    return str()


  def convertToolchainCompat(self, archId):
    '''
    Return the toolchain compatibility string from the input architecture id.
    @param archId
    @type archId: str
    @return 
    '''
    return str()


  def findBestPartId(self, archId):
    '''
    Convert from an ESF architecture id to the best
    Studio part id. This is not always a 1:1 mapping
    so some data may be lost.
    @param archId an ESF architecture id
    @type archId: str
    @return the best Studio part id or None if one couldn't be found
    '''
    return str()


  def getName(self):
    '''
    Get the name of the module
    @return 
    '''
    return str()


