#
#
#	This file is a STUB that is used only to populate symbols for use by
#	Pydev under an editor.  Don't attempt to point to this module for running code! 
#

raise Exception("This script cannot run outside of Studio.  Use the 'Python for Studio' launch instead.")

from StudioClasses import *
#
#	Generated from com.silabs.ss.framework.ide.api.project.ui.scripting.ISLSWorkbenchModule 
#	API version 0
#

class workbench(com_silabs_ss_platform_api_scripting_core_IScriptModule):
  def init(self):
    self.currentPerspective = self.getCurrentPerspective()

  NAME = str
  '''
  Name of this module
  @value "workbench"
  '''

  PERSPECTIVE_DEBUG = str
  '''
  Debug perspective id
  @value IDEConstants.PERSPECTIVE_ID_DEBUG
  '''

  PERSPECTIVE_DEVELOPMENT = str
  '''
  Development perspective id
  @value IDEConstants.PERSPECTIVE_ID_MCU_DEVELOPMENT
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


  def getCurrentPerspective(self):
    '''
    Get the current perspective id from the current window & workbench page
    @return perspectiveId, see PERSPECTIVE_xxx constants or query Eclipse
    '''
    return str()


  def getName(self):
    '''
    Get the name of the module
    @return 
    '''
    return str()


  def activateWorkbenchWindow(self):
    '''
    Activate the workbench window, bringing it to the front.
    '''
    pass


  def openResource(self, workspacePathOrResource):
    '''
    Open a resource from a project (e.g. in the Eclipse editor)
    @param workspacePathOrResource either an IResource or the path to the file in the form "project/path/to/file.c"
    @throws CoreException if anything goes wrong

    @type workspacePathOrResource: object
    '''
    pass


  def shutdown(self):
    '''
    Shut down the workbench cleanly.
    '''
    pass


  def switchPerspective(self, perspectiveId,):
    '''
    Switch perspectives in the current window & workbench page
    @param perspectiveId, see PERSPECTIVE_xxx constants or query Eclipse
    @throws CoreException if anything goes wrong

    @type perspectiveId,: str
    '''
    pass


