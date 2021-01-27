#
#
#	This file is a STUB that is used only to populate symbols for use by
#	Pydev under an editor.  Don't attempt to point to this module for running code! 
#

raise Exception("This script cannot run outside of Studio.  Use the 'Python for Studio' launch instead.")

from StudioClasses import *
#
#	Generated from com.silabs.ss.platform.api.scripting.core.ISLSCoreModule 
#	API version 0
#

class core(com_silabs_ss_platform_api_scripting_core_IScriptModule):
  '''
  Core module APIs for scripts.
   *
  '''
  def init(self):
    self.productName = self.getProductName()

  NAME = str
  '''
  '''

  VERSION = int
  '''
  Version of this API
  @value (0 << 16) | (0 << 8) | 0
  '''

  def isDevelopmentBuild(self):
    '''
    Tell whether the script is launched in development mode or not
    @return True if the script is running against a PDE launch, False if release launch
    '''
    return bool()


  def isHeadlessMode(self):
    '''
    Return whether the script has launched Studio in a headless state.
    @return True if Studio is running headlessly, False otherwise
    '''
    return bool()


  def isUnitTesting(self):
    '''
    Tell whether the script is launched under a unit test or not
    @return True if the script is running under JUnit, False if normal run
    '''
    return bool()


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


  def getProductName(self):
    '''
    Get the name of the currently running Eclipse product.
    @return str
    '''
    return str()


  def getName(self):
    '''
    Get the name of the module
    @return 
    '''
    return str()


  def addContextBundle(self, bundleId):
    '''
    Add the bundle identified by the given id to the Python classpath,
    allowing its classes to be import'ed.
    @param bundleId
    @throws UnsupportedOperationException if the running script does not support Java
    class lookup or if this cannot be done dynamically
    @throws IllegalArgumentException for unknown bundle

    @type bundleId: str
    '''
    pass


