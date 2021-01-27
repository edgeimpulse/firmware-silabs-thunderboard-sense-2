#
#
#	This file is a STUB that is used only to populate symbols for use by
#	Pydev under an editor.  Don't attempt to point to this module for running code! 
#

raise Exception("This script cannot run outside of Studio.  Use the 'Python for Studio' launch instead.")

from StudioClasses import *
#
#	Generated from com.silabs.ss.tool.internal.flashprogrammer.core.scripting.IFlasherModule 
#	API version 0
#

class flasher(com_silabs_ss_platform_api_scripting_core_IScriptModule):
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


  def erase(self, device):
    '''
    Command to erase device
    @param device - device serial number
    @throws Exception

    @type device: str
    '''
    pass


  def executeCommand(self, commandName, device, options):
    '''
    Command to execute flash related commands by name.
    @param commandName - name of command to execute
    @param device - device serial number
    @param options - map of options
    @throws Exception

    @type commandName: str
    @type device: str
    @type options: java_util_Map
    '''
    pass


  def flash(self, device, imagePath, options, reset, run, _bool):
    '''
    Command to flash an image to a device
    @param device - device serial number
    @param imagePath - path to the executable image
    @param options - map of options
    @param reset - boolean indicating whether to reset after flash
    @param run - boolean indicating whether to run after flash
    @throws Exception

    @type device: str
    @type imagePath: str
    @type options: str
    @type reset: int
    @type run: bool
    '''
    pass


