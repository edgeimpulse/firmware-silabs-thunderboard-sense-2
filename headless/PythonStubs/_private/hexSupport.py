#
#
#	This file is a STUB that is used only to populate symbols for use by
#	Pydev under an editor.  Don't attempt to point to this module for running code! 
#

raise Exception("This script cannot run outside of Studio.  Use the 'Python for Studio' launch instead.")

from StudioClasses import *
#
#	Generated from com.silabs.ss.support.mcu.api.part.core.ISLSHexSupportModule 
#	API version 0
#

class hexSupport(com_silabs_ss_platform_api_scripting_core_IScriptModule):
  '''
  @since 4.1
  *
  '''
  NAME = str
  '''
  Name of this module
  @value "hexSupport"
  '''

  VERSION = int
  '''
  Version of this API
  @value (0 << 16) | (0 << 8) | 0
  '''

  def createHexFile(self, contents):
    '''
    Create a hex file object from contents
    @param contents
    @type contents: str
    @return IIntelHexFile
    @throws ScriptException
    '''
    return com_silabs_ss_support_mcu_api_part_core_IIntelHexFile()


  def newEmptyHexFile(self):
    '''
    Create an empty hex file object
    @return IIntelHexFile
    '''
    return com_silabs_ss_support_mcu_api_part_core_IIntelHexFile()


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


  def getName(self):
    '''
    Get the name of the module
    @return 
    '''
    return str()


  def programFlash(self, callback, device, fileString):
    '''
    Program flash asynchronously
    @param callback
    @param device
    @param filestr
    @throws ScriptException

    @type callback: com_silabs_ss_support_mcu_api_part_core_IExecutionCompleteCallback
    @type device: com_silabs_ss_platform_api_device_core_IDevice
    @type filestr: str
    '''
    pass


