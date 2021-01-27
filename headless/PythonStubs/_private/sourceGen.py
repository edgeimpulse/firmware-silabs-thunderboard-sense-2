#
#
#	This file is a STUB that is used only to populate symbols for use by
#	Pydev under an editor.  Don't attempt to point to this module for running code! 
#

raise Exception("This script cannot run outside of Studio.  Use the 'Python for Studio' launch instead.")

from StudioClasses import *
#
#	Generated from com.silabs.ss.framework.sourcegen.api.core.ISourceGenScriptModule 
#	API version 0
#

class sourceGen(com_silabs_ss_platform_api_scripting_core_IScriptModule):
  '''
  Script API for source generation control
   *
  '''
  def init(self):
    self.sourceGenManager = self.getSourceGenManager()

  CPP_LANGUAGE = com_silabs_ss_framework_sourcegen_api_core_ISourceLanguage
  '''
  The implementation of the C/C++ language
  @value ISourceGenManager.INSTANCE.findSourceLanguage(ISourceGenManager.CPP_LANGUAGE_ID)
  '''

  NAME = str
  '''
  Name of this module
  @value "sourceGen"
  '''

  VERSION = int
  '''
  Version of this API
  @value (0 << 16) | (0 << 8) | 0
  '''

  def getSourceGenManager(self):
    '''
    Get the sourcegen manager, from which other activities may proceed.
    '''
    return com_silabs_ss_framework_sourcegen_api_core_ISourceGenManager()


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


