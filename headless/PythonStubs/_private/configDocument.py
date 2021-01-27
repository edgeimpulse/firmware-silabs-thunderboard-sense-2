#
#
#	This file is a STUB that is used only to populate symbols for use by
#	Pydev under an editor.  Don't attempt to point to this module for running code! 
#

raise Exception("This script cannot run outside of Studio.  Use the 'Python for Studio' launch instead.")

from StudioClasses import *
#
#	Generated from com.silabs.ss.framework.config.api.document.core.scripting.IConfigDocumentScriptModule 
#	API version 0
#

class configDocument(com_silabs_ss_platform_api_scripting_core_IScriptModule):
  '''
  Script API for Config Data Document access
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
  @value "configDocument"
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
  def getProvisionModel(self, id):
    '''
    Get a provision model by id.
    @param id of the provision model
    @type id: str
    @return provision model or None if none found
    '''
    return com_silabs_ss_framework_config_api_provision_accessor_IProvisionAccessor()


  def getViewLayoutModel(self, id):
    '''
    Get a view layout model by id
    @param id of the view layout model
    @type id: com_silabs_ss_framework_configbase_api_core_client_accessors_IDocumentobjectAccessor
    @return view layout model or None if none found
    '''
    return com_silabs_ss_framework_config_api_view_accessor_IViewLayoutAccessor()


  def getViewLayoutModel(self, id):
    '''
    Get a view layout model by id
    @param id of the view layout model
    @type id: str
    @return view layout model or None if none found
    '''
    return com_silabs_ss_framework_config_api_view_accessor_IViewLayoutAccessor()


  def newAskYesNoQuestionChange(self, text, addDontShowAgain, id):
    '''
    Create a change that shows a yes/no question dialog
    @param text of the question
    @param addDontShowAgain for a checkbox to not show same alert again
    @param id of this alert (required for addDontShowAgain)
    @type text: str
    @type addDontShowAgain: bool
    @type id: str
    @return new change
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IDocumentChange()


  def newEnabledSetting(self, viewElements, enabled):
    '''
    Create a change that changes the enabled attribute of view elements
    @param viewElements
    @param enabled
    @type viewElements: list
    @type enabled: bool
    @return new change
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IDocumentChange()


  def newFlashDeviceChange(self, hexFilePath, modelId):
    '''
    Create a change that flashes a device with the hex file path
    @param hexFilePath
    @param modelId
    @type hexFilePath: str
    @type modelId: str
    @return new change
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IDocumentChange()


  def newGetSelectedDeviceIndexChange(self):
    '''
    Create a change that requests the index of the device selected by the user
    @return new change
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IDocumentChange()


  def newIncludedSetting(self, viewElements, included):
    '''
    Create a change that includes or excludes view elements from their parent layout
    @param viewElements
    @param included
    @type viewElements: list
    @type included: bool
    @return 
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IDocumentChange()


  def newLabelTextSetting(self, viewElements, labelText):
    '''
    Create a change that changes the label text attribute of view elements (depending on the element)
    @param viewElements
    @param labelText
    @type viewElements: list
    @type labelText: str
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
    @type mode: com_silabs_ss_framework_configbase_api_core_client_accessors_IDocumentobjectAccessor
    @type identifier: object
    @return new change
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IDocumentChange()


  def newPropertyEditorCommandSetting(self, propToNewValueMap):
    '''
    Create an undoable (editor dirtying) change implemented by the editor (only when an editor exists)
    that changes a set of properties to new values.
    @param propToNewValueMap
    @type propToNewValueMap: java_util_Map
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


  def newReadDeviceContentsChange(self, provision):
    '''
    Create a change that reads the contents of a hex image file from a device using a specified provision model

    When the results are ready, a {@link IConfigDocumentEventConstants#DEVICE_CONTENTS_READY} event is triggered
    @param provision
    @type provision: com_silabs_ss_framework_config_api_provision_accessor_IProvisionAccessor
    @return new change
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IDocumentChange()


  def newSetDocumentObjectVersionChange(self, version, _str):
    '''
    Create a change that sets the version of a document object
    @param version
    @type version: com_silabs_ss_framework_configbase_api_core_client_accessors_IDocumentobjectAccessor
    @return new change
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IDocumentChange()


  def newShowAlertChange(self, text, severity, addDontShowAgain, id):
    '''
    Create a change that shows an alert
    @param text of the alert
    @param severity one of: {@link #ERROR}, {@link #WARNING}, {@link #INFO}
    @param addDontShowAgain for a checkbox to not show same alert again
    @param id of this alert (required for addDontShowAgain)
    @type text: str
    @type severity: int
    @type addDontShowAgain: bool
    @type id: str
    @return new change
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IDocumentChange()


  def newSpanColsSetting(self, viewElements, spanCols):
    '''
    Create a change that changes the spanCols attribute of view elements
    @param viewElements
    @param spanCols
    @type viewElements: list
    @type spanCols: int
    @return new change
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IDocumentChange()


  def newSpanRowsSetting(self, viewElements, spanRows):
    '''
    Create a change that changes the spanRows attribute of view elements
    @param viewElements
    @param spanRows
    @type viewElements: list
    @type spanRows: int
    @return new change
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IDocumentChange()


  def newVisibleSetting(self, viewElements, visible):
    '''
    Create a change that changes the visible attribute of view elements
    @param viewElements
    @param visible
    @type viewElements: list
    @type visible: bool
    @return new change
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IDocumentChange()


  def newXMLDocumentObjectChange(self, xmlDocumentObject):
    '''
    Create a change that encapsulates an XMLDocumentobject
    @param xmlDocumentobject or None to signify ALL document objects
    @type xmlDocumentobject: com_silabs_ss_framework_config_api_document_model_document_XMLDocumentobject
    @return new change
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


  def newPropertyNameEventFilter(self, nameAndPropIds):
    '''
    Create an event filter that matches changes to any of the properties in the list.
    @param nameAndPropIds list of property names to filter, in the form "objectName::propertyId"
    @type nameAndPropIds: list
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


  def newMultiSiteError(self, list, message):
    '''
    Create a change that posts an error against the given list of properties or objects.
    @param list of site offending property reference or object
    @param message message for user
    @type list: list
    @type message: str
    @return new change
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IProblemChange()


  def newMultiSiteProblem(self, list, severity, message):
    '''
    Create a change that posts a message against the given list of properties or objects.
    @param list of site offending property reference or object
    @param severity severity of problem
    @param message message for user
    @type list: list
    @type severity: int
    @type message: str
    @return new change
    @see #ERROR
    @see #WARNING
    @see #INFO
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IProblemChange()


  def newProblem(self, list, severity, message):
    '''
    Create a change that posts a message against the given property or object.
    @param list of site offending property reference or object
    @param severity severity of problem
    @param message message for user
    @type list: com_silabs_ss_framework_configbase_api_core_client_accessors_IProblemSiteAccessor
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


  def createNewDocument(self, configDataId, path):
    '''
    Create a new Document with a single Documentobject using config data id.
    @param configDataId str
    @param path OS-dependent absolute path for the file when saving
    @type configDataId: str
    @type path: str
    @return a new Document
    @throws ScriptException
    '''
    return com_silabs_ss_framework_configbase_api_core_client_accessors_IDocumentAccessor()


  def openDocument(self, path):
    '''
    Open an existing document
    @param path OS-dependent absolute path
    @type path: str
    @return the open Document
    @throws ScriptException
    '''
    return com_silabs_ss_framework_configbase_api_core_client_accessors_IDocumentAccessor()


  def readHexImageFileContents(self, modelId, hexFileContents):
    '''
    Read a hex file into a document object using a specified model id
    @param modelId
    @param hexFileContents
    @type modelId: str
    @type hexFileContents: str
    @return documentobject
    @throws ScriptException
    '''
    return com_silabs_ss_framework_configbase_api_core_client_accessors_IDocumentObjectAccessor()


  def readHexImageFileContentsUsingProvisionModel(self, modelId, provision, hexFileContents):
    '''
    Read a hex file into a document object using a specified model id for the data model and a specific provision model
    @param modelId
    @param provision
    @param hexFileContents
    @type modelId: str
    @type provision: com_silabs_ss_framework_config_api_provision_accessor_IProvisionAccessor
    @type hexFileContents: str
    @return documentobject
    @throws ScriptException
    '''
    return com_silabs_ss_framework_configbase_api_core_client_accessors_IDocumentObjectAccessor()


  def getHexImageFile(self, documentObject):
    '''
    Get a hex file object from a documentobject
    @param documentobject
    @type documentobject: com_silabs_ss_framework_configbase_api_core_client_accessors_IDocumentobjectAccessor
    @return a hex image file object
    @throws ScriptException
    '''
    return com_silabs_ss_framework_configbase_api_core_client_accessors_IHexImageFileAccessor()


  def getHexImageFileUsingProvisionModel(self, documentObject, provision):
    '''
    Get a hex file object from a documentobject using a specific provision model
    @param documentobject
    @param provision
    @type documentobject: com_silabs_ss_framework_configbase_api_core_client_accessors_IDocumentobjectAccessor
    @type provision: com_silabs_ss_framework_config_api_provision_accessor_IProvisionAccessor
    @return a hex image file object
    @throws ScriptException
    '''
    return com_silabs_ss_framework_configbase_api_core_client_accessors_IHexImageFileAccessor()


  def newEmptyHexImageFile(self):
    '''
    Create a new hex file object for adding sections
    @return a hex image file object
    '''
    return com_silabs_ss_framework_configbase_api_core_client_accessors_IHexImageFileAccessor()


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


  def addCommandEventHandler(self, commandId, callback):
    '''
    Register an event handler for a command

    Implicitly filters on {@link IDocumentEventConstants#DOCUMENT_COMMAND} and the specific command id)
    @param commandId
    @param callback function callable in script
    @type commandId: str
    @type callback: com_silabs_ss_framework_configbase_api_core_client_IDocumentEventCallback
    @return handle for the event handler registration
    @throws ScriptException if no document is open
    '''
    return object()


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


  def addGetSelectedDeviceIndexEventHandler(self, callback):
    '''
    Register an event handler for a get device index event

    Implicitly filters on {@link IConfigDocumentEventConstants#SELECTED_DEVICE_INDEX} and the specific use id
    @param callback
    @type callback: com_silabs_ss_framework_configbase_api_core_client_IDocumentEventCallback
    @return handle for the event handler registration
    @throws ScriptException
    '''
    return object()


  def addMultipleEventHandler(self, eventMask, filter, callback):
    '''
    Register an event handler for multiple events.  Config framework explicitly
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


  def addResponseEventHandler(self, questionId, callback):
    '''
    Register an event handler for a yes/no question

    Implicitly filters on {@link IDocumentEventConstants#DOCUMENT_RESPONSE} and the specific question id)
    @param questionId
    @param callback
    @type questionId: str
    @type callback: com_silabs_ss_framework_configbase_api_core_client_IDocumentEventCallback
    @return handle for the event handler registration
    @throws ScriptException if no document is open
    '''
    return object()


  def addSelectionChangedEventHandler(self, propertyId, callback):
    '''
    Register an event handler for a selection change on a property editor that supports this (string list editor for now)

    Implicitly filters on {@link IConfigDocumentEventConstants#SELECTION_INDEX_CHANGE} and the specific property id
    @param propertyId
    @param callback
    @type propertyId: str
    @type callback: com_silabs_ss_framework_configbase_api_core_client_IDocumentEventCallback
    @return handle for the event handler registration
    @throws ScriptException
    '''
    return object()


  def getDocumentPath(self):
    '''
    Get the absolute path to the open document this script manages
    @return path to *.document file
    '''
    return str()


  def getXMLFileContents(self, documentObject):
    '''
    Get the contents of an XML file from a documentobject
    @param documentobject
    @type documentobject: com_silabs_ss_framework_configbase_api_core_client_accessors_IDocumentobjectAccessor
    @return str
    @throws ScriptException
    '''
    return str()


  def getXMLFileContentsUsingProvisionModel(self, documentObject, provision):
    '''
    Get the contents of an XML file from a documentobject using a specific provision model
    @param documentobject
    @param provision
    @type documentobject: com_silabs_ss_framework_configbase_api_core_client_accessors_IDocumentobjectAccessor
    @type provision: com_silabs_ss_framework_config_api_provision_accessor_IProvisionAccessor
    @return str
    @throws ScriptException
    '''
    return str()


  def getName(self):
    '''
    Get the name of the module
    @return 
    '''
    return str()


  def addStatusPaneItem(self, documentAccessor, text, isError
  ):
    '''
    Send a message to add a status pane item
    @param documentAccessor
    @param text
    @param isError

    @type documentAccessor: com_silabs_ss_framework_configbase_api_core_client_accessors_IDocumentAccessor
    @type text: str
    @type isError
    : bool
    '''
    pass


  def clearStatusPane(self, documentAccessor
  ):
    '''
    Send a message to clear the status pane
    @param documentAccessor

    @type documentAccessor
    : com_silabs_ss_framework_configbase_api_core_client_accessors_IDocumentAccessor
    '''
    pass


  def copyProperties(self, sourceDocumentObject, targetDocumentObject):
    '''
    Send an event to the editor to request to copy the properties from source document object to 
    the target document object (open in the editor). This will cause the editor to be dirtied with the new values.
    @param sourceDocumentobject
    @param targetDocumentobject
    @throws ScriptException

    @type sourceDocumentobject: com_silabs_ss_framework_configbase_api_core_client_accessors_IDocumentobjectAccessor
    @type targetDocumentobject: com_silabs_ss_framework_configbase_api_core_client_accessors_IDocumentobjectAccessor
    '''
    pass


  def ensureModelsLoaded(self, partId):
    '''
    Ensures models for partId are loaded
    @param partId
    @throws ScriptException

    @type partId: str
    '''
    pass


  def processChanges(self, changes, _com_silabs_ss_framework_configbase_api_core_client_accessors_IDocumentObjectAccessor):
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


  def refreshResource(self, path
  ):
    '''
    Ensure the resource at path is refreshed in the workspace
    @param path

    @type path
    : str
    '''
    pass


  def removeEventHandler(self, handle):
    '''
    Remove an event handler (any kind of event handler)
    @param handle returned by:

    {@link #addEventHandler(int, IDocumentEventFilter, IDocumentEventCallback)}

    {@link #addMultipleEventHandler(int, IDocumentEventFilter, IDocumentMultipleEventCallback)}
    @throws ScriptException if no document is open

    @type handle: object
    '''
    pass


  def saveDocument(self, document):
    '''
    Save a document to its original location
    @param document an existing Document
    @throws ScriptException

    @type document: com_silabs_ss_framework_configbase_api_core_client_accessors_IDocumentAccessor
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


