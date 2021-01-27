#
#
#	This file is a STUB that is used only to populate symbols for use by
#	Pydev under an editor.  Don't attempt to point to this module for running code! 
#

raise Exception("This script cannot run outside of Studio.  Use the 'Python for Studio' launch instead.")

from StudioClasses import *
#
#	Generated from com.silabs.ss.platform.api.scripting.ui.ISLSSWTModule 
#	API version 0
#

class swt(com_silabs_ss_platform_api_scripting_core_IScriptModule):
  '''
  Script API for SWT UI access.  
   *
  '''
  NAME = str
  '''
  '''

  VERSION = int
  '''
  Version of this API
  @value (0 << 16) | (0 << 8) | 0
  '''

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


  def asyncExec(self, runnable
  ):
    '''
    Invoke a runnable on the primary Display's dispatch thread
    at some point in the future.
    @param runnable

    @type runnable
    : java_lang_Runnable
    '''
    pass


  def showError(self, title, message, exception):
    '''
    Report an error message in a dialog (synchronous, automatically invoked on UI thread).
    @param title
    @param message
    @param exception exception object (if any)
    @throws Exception if the exception is not None and not an exception

    @type title: str
    @type message: str
    @type exception: object
    '''
    pass


  def showMessage(self, title, message
  ):
    '''
    Report a message in a dialog (synchronous, automatically invoked on UI thread).
    @param title
    @param message

    @type title: str
    @type message
    : str
    '''
    pass


  def syncExec(self, runnable
  ):
    '''
    Invoke a runnable on the primary Display's dispatch thread
    and wait for completion.
    @param runnable

    @type runnable
    : java_lang_Runnable
    '''
    pass


