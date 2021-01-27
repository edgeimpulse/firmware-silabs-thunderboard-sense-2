#
#
#	This file is a STUB that is used only to populate symbols for use by
#	Pydev under an editor.  Don't attempt to point to this module for running code! 
#

raise Exception("This script cannot run outside of Studio.  Use the 'Python for Studio' launch instead.")

from StudioClasses import *
#
#	Generated from com.silabs.ss.framework.hwconfig.api.core.scripting.IHalConfigScriptModule 
#	API version 0
#

class halConfig(com_silabs_ss_platform_api_scripting_core_IScriptModule):
  '''
  Script API for HalConfigurator access
   *
  '''
  def init(self):
    self.documentPath = self.getDocumentPath()

  ERROR = int
  '''
  **********************************************************
  @value IProblemChange.ERROR
  '''

  INFO = int
  '''
  '''

  NAME = str
  '''
  Name of this module
  @value "halConfig"
  '''

  VERSION = int
  '''
  Version of this API
  @value (0 << 16) | (0 << 8) | 0
  '''

  WARNING = int
  '''
  '''

  class EventFilter(com_silabs_ss_framework_configbase_api_core_client_IDocumentEventFilter):
    '''
    This interface may be implemented directly for use by custom filters
    '''
    def accept(self, object):
      '''
      Determines if the given object passes this filter.
      	 *
      @param object object to compare against the filter
      *
      @type object: object
      @return True if the object is accepted by the filter.
      '''
      return bool()


  class ListProvider(com_silabs_ss_framework_configbase_api_core_client_IListProvider):
    '''
    This interface allows clients to provide a list dynamically.
    '''
    pass
  def isStandalone(self):
    '''
    Return True if the import'ing script was invoked standalone and 
    not as part of the Simplicity Configurator editor.
    @return True if standalone, False if hosted by editor
    '''
    return bool()


  def newCategorySetting(self, prop, category, subcategory):
    '''
    Create a change that changes the category and/or subcategory of a property.
    This rearranges
    @param prop property reference
    @param category new category; or None for the original category
    @param subcategory new subcategory; or None for the original category
    @type prop: com_silabs_ss_framework_configbase_api_core_client_IPropertyReference
    @type category: str
    @type subcategory: str
    @return new change
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IDocumentChange()


  def newIsHiddenSetting(self, prop, hidden):
    '''
    Create a change that changes the visibilty of the property in the UI.

    The value of the property is not affected.
    @param prop property reference
    @param hidden
    @type prop: com_silabs_ss_framework_configbase_api_core_client_IPropertyReference
    @type hidden: bool
    @return new change
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IDocumentChange()


  def newIsReadOnlySetting(self, prop, readOnly):
    '''
    Create a change that changes the read-only status of the property in the UI.

    The value of the property is not affected.  The property may still be
    modified by {@link #newPropertySetting(IPropertyReference, object)}; it
    is only the user who cannot change the value.
    @param prop property reference
    @param readOnly
    @type prop: com_silabs_ss_framework_configbase_api_core_client_IPropertyReference
    @type readOnly: bool
    @return new change
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IDocumentChange()


  def newIsTransientSetting(self, prop, trans):
    '''
    Create a change that changes the transient status of the property.

    The value of the property is not affected. The property will not be saved if it is transient.
    @param prop property reference
    @param trans
    @type prop: com_silabs_ss_framework_configbase_api_core_client_IPropertyReference
    @type trans: bool
    @return new change
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IDocumentChange()


  def newMetadataSetting(self, prop, metaPropertyId, metaPropertyValue):
    '''
    Create a change that changes an arbitrary item of metadata on a property.
    @param prop property reference
    @param metaPropertyId
    @param metaPropertyValue
    @type prop: com_silabs_ss_framework_configbase_api_core_client_IPropertyReference
    @type metaPropertyId: str
    @type metaPropertyValue: object
    @return new change
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IDocumentChange()


  def newProblemGroup(self, mode, identifier):
    '''
    Create a change that marks the following problem changes with 
    a group identifier.   

    This identifier is implicitly associated with every problem 
    subsequently created by this module (during a given invocation of 
    a user event handler callback).

    The purpose of this identifier is to avoid requiring the client
    to explicitly remove old problems from the model.   
    On every event handling session, any previously reported problems
    with the given identifier are cleared and replaced with those reported
    by {@link #newError(IProblemSiteAccessor, str)}, etc.  

    By default, the group identifier is that of the event handler callback
    itself.
    @param mode the mode on which problems may be generated
    @param identifier an object (tested with equality, not identity, semantics)
    @type mode: com_silabs_ss_framework_hwconfig_api_core_client_accessors_IModeAccessor
    @type identifier: object
    @return new change
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IDocumentChange()


  def newPropertySetting(self, prop, newValue):
    '''
    Create a change that changes a property to the given value.
    @param prop property reference
    @param newValue new value to set
    @type prop: com_silabs_ss_framework_configbase_api_core_client_IPropertyReference
    @type newValue: object
    @return new change
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IDocumentChange()


  def newReadOnlySetting(self, object, readOnly):
    '''
    Create a change that sets a module readonly
    @param object
    @param readOnly
    @type object: com_silabs_ss_framework_hwconfig_api_core_client_accessors_IobjectAccessor
    @type readOnly: bool
    @return new change
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IDocumentChange()


  def newResetObjectSetting(self, object):
    '''
    Create a change that resets an object
    @param object
    @type object: com_silabs_ss_framework_hwconfig_api_core_client_accessors_IobjectAccessor
    @return new change
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IDocumentChange()


  def newResetPropertySetting(self, prop):
    '''
    Create a change that resets a property
    @param prop
    @type prop: com_silabs_ss_framework_configbase_api_core_client_IPropertyReference
    @return new change
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IDocumentChange()


  def newSetDeviceVersionChange(self, version):
    '''
    Create a change that sets the device version
    @param version
    @type version: str
    @return new change
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IDocumentChange()


  def newSignalSetting(self, signal, newValue):
    '''
    Create a change that sets a signal to the given value.
    @param signal signal reference
    @param newValue new value to set
    @type signal: com_silabs_ss_framework_hwconfig_api_core_client_ISignalReference
    @type newValue: object
    @return new change
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IDocumentChange()


  def newSignalTypeSetting(self, signal, newType):
    '''
    Create a change that changes a signal's type
    @param signal
    @param newType
    @type signal: com_silabs_ss_framework_hwconfig_api_core_client_ISignalReference
    @type newType: str
    @return 
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IDocumentChange()


  def newXMLDeviceChange(self, xmlDevice):
    '''
    Create a change that encapsulates an XMLDevice object
    @param xmlDevice
    @type xmlDevice: com_silabs_ss_framework_hwconfig_api_core_model_device_XMLDevice
    @return 
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IDocumentChange()


  def newObjectEventFilter(self, objects):
    '''
    Create an event filter that matches one of a group of objects.
    @param objects a collection of object accessors
    @type objects: list
    @return new filter
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IDocumentEventFilter()


  def newObjectEventFilterWithProvider(self, listProvider):
    '''
    Create an event filter that matches one of a group of objects.
    @param listProvider a provider of a collection of object accessors
    @type listProvider: halConfig.ListProvider
    @return new filter
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IDocumentEventFilter()


  def newObjectNameEventFilter(self, objectNamePattern):
    '''
    Create an event filter that matches an object name pattern.
    @param objectNamePattern regular expression in Java syntax
    @type objectNamePattern: str
    @return new filter
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IDocumentEventFilter()


  def newObjectPropertyEventFilter(self, objectNamePattern, propertyNamePattern):
    '''
    Create an event filter that matches an object name and property id pattern.
    Both patterns must match for the filter to accept.
    @param objectNamePattern regular expression in Java syntax
    @param propertyNamePattern regular expression in Java syntax
    @type objectNamePattern: str
    @type propertyNamePattern: str
    @return new filter
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IDocumentEventFilter()


  def newObjectTreeEventFilter(self, root):
    '''
    Create an event filter that matches an object or any child of that object.
    @param root root object in matching tree
    @type root: com_silabs_ss_framework_hwconfig_api_core_client_accessors_IobjectAccessor
    @return new filter
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IDocumentEventFilter()


  def newPropertyNameEventFilter(self, nameAndPropIds):
    '''
    Create an event filter that matches changes to any of the properties in the list.
    @param nameAndPropIds list of property names to filter, in the form "objectName::propertyId"
    @type nameAndPropIds: list
    @return new filter
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IDocumentEventFilter()


  def newPropertyNameEventFilterWithProvider(self, listProvider):
    '''
    Create an event filter that matches changes to any of the properties in the list.
    @param listProvider a provider of a collection of property names to filter, in the form "objectName::propertyId"
    @type listProvider: halConfig.ListProvider
    @return new filter
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IDocumentEventFilter()


  def newPropertyReferenceEventFilter(self, propRefs):
    '''
    Create an event filter that matches changes to any of the properties in the list.
    @param propRefs list of property references to filter
    @type propRefs: list
    @return new filter
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IDocumentEventFilter()


  def newPropertyReferenceEventFilterWithProvider(self, listProvider):
    '''
    Create an event filter that matches changes to any of the properties in the list.
    @param listProvider a provider of a collection of property references to filter
    @type listProvider: halConfig.ListProvider
    @return new filter
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IDocumentEventFilter()


  def newSignalNameEventFilter(self, moduleNamePattern, signalNamePattern):
    '''
    Create an event filter that matches an signal name pattern for a
    particular module pattern.  Both patterns must match for the filter to accept.
    @param moduleNamePattern regular expression in Java syntax, matching the {@link ISignalReference#getModule()#getName()}
    @param signalNamePattern regular expression in Java syntax, matching the {@link ISignalReference#getName()}
    @type moduleNamePattern: str
    @type signalNamePattern: str
    @return new filter
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IDocumentEventFilter()


  def newError(self, site, message):
    '''
    Create a change that posts an error against the given property or object.
    @param site offending property reference or object
    @param message message for user
    @type site: com_silabs_ss_framework_configbase_api_core_client_accessors_IProblemSiteAccessor
    @type message: str
    @return new change
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IProblemChange()


  def newProblem(self, site, severity, message):
    '''
    Create a change that posts a message against the given property or object.
    @param site offending property reference or object
    @param severity severity of problem
    @param message message for user
    @type site: com_silabs_ss_framework_configbase_api_core_client_accessors_IProblemSiteAccessor
    @type severity: int
    @type message: str
    @return new change
    @see #ERROR
    @see #WARNING
    @see #INFO
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IProblemChange()


  def newWarning(self, site, message):
    '''
    Create a change that posts a warning against the given property or object.
    @param site offending property reference or object
    @param message message for user
    @type site: com_silabs_ss_framework_configbase_api_core_client_accessors_IProblemSiteAccessor
    @type message: str
    @return new change
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IProblemChange()


  def newQuickFix(self, prop, description, changes):
    '''
    Create a quick fix object that makes arbitrary changes for the user to correct a problem.
    @param prop offending property reference
    @param description human-readable description of the fix
    @param changes list of changes to be made
    @type prop: com_silabs_ss_framework_configbase_api_core_client_IPropertyReference
    @type description: str
    @type changes: list
    @return new quick fix
    @see ProblemChange#setQuickFixProcessor(com.silabs.ss.framework.hwconfig.internal.api.core.client.changes.ProblemChange.IQuickFixCallback)
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IQuickFix()


  def newQuickFix(self, prop, description, changes):
    '''
    Create a quick fix object that makes arbitrary changes for the user to correct a problem.
    @param prop offending property reference
    @param description human-readable description of the fix
    @param changes list of changes to be made
    @type prop: com_silabs_ss_framework_hwconfig_api_core_client_accessors_IobjectAccessor
    @type description: str
    @type changes: list
    @return new quick fix
    @see ProblemChange#setQuickFixProcessor(com.silabs.ss.framework.hwconfig.internal.api.core.client.changes.ProblemChange.IQuickFixCallback)
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IQuickFix()


  def newQuickFixPropertySetting(self, prop, newValue):
    '''
    Create a quick fix object that sets a property to the given value to correct a problem.
    @param prop offending property reference
    @param newValue value that should correct the problem
    @type prop: com_silabs_ss_framework_configbase_api_core_client_IPropertyReference
    @type newValue: object
    @return new quick fix
    @see ProblemChange#setQuickFixProcessor(com.silabs.ss.framework.hwconfig.internal.api.core.client.changes.ProblemChange.IQuickFixCallback)
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IQuickFix()


  def newPowerDomain(self):
    '''
    Create a new power domain object.
    @return new power domain
    '''
    return com_silabs_ss_framework_hwconfig_api_core_client_IPowerDomain()


  def newPowerModelChange(self, mode, domain):
    '''
    Create a change that reports the calculated power domain against the 
    given mode.
    @param mode mode against which the power was calculated
    @param domain client-calculated power domain information
    @type mode: com_silabs_ss_framework_hwconfig_api_core_client_accessors_IModeAccessor
    @type domain: com_silabs_ss_framework_hwconfig_api_core_client_IPowerDomain
    @return new change
    '''
    return com_silabs_ss_framework_hwconfig_api_core_client_IPowerModelChange()


  def createDocument(self, path, deviceName, partId, modeName):
    '''
    For standalone use only:  create and use a new device model for 
    this script.
    @param path the path where the document might be saved
    @param deviceName the name of the device to use
    @param partId the part id of the device to use
    @param modeName the name of the default mode
    @type path: str
    @type deviceName: str
    @type partId: str
    @type modeName: str
    @return the new device accessor
    @throws ScriptException if module is not used in standalone mode,
    or if device cannot be loaded
    '''
    return com_silabs_ss_framework_hwconfig_api_core_client_accessors_IDeviceAccessor()


  def findOrOpenEditorDocument(self, path):
    '''
    For standalone use only:  get the device accessor from an
    open editor for use by this script.  If no such editor is
    open, open an editor on the document.
    @param path the absolute path to the *.halconf file
    @type path: str
    @return the loaded device accessor
    @throws ScriptException if module is not used in standalone mode,
    or if document is not found or cannot be loaded.
    '''
    return com_silabs_ss_framework_hwconfig_api_core_client_accessors_IDeviceAccessor()


  def loadDocument(self, path):
    '''
    For standalone use only:  load the given *.halconf file into
    this script.  This has no correlation with any open editor.
    @param path the absolute path to the *.halconf file
    @type path: str
    @return the loaded device accessor
    @throws ScriptException if module is not used in standalone mode,
    or if document is not found or cannot be loaded.
    '''
    return com_silabs_ss_framework_hwconfig_api_core_client_accessors_IDeviceAccessor()


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


  def addEventHandler(self, eventMask, filter, callback):
    '''
    Register an event handler.

    Note that the number of objects matched by a filter has no relation
    to how many times the callback is invoked.
    @param eventMask mask of {@link IDocumentEventConstants} constants
    @param filter filter implementation
    @param callback function callable in script
    @type eventMask: int
    @type filter: com_silabs_ss_framework_configbase_api_core_client_IDocumentEventFilter
    @type callback: com_silabs_ss_framework_configbase_api_core_client_IDocumentEventCallback
    @return handle for the event handler registration
    @throws ScriptException if no document is open
    '''
    return object()


  def addMultipleEventHandler(self, eventMask, filter, callback):
    '''
    Register an event handler for multiple events.  Configurator explicitly
    delays firing callbacks as long as the same kind of event (or some time threshold)
    is being fired.  The callback will get all the matched events at once.
    This can be used e.g. to reduce the number of callbacks which perform only one global
    action.  

    Multiple-event handlers are called interleaved with single-event handlers, i.e.,
    all events are still handled in the same effective order, except that those
    matched by this filter are sent once for each successive series of events.

    If handlers are registered for given events which match for both "single" event handlers and 
    multiple-event handlers, both callbacks are called, with the single-event callbacks called N times 
    followed by one call to the multiple-event handler.
    @param eventMask mask of {@link IDocumentEventConstants} constants
    @param filter filter implementation
    @param callback function callable in script
    @type eventMask: int
    @type filter: com_silabs_ss_framework_configbase_api_core_client_IDocumentEventFilter
    @type callback: com_silabs_ss_framework_configbase_api_core_client_IDocumentMultipleEventCallback
    @return handle for the event handler registration
    @throws ScriptException if no document is open
    '''
    return object()


  def getDocumentPath(self):
    '''
    Get the absolute path to the open document this script manages
    @return path to *.halconf file
    '''
    return str()


  def getName(self):
    '''
    Get the name of the module
    @return 
    '''
    return str()


  def generateSource(self, directoryURI, globalVariables):
    '''
    For standalone use only: generate source for the document to the given
    base directory.
    @param directoryURI URI to base directory (forms the initial "sourceRoot" location);
    can be plain file path or e.g. 'platform:/resource/myProject/'
    @param globalVariables if not None, a set of variables to apply for the global scope
    @throws ScriptException if module is not used in standalone mode,
    or if source cannot be generated

    @type directoryURI: str
    @type globalVariables: java_util_Map
    '''
    pass


  def postEvent(self, event, object):
    '''
    For standalone use only: post the given event against the document
    and block until all the event handlers registered against
    the event are processed and their changes are applied.
    @param event the event mask (see {@link IDocumentEventConstants})
    @param object the object against which the event is fired
    @throws ScriptException if module is not used in standalone mode,
    or if problems arise from invoking the event handlers triggered
    by the changes

    @type event: int
    @type object: object
    '''
    pass


  def processChanges(self, changes):
    '''
    For standalone use only: process the given list of document changes
    against the model and block until all the triggered event handlers 
    are processed and their changes are applied.
    @param changes list of {@link IDocumentChange}
    @throws ScriptException if module is not used in standalone mode,
    or if problems arise from invoking the event handlers triggered
    by the changes

    @type changes: list
    '''
    pass


  def removeEventHandler(self, handle):
    '''
    Remove an event handler
    @param handle returned by {@link #addEventHandler(int, IDocumentEventFilter, IDocumentEventCallback)}
    @throws ScriptException if no document is open

    @type handle: object
    '''
    pass


  def removeMultipleEventHandler(self, handle):
    '''
    Remove an event handler for repeated events
    @param handle returned by {@link #addMultipleEventHandler(int, IDocumentEventFilter, IDocumentMultipleEventCallback)}
    @throws ScriptException if no document is open

    @type handle: object
    '''
    pass


  def saveDevice(self, device, path):
    '''
    Save a document to its original location
    @param device an existing Device
    @param path
    @throws ScriptException

    @type device: com_silabs_ss_framework_hwconfig_api_core_client_accessors_IDeviceAccessor
    @type path: str
    '''
    pass


  def showDebugOutput(self, enabled
  ):
    '''
    Turn on debugging output (goes to Studio's stdout)
    @param enabled

    @type enabled
    : bool
    '''
    pass


