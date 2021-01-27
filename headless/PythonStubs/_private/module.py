#
#
#	This file is a STUB that is used only to populate symbols for use by
#	Pydev under an editor.  Don't attempt to point to this module for running code! 
#

raise Exception("This script cannot run outside of Studio.  Use the 'Python for Studio' launch instead.")

from StudioClasses import *
#
#	Generated from com.silabs.ss.framework.ide.api.project.sls.core.scripting.ISLSModuleModule 
#	API version 0
#

class module(com_silabs_ss_platform_api_scripting_core_ISLSManagerModuleBase):
  '''
  This module provides access to (project) module registry
   *
  '''
  NAME = str
  '''
  Name of this module
  @value "module"
  '''

  OPTION_ENTITY_LABEL = str
  '''
  Override the default label. This is what a user will see
  when they view the entity in a selection screen.
  @type str
  @see #detectAndEnableEntity(str, Map)

  @value "entityLabel"
  '''

  OPTION_ID_SUFFIX = str
  '''
  Add a suffix to the entity id. This may cause instabilities 
  because the id is used for compatibility checks.
  @type str
  @see #detectAndEnableEntity(str, Map)

  @value "idSuffix"
  '''

  OPTION_UNIQUE_VARIABLE = str
  '''
  Set the unique variable. So that SDKs with the same
  name and version can both be added to the registry.
  Note: Unique variables are not fully supported yet and 
  setting them may cause instabilities in project creation 
  and in other areas.
  @type int
  @see #detectAndEnableEntity(str, Map)

  @value "uniqueVariable"
  '''

  OPTION_VERSION_NUMBER = str
  '''
  Override the default version. Versions are three
  sets of numbers separated by periods usually considered
  "Major.Minor.Micro". The version string must be in this format.
  Note: Changing the version can cause instabilities in some
  cases because the version can be used for compatibility checks.
  @type str
  @see #detectAndEnableEntity(str, Map)

  @value "versionNumber"
  '''

  VERSION = int
  '''
  Version of this API
  @value (0 << 16) | (0 << 8) | 0
  '''

  def detectAndEnableEntity(self, path, options, monitor):
    '''
    Detect a new entity, add it to the registry, and enable it. This will silently
    overwrite an old entity if the name, versions, and unique variables are the same.
    @param path the full system path to the new entity
    @param options map of key to value options, or None; allowed keys:

    	{@link #OPTION_ENTITY_NAME}

    	{@link #OPTION_UNIQUE_VARIABLE}

    	{@link #OPTION_VERSION_NUMBER}

    	{@link #OPTION_ENTITY_LABEL}

    @param monitor optional progress monitor for progress and cancellation
    @type path: str
    @type options: java_util_Map
    @type monitor: org_eclipse_core_runtime_IProgressMonitor
    @return the successfully enabled entity or None if no entity is found
    @throws CoreException if anything goes wrong
    '''
    return com_silabs_ss_platform_api_content_core_manager_IDescriptorEntity()


  def pickDefaultEntity(self):
    '''
    Select the default entity, either from the previous
    default selection (if one exists) or the first enabled
    entity otherwise.
    @return entity or None if nothing is enabled
    '''
    return com_silabs_ss_platform_api_content_core_manager_IDescriptorEntity()


  def pickDefaultEntity(self, _list):
    '''
    Select the default entity, either from the previous
    default selection (if one exists) or the first enabled
    entity otherwise.
    @return entity or None if nothing is enabled
    '''
    return com_silabs_ss_platform_api_content_core_manager_IDescriptorEntity()


  def pickDefaultEntityForCompat(self, compatStr):
    '''
    Pick a default entity from the compatibility string.

    Note that this is a utility full equal to:

     {@link #findCompatibleEntities(str)} and
    {@link #pickDefaultEntity(object[])}
    @param compatStr a compatibility string
    @type compatStr: str
    @return entity or None if nothing is enabled
    '''
    return com_silabs_ss_platform_api_content_core_manager_IDescriptorEntity()


  def pickDefaultSelectionForPart(self, partId):
    '''
    Select a default entity by matching either the user's default selection
    or the newest / preferred entity for the given part.
    @param partId
    @type partId: str
    @return entity or None
    '''
    return com_silabs_ss_platform_api_content_core_manager_IDescriptorEntity()


  def getManager(self):
    '''
    Get the currentManager
    @return the manager for this class
    '''
    return com_silabs_ss_platform_api_content_core_manager_IManager()


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


  def findCompatibleEntities(self, compatStr):
    '''
    Find the entities that are compatible with the input string.
    @param compatStr a compatibility string
    @type compatStr: str
    @return List of entities
    '''
    return list()


  def findEntitiesById(self, idRegex):
    '''
    Find the entities whose IDs match the given regex, None returns all entities
    @param idRegex a regex to match all entity IDs against, None returns all entities
    @type idRegex: str
    @return List of entities
    '''
    return list()


  def findEntitiesByLabel(self, labelsRegex):
    '''
    Find the entities whose labels match the given regex, None returns all entities
    @param labelsRegex a regex to match all entity labels against, None returns all entities
    @type labelsRegex: str
    @return List of entities
    '''
    return list()


  def findCompatibleDescriptors(self, compatStr):
    '''
    Find the descriptors that are compatible with the input string.
    @param compatStr a compatibility string
    @type compatStr: str
    @return List of descriptors
    '''
    return list()


  def findDescriptorsById(self, idRegex):
    '''
    Find the descriptors whose IDs match the given regex, None returns all descriptors
    @param idRegex a regex to match all descriptor IDs against, None returns all descriptors
    @type idRegex: str
    @return List of descriptors
    '''
    return list()


  def findDescriptorsByLabel(self, labelRegex):
    '''
    Find the descriptors whose labels match the given regex, None returns all descriptors
    @param labelRegex a regex to match all descriptor labels against, None returns all descriptors
    @type labelRegex: str
    @return List of descriptors
    '''
    return list()


  def findDescriptorsByUnversionedId(self, idRegex):
    '''
    Find the descriptors whose unverionsed IDs match the given regex, None returns
    all descriptors. 

    Some descriptors are not versioned, in this case, the call will be the same as
    {@link #findDescriptorsById(str)}.
    @param idRegex a regex to match all descriptor IDs against, None returns all descriptors
    @type idRegex: str
    @return List of descriptors
    '''
    return list()


  def disableEntity(self, _str):
    '''
    Disable a given entity in the installation
    @throws CoreException If there are any problems enabling any entities
    '''
    pass


  def enableAll(self):
    '''
    Enables everything in the installation
    @throws CoreException If there are any problems enabling any entities
    '''
    pass


  def enableEntity(self, _str):
    '''
    Enable a given entity in the installation
    @throws CoreException If there are any problems enabling any entities
    '''
    pass


