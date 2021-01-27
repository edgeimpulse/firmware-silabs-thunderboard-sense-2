#
#
#	This file is a STUB that is used only to populate symbols for use by
#	Pydev under an editor.  Don't attempt to point to this module for running code! 
#

raise Exception("This script cannot run outside of Studio.  Use the 'Python for Studio' launch instead.")

from StudioClasses import *
#
#	Generated from com.ember.workbench.app_framework.scripting.ISLSStackModule 
#	API version 0
#

class stack(com_silabs_ss_platform_api_scripting_core_IScriptModule):
  '''
  This module provides support for handling stacks and stack
  SDKs. It adds some new API and wraps the old ISD command
  line API into the python scripting.
  '''
  def init(self):
    self.allStackSDKDescriptors = self.getAllStackSDKDescriptors()

    self.allStackSDKs = self.getAllStackSDKs()

  NAME = str
  '''
  Name of this module
  @value "stack"
  '''

  VERSION = int
  '''
  Version of this API
  @value (0 << 16) | (0 << 8) | 0
  '''

  def getStackForSDK(self, sdk):
    '''
    Get the stack for the input Studio SDK descriptor, 
    entity, or id.
    @param sdk a Studio ISDK, ISDKDescriptor, or sdk id
    @type sdk: object
    @return a stack
    @throws CoreException
    '''
    return com_ember_workbench_app_framework_application_ScannedStackDirectory()


  def getSDKForStack(self, stack):
    '''
    Get the Studio SDK from the input ScannedStackDirectory or
    string install path.
    @param stack ScannedStackDirectory or string file path to a stack
    @type stack: object
    @return a Studio ISDK representing the input stack
    @throws CoreException
    '''
    return com_silabs_ss_platform_api_sdk_core_ISDK()


  def loadSingleStack(self, path, options):
    '''
    Remove all old stacks and then scan and add the input
    location for a stack. This will return the corresponding
    Studio SDK for the scanned stack.
    This does not remove any old stack settings.
    @param path str filepath to scan at
    @param options map of key to value options, or None; allowed keys:



    @type path: object
    @type options: java_util_Map
    @return 
    @return the corresponding Studio SDK or None if no valid stack was found
    '''
    return com_silabs_ss_platform_api_sdk_core_ISDK()


  def scanStack(self, path, options):
    '''
    Scan and add a stack from the input location. This will
    return the corresponding Studio SDK for the detected
    stack or None if no stack was detected.
    @param path str filepath to scan at
    @param options map of key to value options, or None; allowed keys:



    @type path: object
    @type options: java_util_Map
    @return the corresponding Studio SDK or None if no valid stack was found
    '''
    return com_silabs_ss_platform_api_sdk_core_ISDK()


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


  def getAllStackSDKDescriptors(self):
    '''
    Return all SDK descriptors that correspond to a stack.
    @return list of Studio SDK descriptors that correspond to stacks.
    @throws CoreException
    '''
    return list()


  def getAllStackSDKs(self):
    '''
    Return all SDKs that correspond to a stack.
    @return list of Studio SDKs that correspond to stacks.
    @throws CoreException
    '''
    return list()


  def removeAllStacks(self):
    '''
    Delete all detected stacks and their corresponding SDKs.
    @throws CoreException
    '''
    pass


