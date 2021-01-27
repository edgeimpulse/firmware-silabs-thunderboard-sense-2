#
#
#	This file is a STUB that is used only to populate symbols for use by
#	Pydev under an editor.  Don't attempt to point to this module for running code! 
#

raise Exception("This script cannot run outside of Studio.  Use the 'Python for Studio' launch instead.")

from StudioClasses import *
#
#	Generated from com.silabs.ss.platform.api.installer.core.scripting.ISLSInstallerModule 
#	API version 0
#

class installer(com_silabs_ss_platform_api_scripting_core_ISLSRegistryModuleBase):
  '''
  This module provides access to the installer (as seen in the Add/Remove dialog)
   *
  '''
  def init(self):
    self.cleanInstallationState = self.getCleanInstallationState()

    self.currentInstallationState = self.getCurrentInstallationState()

    self.updateSites = self.getUpdateSites()

  NAME = str
  '''
  Name of this module
  @value "installer"
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

  class Feature(object):
    '''
    This represents an Eclipse feature.
    '''
    def init(self):
      self.id = self.getId()

      self.label = self.getLabel()

      self.iU = self.getIU()

      self.version = self.getVersion()

    def getId(self):
      return str()


    def getLabel(self):
      return str()


    def getIU(self):
      '''
      This is the p2 object for the feature, for more advanced queries.
      '''
      return org_eclipse_equinox_p2_metadata_IInstallableUnit()


    def getVersion(self):
      return org_eclipse_equinox_p2_metadata_Version()


  class InstallationState(object):
    '''
    This represents the state of some installation.

    Typically, the currently running installation is that state,
    but other states (like a "clean" state, another installation,
    etc.) may be created.
    '''
    def createWorkload(self, session, monitor):
      '''
      Get the workload for a session, based on this installation state.
      This shows what changes would be made to the installation.
      @param session a session created from {@link #createSession(IProgressMonitor)}.
      @param monitor a progress monitor, or None
      @throws CoreException if the installation could not be analyed

      @type session: installer.Session
      @type monitor: org_eclipse_core_runtime_IProgressMonitor
      '''
      return installer.Workload()


  class ProductWorkload(object):
    '''
    This represents the changes to one product from the 
    session options.
    '''
    def init(self):
      self.featuresToInstall = self.getFeaturesToInstall()

      self.featuresToRemove = self.getFeaturesToRemove()

      self.featuresToUpdate = self.getFeaturesToUpdate()

    def getFeaturesToInstall(self):
      return list()


    def getFeaturesToRemove(self):
      return list()


    def getFeaturesToUpdate(self):
      return list()


  class Session(object):
    '''
    An installer session.  This collects the changes that will be 
    applied to the installation.
    '''
    def markInstall(self, packages):
      '''
      Mark the given packages to be installed.
      @param packages list of str (package id), {@link IPackageDescriptor},
      or a str representing an Eclipse installable unit (e.g. "com.foo.bar.feature.feature.group",
      with an optional "/&lt;version&gt;" suffix)

      @type packages: list
      '''
      pass


    def markRemove(self, packages):
      '''
      Mark the given packages to be removed.
      @param packages list of str (package id), {@link IPackageDescriptor},
      or a str representing an Eclipse installable unit (e.g. "com.foo.bar.feature.feature.group",
      with an optional "/&lt;version&gt;" suffix)

      @type packages: list
      '''
      pass


    def markUpdate(self, packages):
      '''
      Mark the given packages to be updated.
      @param packages list of str (package id), {@link IPackageDescriptor},
      or a str representing an Eclipse installable unit (e.g. "com.foo.bar.feature.feature.group",
      with an optional "/&lt;version&gt;" suffix)

      @type packages: list
      '''
      pass


    def reset(self):
      '''
      Reset the session.

      This clears the set of marked packages and resets any pending
      configuration changes.
      '''
      pass


  class Workload(object):
    '''
    This represents the changes to Simplicity Studio from the 
    session options.
    '''
    def init(self):
      self.productWorkloads = self.getProductWorkloads()

    def getProductWorkloads(self):
      '''
      Map of product (profile) to workload
      '''
      return java_util_Map()


  def getCleanInstallationState(self):
    '''
    Get the installation state that reflects a clean environment.
    '''
    return installer.InstallationState()


  def getCurrentInstallationState(self):
    '''
    Get the installation state from the running environment.
    '''
    return installer.InstallationState()


  def createSession(self, monitor):
    '''
    Create an installer session.
    @param monitor optional progress monitor
    @throws CoreException if current installation state could not be fetched

    @type monitor: org_eclipse_core_runtime_IProgressMonitor
    '''
    return installer.Session()


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


  def getAllInstallablePackages(self, pm):
    '''
    Get the all software packages (unfiltered)
    @param pm progress monitor
    @type pm: org_eclipse_core_runtime_IProgressMonitor
    @return non-None list of package descriptors for all Software
    '''
    return list()


  def getAllInstallablePackagesForParts(self, partCompatibility, pm):
    '''
    Get the all software packages (partCompatibility filtered)
    @param partCompatibility filter, comma separated list of part ids
    @param pm progress monitor
    @type partCompatibility: str
    @type pm: org_eclipse_core_runtime_IProgressMonitor
    @return non-None list of package descriptors for all Software
    '''
    return list()


  def getCheckForUpdatesAssets(self, pm):
    '''
    Check for any updates for assets (unfiltered)
    @param pm progress monitor
    @type pm: org_eclipse_core_runtime_IProgressMonitor
    @return non-None list of assets for updates
    '''
    return list()


  def getCheckForUpdatesPackages(self, pm):
    '''
    Check for any updates for software packages (unfiltered)
    @param pm progress monitor
    @type pm: org_eclipse_core_runtime_IProgressMonitor
    @return non-None list of package descriptors for updates
    '''
    return list()


  def getInstalledPackages(self, pm):
    '''
    Get the currently installed packages.

    Convenience method for {@link #getPackageInstallStates()}
    @param pm progress monitor
    @type pm: org_eclipse_core_runtime_IProgressMonitor
    @return non-None list of package descriptors that are currently installed
    '''
    return list()


  def getPartPackages(self, pm):
    '''
    Get the "part" packages (unfiltered)
    @param pm progress monitor
    @type pm: org_eclipse_core_runtime_IProgressMonitor
    @return non-None list of package descriptors for Parts
    '''
    return list()


  def getToolPackages(self, pm):
    '''
    Get the "tool" packages (unfiltered)
    @param pm progress monitor
    @type pm: org_eclipse_core_runtime_IProgressMonitor
    @return non-None list of package descriptors for Tools
    '''
    return list()


  def getUpdateSites(self):
    '''
    Get all the update sites.
    @return non-None list of sites, as stringized URIs
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


  def addUpdateSite(self, uri):
    '''
    Modify update sites by adding an entry if needed.
    @param uri the URI in string form (e.g. "http://update.site.com/updates/")

    @type uri: str
    '''
    pass


  def removeUpdateSite(self, uri):
    '''
    Modify update sites by removing an entry if needed.
    @param uri the URI in string form (e.g. "http://update.site.com/updates/")

    @type uri: str
    '''
    pass


  def updateInstallation(self, session, monitor):
    '''
    Apply the changes in a session.  On success, 
    this will require a restart of Studio before changes are visible.
    @param session a session created from {@link #createSession(IProgressMonitor)}
    @param monitor a progress monitor, or None
    @throws CoreException if the installation could not be updated

    @type session: installer.Session
    @type monitor: org_eclipse_core_runtime_IProgressMonitor
    '''
    pass


  def updateInstallationMetadata(self, _com_silabs_ss_platform_api_installer_core_scripting_ISLSInstallerModule_Session, _org_eclipse_core_runtime_IProgressMonitor):
    '''
    Fetch updates to parts, boards, and packages, for use in subsequent calls.
    If this call is not made, the information from the last update check are used instead.
    '''
    pass


