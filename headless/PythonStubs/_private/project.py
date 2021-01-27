#
#
#	This file is a STUB that is used only to populate symbols for use by
#	Pydev under an editor.  Don't attempt to point to this module for running code! 
#

raise Exception("This script cannot run outside of Studio.  Use the 'Python for Studio' launch instead.")

from StudioClasses import *
#
#	Generated from com.silabs.ss.framework.ide.api.project.sls.core.scripting.ISLSProjectModule 
#	API version 0
#

class project(com_silabs_ss_framework_ide_api_project_sls_core_scripting_ISLSProjectCreation):
  '''
  This module provides access to the Eclipse and SLS project engine.
   *
  '''
  def init(self):
    self.projectModelFactory = self.getProjectModelFactory()

    self.workspaceLocation = self.getWorkspaceLocation()

    self.openStudioProjectsInWorkspace = self.getOpenStudioProjectsInWorkspace()

    self.projectsInWorkspace = self.getProjectsInWorkspace()

    self.buildTimeout = self.getBuildTimeout()

    self.workspace = self.getWorkspace()

  BUILD_ARTIFACT_TYPE_EXE = str
  '''
  This value of {@link #OPTION_BUILD_ARTIFACT_TYPE} means to create a 
  project as an executable which can be flash to a board. This is 
  the default selection.
  @value BuildArtifactType.EXE.tostr()
  '''

  BUILD_ARTIFACT_TYPE_LIBRARY = str
  '''
  This value of {@link #OPTION_BUILD_ARTIFACT_TYPE} means to create a 
  project as a static library which can be included in other executable 
  projects.
  @value BuildArtifactType.STATIC_LIB.tostr()
  '''

  BUILD_TYPE_CLEAN = str
  '''
  Clean
  For use with the {@link #OPTION_BUILD_TYPE} parameter
  @value "buildType_CLEAN"
  '''

  BUILD_TYPE_FULL = str
  '''
  Full Build (clean and then build)
  For use with the {@link #OPTION_BUILD_TYPE} parameter
  @value "buildType_FULL"
  '''

  BUILD_TYPE_INCREMENTAL = str
  '''
  Incremental Build
  For use with the {@link #OPTION_BUILD_TYPE} parameter
  @value "buildType_INCREMENTAL"
  '''

  IMPORT_MODE_COPY = str
  '''
  This value of {@link #OPTION_IMPORT_MODE} means to copy content from the original
  location into the new project location.  Changes to project files are distinct
  from the original content.  No new directories are added to the original location.
  @value ImportMode.COPY.tostr()
  '''

  IMPORT_MODE_IN_PLACE = str
  '''
  This value of {@link #OPTION_IMPORT_MODE} means to create the Studio project
  in the same place as the original imported content.  Changes to project files affect
  the original content.  

  NOTE: This will delete any existing .project/.cproject content and create or 
  change any existing generated output directories.
  @value ImportMode.IN_PLACE.tostr()
  '''

  IMPORT_MODE_LINK = str
  '''
  This value of {@link #OPTION_IMPORT_MODE} means to soft link content from the original
  location into the new project location.  Changes to project files affect
  the original content.
  @value ImportMode.LINK.tostr()
  '''

  IMPORT_MODE_LINK_LIBRARIES = str
  '''
  This value of {@link #OPTION_IMPORT_MODE} means to link libraries from the
  SDK and copy any other files into the new project location. Changing the 
  library files will change the original files inside the SDK, but changing
  any source files will not impact the originals.
  @value ImportMode.LINK_LIBRARIES.tostr()
  '''

  INDEXER_ID_FAST = str
  '''
  This value of {@link #OPTION_INDEXER_ID} means to use the Fast C/C++ Indexer.
  Copied from {@link org.eclipse.cdt.core.dom.IPDOMManager#ID_FAST_INDEXER}
  @value "org.eclipse.cdt.core.fastIndexer"
  '''

  INDEXER_ID_NULL = str
  '''
  This value of {@link #OPTION_INDEXER_ID} means to not index C/C++ files.
  Copied from {@link org.eclipse.cdt.core.dom.IPDOMManager.ID_NO_INDEXER}
  @value "org.eclipse.cdt.core.Noneindexer"
  '''

  INFO_BOARD_IDS = str
  '''
  Current board ID
  @type str
  @see #getProjectInfo()
  @see #getConfigInfo()

  @value "boardIDs"
  '''

  INFO_CONFIGS = str
  '''
  Configuration names (labels)
  @see #getProjectInfo()
  @type list of str

  @value "configs"
  '''

  INFO_CURRENT_CONFIG = str
  '''
  The label of the current configuration for the project.
  @see #getProjectInfo()
  @type str

  @value "currentConfig"
  '''

  INFO_MODULE_REFS = str
  '''
  List of modules and their configurations (see ModuleRef)
  @type List
  @element ModuleRef
  @see #getConfigInfo()
  @see #setConfigInfo()

  @value "moduleRefs"
  '''

  INFO_PART_ID = str
  '''
  Current part ID
  @type str
  @see #getProjectInfo()
  @see #getConfigInfo()

  @value "partID"
  '''

  INFO_PROJECT_LOCATION = str
  '''
  Get project location
  @type str (filepath or URI) which usually includes project name
  @see #getProjectInfo()

  @value "projectLocation"
  '''

  INFO_SDK_ID = str
  '''
  Current SDK ID
  @type str
  @see #getProjectInfo()
  @see #getConfigInfo()

  @value "sdkID"
  '''

  INFO_TOOLCHAIN_ID = str
  '''
  Current toolchain ID
  @type str
  @see #getProjectInfo()
  @see #getConfigInfo()

  @value "toolchainID"
  '''

  NAME = str
  '''
  Name of this module
  @value "project"
  '''

  OPTION_BOARD_COMPATIBILITY = str
  '''
  Override the purported board compatibility in an exported project (e.g. list of board IDs)
  @type str

  @value "boardCompatibility"
  '''

  OPTION_BOARD_IDS = str
  '''
  Part ID override for importing/creating
  @type str

  @value "boardIDs"
  '''

  OPTION_BUILDER_NAME = str
  '''
  Builder name option, for use with building/cleaning projects
  @type str

  @value "builderName"
  '''

  OPTION_BUILD_ARTIFACT_TYPE = str
  '''
  Tells whether we should create the project as a static library or an 
  executable. Executable projects are built to flash and run on a part
  and are the default, whereas libraries are used as sources for another
  project.
  @type str

  @value "buildArtifactType"
  '''

  OPTION_BUILD_CONFIG = str
  '''
  Build Configuration name

  NOTE: Using this will change the project's active configuration
  @type str

  @value "buildConfiguration"
  '''

  OPTION_BUILD_TYPE = str
  '''
  Build type
  @type {@link #BUILD_TYPE_CLEAN}, {@link #BUILD_TYPE_FULL}, or {@link #BUILD_TYPE_INCREMENTAL}

  @value "buildType"
  '''

  OPTION_CONTENT_ROOT = str
  '''
  Content root override for importing/creating
  @type str (filepath or URI)

  @value "contentRoot"
  '''

  OPTION_CREATE_IMPORT_REPORT = str
  '''
  If True, generate the "imported_project_report.html" file
  when using {@link #importSlsProject(str, Map, IProgressMonitor)}.
  Default is False.
  @type boolean

  @value "createImportReport"
  '''

  OPTION_CURRENT_CONFIGURATION = str
  '''
  The current configuration
  @type IStockConfiguration

  @value "currentConfigurations"
  '''

  OPTION_DESCRIPTION = str
  '''
  Description for exported project
  @type str

  @value "description"
  '''

  OPTION_IMPORT_MODE = str
  '''
  Control the way a project is imported, for {@link #importSlsProject(str, Map, IProgressMonitor)}.
  The default is {@link #IMPORT_MODE_COPY}.
  @type str

  @value "importMode"
  '''

  OPTION_INDEXER_ID = str
  '''
  Set the C++ Indexer type.
  @value "indexerId"
  '''

  OPTION_IS_TEMPLATE = str
  '''
  Set to True to configure the project for use in templates:
  omit build configurations, promoting the build settings from {@link #OPTION_REFERENCE_CONFIGURATION} to project level
  @type boolean

  @value "isTemplate"
  '''

  OPTION_LABEL = str
  '''
  Label for exported project
  @type str

  @value "label"
  '''

  OPTION_NO_AUTO_ENABLE = str
  '''
  Tells whether to prevent auto-enabling parts, SDKs, toolchains, etc.
  referenced by a project. (default is False)
  @type boolean

  @value "noAutoEnable"
  '''

  OPTION_NO_AUTO_UNIQUIFY_PROJECT_NAME = str
  '''
  Tells whether to prevent automatically uniquifying the project name to
  avoid conflicts with others in the workspace. (default is False)
  @type boolean

  @value "noAutoUniquifyProjectName"
  '''

  OPTION_PART_COMPATIBILITY = str
  '''
  Override the purported part compatibility in an exported project (e.g. list of part IDs)
  @type str

  @value "partCompatibility"
  '''

  OPTION_PART_ID = str
  '''
  Part ID override for importing/creating
  @type str

  @value "partID"
  '''

  OPTION_PROJECT_LOCATION = str
  '''
  Output project location override
  @type str filepath must include project folder name

  @value "projectLocation"
  '''

  OPTION_PROJECT_NAME = str
  '''
  Project name override
  @type str

  @value "projectName"
  '''

  OPTION_REFERENCE_CONFIGURATION = str
  '''
  The name of the configuration to use with {@link #OPTION_IS_TEMPLATE};
  the default is the current/active configuration
  @type str

  @value "referenceConfiguration"
  '''

  OPTION_SDK_COMPATIBILITY = str
  '''
  Override the purported SDK compatibility in an exported project (e.g. list of SDK IDs)
  @type str

  @value "sdkCompatibility"
  '''

  OPTION_SDK_ID = str
  '''
  SDK ID override for importing/creating
  @type str

  @value "sdkID"
  '''

  OPTION_STOCK_CONFIGURATIONS = str
  '''
  Stock configurations to include in the project
  @type List

  @value "stockConfigurations"
  '''

  OPTION_TOOLCHAIN_COMPATIBILITY = str
  '''
  Override the purported toolchain compatibility in an exported project (e.g. list of toolchain IDs)
  @type str

  @value "toolchainCompatibility"
  '''

  OPTION_TOOLCHAIN_ID = str
  '''
  Toolchain ID override for importing/creating
  @type str

  @value "toolchainID"
  '''

  VERSION = int
  '''
  Version of this API
  @value (0 << 16) | (0 << 8) | 0
  '''

  def isCompatibleWithPartOrGroup(self, project, part):
    '''
    Tell if the given project (name or IProject) is compatible with the given part.
    @param project the project name, IProjectHandle, or IProject
    @param part part/group name, IPart[Group]Descriptor, or IPart[Group]
    @type project: object
    @type part: object
    @return True if compatible
    '''
    return bool()


  def buildProject(self, project, options, monitor):
    '''
    Build/Clean the project based on the options map using {@link #OPTION_BUILD_TYPE} and 
    specify the configuration to build with {@link #OPTION_BUILD_CONFIG} (this will change
    the active configuration)
    @param project the project name, IProjectHandle, or IProject
    @param options map of key to value options, or None; allowed keys:

    	{@link #OPTION_BUILD_TYPE}

    	{@link #OPTION_BUILD_CONFIG}

    	{@link #OPTION_BUILDER_NAME}

    	{@link #OPTION_NO_AUTO_ENABLE}

    @param monitor optional progress monitor for progress and cancellation
    @type project: object
    @type options: java_util_Map
    @type monitor: org_eclipse_core_runtime_IProgressMonitor
    @return buildResults with IMarkers and file changes
    @throws CoreException if anything goes wrong
    '''
    return com_silabs_ss_framework_ide_api_project_sls_core_BuildResults()


  def cleanProject(self, project, monitor):
    '''
    This is a convenience method and will call buildProject with {@link #BUILD_TYPE_CLEAN}
    and build the active configuration
    @param project the project to be built
    @param monitor optional progress monitor for progress and cancellation
    @type project: object
    @type monitor: org_eclipse_core_runtime_IProgressMonitor
    @return buildResults with IMarkers and file changes
    @throws CoreException if anything goes wrong
    '''
    return com_silabs_ss_framework_ide_api_project_sls_core_BuildResults()


  def getProjectModel(self, project):
    '''
    Get the model for the given project.  This is the model that matches the current state
    of the project.

    This model may be re-applied to
    the workspace using #updateProjectModel(), or exported to disk with {@link #exportSlsProjFile(object, Map, str)}.
    @param project the project name, IProjectHandle, or IProject
    @type project: object
    @return project model, editable in-place
    @throws CoreException
    '''
    return com_silabs_ss_framework_project_api_core_engine_IProjectModel()


  def getProjectModelFactory(self):
    '''
    Get the factory for creating .slsproj elements into {@link IProjectModel#getModel()}.
    These may be used to modify a project in place using #updateProjectModel().
    @see Studio.module for looking up modules in {@link MModule} elements.
    @return factory
    '''
    return com_silabs_ss_framework_project_api_core_model_ProjectModelFactory()


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


  def getWorkspaceLocation(self):
    '''
    Get the filesystrm path of the current Eclipse workspace.
    @return path string
    '''
    return str()


  def markerToString(self, marker):
    '''
    Convert an IMarker to human readable content
    @param marker a project marker
    @type marker: org_eclipse_core_resources_IMarker
    @return human readable string
    @throws CoreException if anything goes wrong
    '''
    return str()


  def readFileContents(self, project, projectRelativePath):
    '''
    Read the text of the given project-relative path in the given project.
    @param project the project name, IProjectHandle, or IProject
    @param projectRelativePath
    @type project: org_eclipse_core_resources_IProject
    @type projectRelativePath: str
    @return contents as UTF-8 string
    @throws CoreException if project does not exist or is not open, or if the file does not exist
    @throws IOException if file could not be read or converted
    '''
    return str()


  def getName(self):
    '''
    Get the name of the module
    @return 
    '''
    return str()


  def getOpenStudioProjectsInWorkspace(self):
    '''
    Get a list of all the names of the open SLS-compatible projects in the workspace
    @return str array of project names
    '''
    return list()


  def getProjectsInWorkspace(self):
    '''
    Get a list of all the names of the projects in the workspace
    (including closed or non-Studio projects)
    @return str array of project names
    '''
    return list()


  def getConfigInfo(self, project, configName):
    '''
    Get details about the given configuration of the given project.
    @param project the project name, IProjectHandle, or IProject
    @param configName configuration name
    @type project: object
    @type configName: str
    @return map of INFO_... keys to values
    @see #INFO_BOARD_ID
    @see #INFO_PART_ID
    @see #INFO_SDK_ID
    @see #INFO_TOOLCHAIN_ID
    @throws CoreException for nonexistent, closed, or non-Studio project
    '''
    return java_util_Map()


  def getProjectInfo(self, project):
    '''
    Get details about the project.
    @param project the project name, IProjectHandle, or IProject
    @see #INFO_PROJECT_LOCATION
    @see #INFO_CONFIGS
    @see #INFO_CURRENT_CONFIG
    @throws CoreException for nonexistent, closed, or non-Studio project

    @type project: object
    '''
    return java_util_Map()


  def getBuildTimeout(self):
    '''
    Get the project build timeout (in milliseconds).
    @return timeout (in milliseconds)
    '''
    return int()


  def createTemplateProject(self, template, options, monitor):
    '''
    Create an SLS project from a template. Any settings that are not defined by options
    will be set to default.
    @param template the template that the project is based on, it can be a str, ITemplateDescriptor, ITemplate
    @param options map of key to value options, or None; allowed keys:

    	{@link #OPTION_PROJECT_NAME}

    	{@link #OPTION_PROJECT_DESTINATION}

    	{@link #OPTION_PART_ID}

    	{@link #OPTION_SDK_ID}

    	{@link #OPTION_TOOLCHAIN_ID}

    	{@link #OPTION_NO_AUTO_ENABLE}

    	{@link #OPTION_CURRENT_CONFIGURATION}

    	{@link #OPTION_STOCK_CONFIGURATIONS}

    @param monitor optional progress monitor for progress and cancellation
    @type template: object
    @type options: java_util_Map
    @type monitor: org_eclipse_core_runtime_IProgressMonitor
    @return handle to open project
    @throws CoreException if anything goes wrong
    @see Studio.template
    '''
    return org_eclipse_core_resources_IProject()


  def getProject(self, name):
    '''
    Get the Eclipse IProject handle for an existing open project
    @param name the name of the project
    @type name: str
    @return handle to the specified project
    '''
    return org_eclipse_core_resources_IProject()


  def getProjectForFile(self, filePath):
    '''
    Get the project that owns this exact file or return None if none
    could be found.
    @param filePath the full path to the file
    @type filePath: str
    @return handle to the parent project or None if the file isn't contained
    by a project
    '''
    return org_eclipse_core_resources_IProject()


  def importExistingProject(self, path, options, monitor):
    '''
    Import a previously existing project (with .project file) into the workspace.
    @param path the path or URI to the project directory
    @param options map of key to value options, or None; allowed keys:

    	{@link #OPTION_PROJECT_NAME}

    	{@link #OPTION_NO_AUTO_ENABLE}

    @param monitor optional progress monitor for progress and cancellation
    @type path: str
    @type options: java_util_Map
    @type monitor: org_eclipse_core_runtime_IProgressMonitor
    @return handle to the imported project
    @throws CoreException if anything goes wrong
    '''
    return org_eclipse_core_resources_IProject()


  def importSlsProject(self, pathToProjectFile, options, monitor):
    '''
    Import a project from a .slsproj file.
    @param pathToProjectFile the full path to the .slsproj file
    @param options map of key to value options, or None; allowed keys:

    	{@link #OPTION_PROJECT_NAME}

    	{@link #OPTION_PROJECT_LOCATION}

    	{@link #OPTION_BOARD_ID}

    	{@link #OPTION_PART_ID}

    	{@link #OPTION_SDK_ID}

    	{@link #OPTION_TOOLCHAIN_ID}

    	{@link #OPTION_CONTENT_ROOT}

    	{@link #OPTION_NO_AUTO_ENABLE}

    @param monitor optional progress monitor for progress and cancellation
    @type pathToProjectFile: str
    @type options: java_util_Map
    @type monitor: org_eclipse_core_runtime_IProgressMonitor
    @return handle to open project
    @throws CoreException if anything goes wrong
    '''
    return org_eclipse_core_resources_IProject()


  def getWorkspace(self):
    '''
    Get the current Eclipse workspace.
    @return {@link IWorkspace} instance
    '''
    return org_eclipse_core_resources_IWorkspace()


  def deleteProject(self, project, deleteContent, force):
    '''
    Convenience method to delete a project, it will wrap the deletion in a workspace job
    so that it wont fail because a resource is in use.
    @param project the project name, IProjectHandle, or IProject that will be deleted
    @param deleteContent delete the disk content or just the project handle
    @param force a flag controlling whether resources that are not in sync with the local file system will be tolerated
    @throws CoreException This resource could not be deleted for some reason.
    This resource or one of its descendants is out of sync with the local file system and force is False.
    Resource changes are disallowed during certain types of resource change event notification.
    See IResourceChangeEvent for more details.

    @type project: object
    @type deleteContent: bool
    @type force: bool
    '''
    pass


  def exportSlsProjFile(self, project, options, pathToProjectFile):
    '''
    Export a project to an .slsproj file.
    @param project the project name, IProjectHandle, IProject, or MProject model
    @param options map of key to value options, or None; allowed keys:

    	{@link #OPTION_PROJECT_NAME}: string; to override the default name of the exported project

    	{@link #OPTION_LABEL}: string; to provide the label for the exported project

    	{@link #OPTION_DESCRIPTION}: string; to provide the description for the exported project

    	{@link #OPTION_IS_TEMPLATE}: boolean; set to True to configure the project for use in templates:
    omit build configurations, promoting the build settings from {@link #OPTION_REFERENCE_CONFIGURATION} to project level

    	{@link #OPTION_REFERENCE_CONFIGURATION}: string; the name of the configuration to use for driving {@link #OPTION_IS_TEMPLATE};
    the default is the current/active configuration

    	{@link #OPTION_BOARD_COMPATIBILITY}: string; to override the purported board compatibility for the project

    	{@link #OPTION_PART_COMPATIBILITY}: string; to override the purported part compatibility for the project

    	{@link #OPTION_SDK_COMPATIBILITY}: string; to override the purported SDK compatibility for the project

    	{@link #OPTION_TOOLCHAIN_COMPATIBILITY}: string; to override the purported toolchain compatibility for the project

    	{@link #OPTION_CONTENT_ROOT}: string; to override the URI used in the content root

    @param pathToProjectFile the path and filename of the .slsproj file to create
    @throws IOException if file cannot be written
    @throws CoreException if anything goes wrong

    @type project: object
    @type options: java_util_Map
    @type pathToProjectFile: str
    '''
    pass


  def setBuildTimeout(self, timeout):
    '''
    Set the project build timeout (in milliseconds).
    @param timeout timeout in milliseconds

    @type timeout: int
    '''
    pass


  def setConfigInfo(self, project, configName, info, force):
    '''
    Set details about the configuration.  Any items in the map will be modified.
    @param project the project name, IProjectHandle, or IProject
    @param configName configuration name
    @param info map of INFO_... keys to values
    @param force if True, always apply changes even if nothing changed
    @see #INFO_BOARD_ID
    @see #INFO_PART_ID
    @see #INFO_SDK_ID
    @see #INFO_TOOLCHAIN_ID
    @throws CoreException for nonexistent, closed, or non-Studio project, or unable to change settings

    @type project: object
    @type configName: str
    @type info: java_util_Map
    @type force: bool
    '''
    pass


  def switchCurrentConfig(self, project, configuration, monitor):
    '''
    Switch the current configuration to the input configuration.
    @param project the project name, IProjectHandle, or IProject
    @param configuration the configuration, it's name, or it's id
    @param monitor optional progress monitor for progress and cancellation
    @throws CoreException if anything goes wrong

    @type project: object
    @type configuration: object
    @type monitor: org_eclipse_core_runtime_IProgressMonitor
    '''
    pass


  def updateProjectFromModel(self, project, projectModel, monitor):
    '''
    Update the project with the model.  

    NOTE: in the initial implementation, this will only add or replace settings.  
    File/folder modifications in the MProject tree will not be applied to the project, but
    changes from module additions/removals will.  Use IProject/IResource APIs
    or #writeFileContents() to modify source/include files if needed. 

    For compatibility with future enhancements, do not "clean" the project model or 
    apply a partial model to an existing project, since this may have a different
    effect in the future.
    @param project the project name, IProjectHandle, or IProject
    @param projectModel the model created and modified from {@link #getProjectModel(object)}.
    @param monitor monitor for progress
    @throws CoreException if changes could not be applied
    @throws IllegalArgumentException if the model diverges from the existing project too much

    @type project: object
    @type projectModel: object
    @type monitor: org_eclipse_core_runtime_IProgressMonitor
    '''
    pass


  def writeFileContents(self, project, projectRelativePath, content):
    '''
    Write the text of the given project-relative path in the given project.
    This automatically creates any parent folders needed.
    @param project the project name, IProjectHandle, or IProject
    @param projectRelativePath
    @param content new contents as UTF-8 string
    @throws CoreException if project does not exist or is not open, or if the file or its parent folders
    could not be written
    @throws IOException if file could not be written or converted

    @type project: org_eclipse_core_resources_IProject
    @type projectRelativePath: str
    @type content: str
    '''
    pass


