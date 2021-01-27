#
#
#	This file is a STUB that is used only to populate symbols for use by
#	Pydev under an editor.  Don't attempt to point to this module for running code! 
#

raise Exception("This script cannot run outside of Studio.  Use the 'Python for Studio' launch instead.")

from StudioClasses import *
#
#	Generated from com.silabs.ss.platform.api.bugreport.core.scripting.ISLSBugReportModule 
#	API version 0
#

class bugreport(com_silabs_ss_platform_api_scripting_core_IScriptModule):
  '''
  This is the base interface for any platform scripting.
  '''
  NAME = str
  '''
  Name of this module
  @value "bugreport"
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


  def createReportBugLog(self, pathToFile):
    '''
    Create a bug report zip file at the specified path + filename. The filename
    will have .zip appended to the end of it.
    @param pathToFile the directory where the zip file should be created
    @param fileName the file name
    @throws CoreException if something goes wrong

    @type pathToFile: str
    '''
    pass


  def createReportBugLog(self, pathToFile, fileName):
    '''
    Create a bug report zip file at the specified path + filename. The filename
    will have .zip appended to the end of it.
    @param pathToFile the directory where the zip file should be created
    @param fileName the file name
    @throws CoreException if something goes wrong

    @type pathToFile: str
    @type fileName: str
    '''
    pass


