#
#
#	This file is a STUB that is used only to populate symbols for use by
#	Pydev under an editor.  Don't attempt to point to this module for running code! 
#

raise Exception("This script cannot run outside of Studio.  Use the 'Python for Studio' launch instead.")

#
#	Generated from com.silabs.ss.platform.api.scripting.core.ISLSScriptAPI 
#	API version 0
#


def getModule(name):
  if name == 'core': return core
  if name == 'uri': return uri
  if name == 'part': return part
  if name == 'board': return board
  if name == 'toolchain': return toolchain
  if name == 'stockConfig': return stockConfig
  if name == 'sdk': return sdk
  if name == 'template': return template
  if name == 'hexSupport': return hexSupport
  if name == 'project': return project
  if name == 'module': return module
  if name == 'stack': return stack
  if name == 'agent': return agent
  if name == 'cpp': return cpp
  if name == 'sourceGen': return sourceGen
  if name == 'installer': return installer
  if name == 'appbuilder': return appbuilder
  if name == 'architecture': return architecture
  if name == 'configDocument': return configDocument
  if name == 'halConfig': return halConfig
  if name == 'workbench': return workbench
  if name == 'bugreport': return bugreport
  if name == 'swt': return swt
  if name == 'flasher': return flasher
  return None

import _private.core
core = _private.core.core
import _private.uri
uri = _private.uri.uri
import _private.part
part = _private.part.part
import _private.board
board = _private.board.board
import _private.toolchain
toolchain = _private.toolchain.toolchain
import _private.stockConfig
stockConfig = _private.stockConfig.stockConfig
import _private.sdk
sdk = _private.sdk.sdk
import _private.template
template = _private.template.template
import _private.hexSupport
hexSupport = _private.hexSupport.hexSupport
import _private.project
project = _private.project.project
import _private.module
module = _private.module.module
import _private.stack
stack = _private.stack.stack
import _private.agent
agent = _private.agent.agent
import _private.cpp
cpp = _private.cpp.cpp
import _private.sourceGen
sourceGen = _private.sourceGen.sourceGen
import _private.installer
installer = _private.installer.installer
import _private.appbuilder
appbuilder = _private.appbuilder.appbuilder
import _private.architecture
architecture = _private.architecture.architecture
import _private.configDocument
configDocument = _private.configDocument.configDocument
import _private.halConfig
halConfig = _private.halConfig.halConfig
import _private.workbench
workbench = _private.workbench.workbench
import _private.bugreport
bugreport = _private.bugreport.bugreport
import _private.swt
swt = _private.swt.swt
import _private.flasher
flasher = _private.flasher.flasher

# convenience methods
def __getitem__(self, name):
  return self.getModule(name)

API_PROPERTY = str
'''
The name of the object registered in a {@link ScriptEngine} which is the instance of this API
@value "api"
'''

NAME = str
'''
'''

VERSION = int
'''
'''

class com_silabs_ss_platform_api_scripting_core_ISLSScriptAPI_Exception(object):
  '''
  This interface represents script-thrown checked exceptions.  These wrap
  Java exceptions.  
  Note: low-level unchecked exceptions are converted to their equivalent Python 
  concrete exceptions.
  '''
  def init(self):
    self.message = self.getMessage()

    self.cause = self.getCause()

  def getMessage(self):
    return str()


  def getCause(self):
    return java_lang_Throwable()


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


def getModuleNames(self):
  '''
  Get all the registered modules

  (These are provided by the 'scriptSupport' extension via
  scriptModuleProvider.)
  @return non-None array of strings
  '''
  return list()


def raiseException(self, _object):
  '''
  Wrap an object in a Studio.Exception and throw it.
  '''
  pass


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


