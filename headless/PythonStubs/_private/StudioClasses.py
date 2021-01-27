#
#
#	These are stubs for Java API classes in Studio.
#
#
#	This file is a STUB that is used only to populate symbols for use by
#	Pydev under an editor.  Don't attempt to point to this module for running code! 
#

raise Exception("This script cannot run outside of Studio.  Use the 'Python for Studio' launch instead.")

class com_silabs_java_utils_InfoBlock(object):
  '''
  Class used for parsing blocks of lines that look like:
  key=value
  key=value2
  key2=value2
  Description that
  spans multiple lines.
   *
  Description can be retrieved either via "description()"
  If you want individual lines, you can use "looseLines()"
   *
  Created on May 17, 2013
  '''
  def keyCount(self, _str):
    '''
    Returns number of mappings for a given key.
    '''
    return int()


  def description(self):
    '''
    Returns description. Description is a concatenation of the loose lines
    separated with a space where a line otherwise breaks.
       *
       *
    @param 
    @returns str
    '''
    return str()


  def value(self, ):
    '''
    Returns index-th instance of value for a given key, it returns
    None if key is not mapped to anything, or number of maps is less
    than index.
       *
       *
    @param 
    @returns str

    @type : str
    '''
    return str()


  def value(self, , _int):
    '''
    Returns index-th instance of value for a given key, it returns
    None if key is not mapped to anything, or number of maps is less
    than index.
       *
       *
    @param 
    @returns str

    @type : str
    '''
    return str()


  def keys(self):
    '''
    Returns all the keys from the block.
       *
       *
    @param 
    @returns str[]
    '''
    return list()


  def looseLines(self):
    '''
    Returns the description as individual lines.
    '''
    return list()


  def readInfoBlock(self, _list):
    return com_silabs_java_utils_InfoBlock()


  def addKeyValue(self, , _str):
    '''
    Adds the key value to this info block value.
    Note that this is not a simple map.
    You can have multiple values assigned to a key,
    so you can add same key twice.
       *
       *
    @param 
    @returns void

    @type : str
    '''
    pass


  def addLooseLine(self, ):
    '''
    Adds a description line.
       *
       *
    @param 
    @returns void

    @type : str
    '''
    pass


class com_silabs_java_utils_InfoBlockFile(object):
  '''
  Info block file is a file of a following format:
   *
  ---------------------------
  # comment
  key = value
  key2 = value2
   *
  block1 {
  key = value
  key = value2
  key2 = value3
  Long free form
  description.
  }
   *
  block2 {
  ...
  }
   *
  anotherKey=value4
   *
  .
  .
  .
  -----------------------------
   *
  These are used by app framework and adapter packs.
   *
  Created on Aug 9, 2015
  '''
  def block(self, ):
    '''
    Returns a block for a given block key.
       *
       *
    @param 
    @returns InfoBlock

    @type : str
    '''
    return com_silabs_java_utils_InfoBlock()


  def createBlock(self, ):
    '''
    This method creates an empty block at a given key.
    If previous block with such key exists, it's blown away.
       *
       *
    @param 
    @returns InfoBlock

    @type : str
    '''
    return com_silabs_java_utils_InfoBlock()


  def globalValue(self, ):
    '''
    Returns a global value for a given key.
       *
       *
    @param 
    @returns str

    @type : str
    '''
    return str()


  def toString(self):
    return str()


  def blockKeys(self):
    '''
    Returns all the block keys.
       *
    @param 
    @returns str[]
    '''
    return list()


  def globalKeys(self):
    '''
    Returns all the global keys.
    @returns str[]
    '''
    return list()


  def looseLines(self):
    '''
    Returns the loose lines that are not in blocks or in key=value lines.
       *
       *
    @param 
    @returns str[]
    '''
    return list()


  def createEmpty(self):
    return com_silabs_java_utils_InfoBlockFile()


  def read(self, _java_io_File):
    return com_silabs_java_utils_InfoBlockFile()


  def read(self, _java_io_Reader):
    return com_silabs_java_utils_InfoBlockFile()


  def read(self, _java_net_URL):
    return com_silabs_java_utils_InfoBlockFile()


  def addLooseLine(self, ):
    '''
    Adds a loose line.
       *
       *
    @param 
    @returns void

    @type : str
    '''
    pass


  def clearKeyValue(self, key):
    '''
    Clear a key/value from the map.
    @param key
    @returns void
    @since 4.6

    @type key: str
    '''
    pass


  def putKeyValue(self, , _str):
    '''
    Adds the key/value to the map.
       *
    @param 
    @returns void

    @type : str
    '''
    pass


class com_silabs_java_utils_Pair(object):
  '''
  A pair of objects.
  @param 
  @param 
  '''
  first = object
  '''
  @ivar first
  '''

  def equals(self, _object):
    return bool()


  def hashCode(self):
    return int()


  def first(self):
    '''
    Utility method to access {@link #first} in streams
    @since 4.1
    '''
    return object()


  def second(self):
    '''
    Utility method to access {@link #second} in streams
    @since 4.1
    '''
    return object()


  def toString(self):
    return str()


  second = object
  '''
  @ivar second
  '''

class com_silabs_java_utils_Rgb(object):
  '''
  SWT has a nice RGB class, but it breaks all kind of layering problems, as
  using it requires dependency on SWT. We may not have that.
   *
  Created on Sep 15, 2014
  '''
  BLACK = com_silabs_java_utils_Rgb
  '''
  '''

  BLUE = com_silabs_java_utils_Rgb
  '''
  '''

  CYAN = com_silabs_java_utils_Rgb
  '''
  '''

  DARK_BLUE = com_silabs_java_utils_Rgb
  '''
  '''

  DARK_CYAN = com_silabs_java_utils_Rgb
  '''
  '''

  DARK_GRAY = com_silabs_java_utils_Rgb
  '''
  '''

  DARK_GREEN = com_silabs_java_utils_Rgb
  '''
  '''

  DARK_MAGENTA = com_silabs_java_utils_Rgb
  '''
  '''

  DARK_ORANGE = com_silabs_java_utils_Rgb
  '''
  '''

  DARK_RED = com_silabs_java_utils_Rgb
  '''
  '''

  DARK_YELLOW = com_silabs_java_utils_Rgb
  '''
  '''

  GRAY = com_silabs_java_utils_Rgb
  '''
  '''

  GREEN = com_silabs_java_utils_Rgb
  '''
  '''

  MAGENTA = com_silabs_java_utils_Rgb
  '''
  '''

  RED = com_silabs_java_utils_Rgb
  '''
  '''

  WHITE = com_silabs_java_utils_Rgb
  '''
  '''

  YELLOW = com_silabs_java_utils_Rgb
  '''
  '''

  def blue(self):
    '''
    Returns the blue component
    '''
    return int()


  def green(self):
    '''
    Returns the green component
    '''
    return int()


  def red(self):
    '''
    Returns the red component
    '''
    return int()


  def toString(self):
    return str()


class com_silabs_java_utils_enums_ISeverityHolder(object):
  '''
  Classes of this type contain severity.
  Created on Feb 11, 2016
  '''
  def severity(self):
    '''
    Returns the severity of this object.
    @returns Severity
    '''
    return com_silabs_java_utils_enums_Severity()


class com_silabs_java_utils_enums_Severity(java_lang_Enum):
  ERROR = com_silabs_java_utils_enums_Severity
  '''
  '''

  INFO = com_silabs_java_utils_enums_Severity
  '''
  '''

  NONE = com_silabs_java_utils_enums_Severity
  '''
  '''

  WARNING = com_silabs_java_utils_enums_Severity
  '''
  '''

  def severity(self):
    return com_silabs_java_utils_enums_Severity()


  def combinedSeverity(self, _list):
    return com_silabs_java_utils_enums_Severity()


  def valueOf(self, _str):
    return com_silabs_java_utils_enums_Severity()


  def values(self):
    return list()


class com_silabs_ss_framework_config_api_document_model_document_XMLDocumentObject(org_eclipse_emf_ecore_EObject):
  '''
  A representation of the model object 'XML Document object'.

   *

  This is the persisted record of a document object.  It has a flat list of property values.

   *

  The following features are supported:

  	{@link com.silabs.ss.framework.config.api.document.model.document.XMLDocumentobject#getId Id}

  	{@link com.silabs.ss.framework.config.api.document.model.document.XMLDocumentobject#getPropertyValue Property Value}

  	{@link com.silabs.ss.framework.config.api.document.model.document.XMLDocumentobject#getVersion Version}

   *
  @see com.silabs.ss.framework.config.api.document.model.document.DocumentPackage#getXMLDocumentobject()
  @model 
  '''
  def init(self):
    self.id = self.getId()

    self.version = self.getVersion()

    self.properties = self.getProperties()

    self.propertyValue = self.getPropertyValue()

  def createPropertyValue(self, propertyId, value):
    '''
    Factory for creating and adding new XMLPropertyValue objects.
    @see XMLPropertyValue
    @param propertyId
    @param value
    @type propertyId: str
    @type value: str
    @return property value
    '''
    return com_silabs_ss_framework_config_api_document_model_document_XMLPropertyValue()


  def getId(self):
    '''
    Returns the value of the 'Id' attribute.

    If the meaning of the 'Id' attribute isn't clear,
    there really should be more of a description here...

    @return the value of the 'Id' attribute.
    @see #setId(str)
    @see com.silabs.ss.framework.config.api.document.model.document.DocumentPackage#getXMLDocumentobject_Id()
    @model 
    '''
    return str()


  def getVersion(self):
    '''
    Returns the value of the 'Version' attribute.

    If the meaning of the 'Version' attribute isn't clear,
    there really should be more of a description here...

    @return the value of the 'Version' attribute.
    @see #setVersion(str)
    @see com.silabs.ss.framework.config.api.document.model.document.DocumentPackage#getXMLDocumentobject_Version()
    @model 
    '''
    return str()


  def getProperties(self):
    '''
    Return an unmodifiable list of XMLPropertyValue(s) for this XMLDocumentobject
    @return list
    '''
    return list()


  def removeProperty(self, index
  ):
    '''
    Remove a property by index
    @param index

    @type index
    : int
    '''
    pass


  def setId(self, value):
    '''
    Sets the value of the '{@link com.silabs.ss.framework.config.api.document.model.document.XMLDocumentobject#getId Id}' attribute.

    @param value the new value of the 'Id' attribute.
    @see #getId()

    @type value: str
    '''
    pass


  def setVersion(self, value):
    '''
    Sets the value of the '{@link com.silabs.ss.framework.config.api.document.model.document.XMLDocumentobject#getVersion Version}' attribute.

    @param value the new value of the 'Version' attribute.
    @see #getVersion()

    @type value: str
    '''
    pass


class com_silabs_ss_framework_config_api_document_model_document_XMLPropertyValue(org_eclipse_emf_ecore_EObject):
  '''
  A representation of the model object 'XML Property Value'.
  @extends Comparable

  *

  This is the persisted record of a property.  It records the value of a non-default property.

  *

  The following features are supported:

  	{@link com.silabs.ss.framework.config.api.document.model.document.XMLPropertyValue#getPropertyId Property Id}

  	{@link com.silabs.ss.framework.config.api.document.model.document.XMLPropertyValue#getValue Value}

  *
  @see com.silabs.ss.framework.config.api.document.model.document.DocumentPackage#getXMLPropertyValue()
  @model 
  '''
  def init(self):
    self.propertyId = self.getPropertyId()

    self.value = self.getValue()

  def getPropertyId(self):
    '''
    Returns the value of the 'Property Id' attribute.

    If the meaning of the 'Property Id' attribute isn't clear,
    there really should be more of a description here...

    @return the value of the 'Property Id' attribute.
    @see #setPropertyId(str)
    @see com.silabs.ss.framework.config.api.document.model.document.DocumentPackage#getXMLPropertyValue_PropertyId()
    @model 
    '''
    return str()


  def getValue(self):
    '''
    Returns the value of the 'Value' attribute.

    If the meaning of the 'Value' attribute isn't clear,
    there really should be more of a description here...

    @return the value of the 'Value' attribute.
    @see #setValue(str)
    @see com.silabs.ss.framework.config.api.document.model.document.DocumentPackage#getXMLPropertyValue_Value()
    @model 
    '''
    return str()


  def setPropertyId(self, value):
    '''
    Sets the value of the '{@link com.silabs.ss.framework.config.api.document.model.document.XMLPropertyValue#getPropertyId Property Id}' attribute.

    @param value the new value of the 'Property Id' attribute.
    @see #getPropertyId()

    @type value: str
    '''
    pass


  def setValue(self, value):
    '''
    Sets the value of the '{@link com.silabs.ss.framework.config.api.document.model.document.XMLPropertyValue#getValue Value}' attribute.

    @param value the new value of the 'Value' attribute.
    @see #getValue()

    @type value: str
    '''
    pass


class com_silabs_ss_framework_config_api_provision_accessor_ICommandAccessor(object):
  '''
  This provides access to a command in the command interface model.
   *
  '''
  def init(self):
    self.name = self.getName()

    self.args = self.getArgs()

    self.responses = self.getResponses()

  def getName(self):
    '''
    @return the name of the command
    '''
    return str()


  def getArgs(self):
    '''
    @return the args of this command
    '''
    return list()


  def getResponses(self):
    '''
    @return the properties of the response of this command
    '''
    return list()


class com_silabs_ss_framework_config_api_provision_accessor_ICommandInterfaceAccessor(object):
  '''
  This provides access to a command interface model.
   *
  '''
  def getPath(self, _str):
    '''
    @return the path to the executable providing the command interface for a given os identifier
    '''
    return str()


  def getCommandList(self, _str):
    '''
    @return an ordered list of commands by id
    '''
    return list()


class com_silabs_ss_framework_config_api_provision_accessor_IElementAccessor(object):
  '''
  An element in a hex image. It can be a struct or a field
  '''
  def init(self):
    self.hexImage = self.getHexImage()

    self.parent = self.getParent()

    self.address = self.getAddress()

    self.length = self.getLength()

    self.offset = self.getOffset()

    self.name = self.getName()

  def getHexImage(self):
    '''
    @return the hex image model
    '''
    return com_silabs_ss_framework_config_api_provision_accessor_IHexImageAccessor()


  def getParent(self):
    '''
    @return the parent struct of this element or None if its parent is the hex image
    '''
    return com_silabs_ss_framework_config_api_provision_accessor_IStructAccessor()


  def getAddress(self):
    '''
    @return the global address of this field
    '''
    return int()


  def getLength(self):
    '''
    @return the length of this field (in bits if bit field, or bytes if byte field)
    '''
    return int()


  def getOffset(self):
    '''
    @return the offset of this struct in bytes
    '''
    return int()


  def getName(self):
    '''
    @return the complete name (e.g., foo.bar.mystruct)
    '''
    return str()


  def setAddress(self, address):
    '''
    Set the global address of this field
    @param address int

    @type address: int
    '''
    pass


  def setOffset(self, offset):
    '''
    Set the offset of this struct
    @param offset int bytes

    @type offset: int
    '''
    pass


class com_silabs_ss_framework_config_api_provision_accessor_IHexImageAccessor(object):
  '''
  This provides access to the hex image model.
   *
  '''
  def init(self):
    self.provision = self.getProvision()

    self.baseImagePath = self.getBaseImagePath()

    self.allPropertyIds = self.getAllPropertyIds()

    self.structs = self.getStructs()

  def isBigEndian(self):
    '''
    @return True if big endian, False if little endian
    '''
    return bool()


  def getProvision(self):
    '''
    @return the provision model
    '''
    return com_silabs_ss_framework_config_api_provision_accessor_IProvisionAccessor()


  def getBaseImagePath(self):
    '''
    @return the OS specific path string to the base image file
    '''
    return str()


  def getAllPropertyIds(self):
    '''
    @return all property ids associated with this hex image model
    '''
    return list()


  def getStructs(self):
    '''
    @return the structs in this image
    '''
    return list()


class com_silabs_ss_framework_config_api_provision_accessor_INamedListOfPropertiesAccessor(object):
  '''
  This provides access to an arg or response of a command in the command interface model.
   *
  '''
  def init(self):
    self.name = self.getName()

    self.properties = self.getProperties()

  def getName(self):
    '''
    @return the name of the arg or response
    '''
    return str()


  def getProperties(self):
    '''
    @return the properties of the arg or response
    '''
    return list()


class com_silabs_ss_framework_config_api_provision_accessor_IPropertyAccessor(object):
  '''
  This provides access to a property of an arg or response of a command in the command interface model.
   *
  '''
  def init(self):
    self.id = self.getId()

    self.value = self.getValue()

  def getId(self):
    '''
    @return the id of the property
    '''
    return str()


  def getValue(self):
    '''
    @return the static value to be used instead of a property
    '''
    return str()


class com_silabs_ss_framework_config_api_provision_accessor_IProvisionAccessor(object):
  '''
  This provides access to the provisioning model.
   *
  '''
  def init(self):
    self.commandInterface = self.getCommandInterface()

    self.hexImage = self.getHexImage()

    self.xMLSchema = self.getXMLSchema()

    self.id = self.getId()

  def getCommandInterface(self):
    '''
    @return the command interface model associated with this provision model or None
    '''
    return com_silabs_ss_framework_config_api_provision_accessor_ICommandInterfaceAccessor()


  def getHexImage(self):
    '''
    @return the hex image model associated with this provision model or None
    '''
    return com_silabs_ss_framework_config_api_provision_accessor_IHexImageAccessor()


  def getXMLSchema(self):
    '''
    @return the xml schema model associated with this provision model or None
    '''
    return com_silabs_ss_framework_config_api_provision_accessor_IXMLSchemaAccessor()


  def getId(self):
    '''
    @return the unique id of this provision model
    '''
    return str()


class com_silabs_ss_framework_config_api_provision_accessor_IStructAccessor(com_silabs_ss_framework_config_api_provision_accessor_IElementAccessor):
  '''
  This provides access to a struct in a hex image model.
   *
  '''
  def init(self):
    self.children = self.getChildren()

  def isBigEndian(self):
    '''
    @return True if big endian, False if little endian (inherited from parent if not specified)
    '''
    return bool()


  def getHexImage(self):
    '''
    @return the hex image model
    '''
    return com_silabs_ss_framework_config_api_provision_accessor_IHexImageAccessor()


  def getParent(self):
    '''
    @return the parent struct of this element or None if its parent is the hex image
    '''
    return com_silabs_ss_framework_config_api_provision_accessor_IStructAccessor()


  def getAddress(self):
    '''
    @return the global address of this field
    '''
    return int()


  def getLength(self):
    '''
    @return the length of this field (in bits if bit field, or bytes if byte field)
    '''
    return int()


  def getOffset(self):
    '''
    @return the offset of this struct in bytes
    '''
    return int()


  def getName(self):
    '''
    @return the complete name (e.g., foo.bar.mystruct)
    '''
    return str()


  def getChildren(self):
    '''
    @return the children of this struct (each child may be IStructAccessor or IFieldAccessor)
    '''
    return list()


  def setAddress(self, address):
    '''
    Set the global address of this field
    @param address int

    @type address: int
    '''
    pass


  def setOffset(self, offset):
    '''
    Set the offset of this struct
    @param offset int bytes

    @type offset: int
    '''
    pass


  def setLength(self, length
  ):
    '''
    Set the calculated length of this struct
    @param length

    @type length
    : int
    '''
    pass


class com_silabs_ss_framework_config_api_provision_accessor_IXMLAttributeAccessor(object):
  '''
  This provides access to an XML attribute in an XML schema model.
   *
  '''
  def init(self):
    self.namespace = self.getNamespace()

    self.name = self.getName()

    self.propertyId = self.getPropertyId()

    self.staticValue = self.getStaticValue()

  def formatIntAsHex(self):
    '''
    @return whether to format int property as hex instead of decimal
    '''
    return bool()


  def useEnumIds(self):
    '''
    @return whether to use ids for enum properties instead of values
    '''
    return bool()


  def getNamespace(self):
    '''
    @return namespace as pair of namespace URIs and qualified name - or None
    '''
    return com_silabs_java_utils_Pair()


  def getName(self):
    '''
    @return the name of this element
    '''
    return str()


  def getPropertyId(self):
    '''
    @return the property id of this element or None
    '''
    return str()


  def getStaticValue(self):
    '''
    @return the static value to use for this element (if set, will prefer over property id) or None
    '''
    return str()


class com_silabs_ss_framework_config_api_provision_accessor_IXMLElementAccessor(object):
  '''
  This provides access to an XML element in an XML schema model.
   *
  '''
  def init(self):
    self.namespace = self.getNamespace()

    self.id = self.getId()

    self.name = self.getName()

    self.propertyId = self.getPropertyId()

    self.staticValue = self.getStaticValue()

    self.attributes = self.getAttributes()

    self.elements = self.getElements()

  def formatIntAsHex(self):
    '''
    @return whether to format int property as hex instead of decimal
    '''
    return bool()


  def isIncluded(self):
    '''
    @return whether this element should be included in the output
    '''
    return bool()


  def useEnumIds(self):
    '''
    @return whether to use ids for enum properties instead of values
    '''
    return bool()


  def getNamespace(self):
    '''
    @return namespace as pair of namespace URIs and qualified name - or None
    '''
    return com_silabs_java_utils_Pair()


  def getId(self):
    '''
    @return the optional element id or None
    '''
    return str()


  def getName(self):
    '''
    @return the name of this element
    '''
    return str()


  def getPropertyId(self):
    '''
    @return the property id of this element or None
    '''
    return str()


  def getStaticValue(self):
    '''
    @return the static value to use for this element (if set, will prefer over property id) or None
    '''
    return str()


  def getAttributes(self):
    '''
    @return the attributes of this element
    '''
    return list()


  def getElements(self):
    '''
    @return the sub-elements of this element
    '''
    return list()


  def setIncluded(self, included
  ):
    '''
    Set whether this element should be included in the output
    @param included

    @type included
    : bool
    '''
    pass


class com_silabs_ss_framework_config_api_provision_accessor_IXMLSchemaAccessor(object):
  '''
  This provides access to an XML schema model.
   *
  '''
  def init(self):
    self.rootElement = self.getRootElement()

  def findXMLElement(self, id):
    '''
    Find an xml element by id
    @param id
    @type id: str
    @return the element or None
    '''
    return com_silabs_ss_framework_config_api_provision_accessor_IXMLElementAccessor()


  def getRootElement(self):
    '''
    @return the root element in this schema
    '''
    return com_silabs_ss_framework_config_api_provision_accessor_IXMLElementAccessor()


class com_silabs_ss_framework_config_api_view_accessor_IContainerAccessor(com_silabs_ss_framework_config_api_view_accessor_IViewElementAccessor):
  '''
  This provides access to a container in a view layout model.
   *
  '''
  def init(self):
    self.labelText = self.getLabelText()

    self.children = self.getChildren()

  def isBordered(self):
    '''
    @return whether it is bordered
    '''
    return bool()


  def isMargins(self):
    '''
    @return whether it has margins
    '''
    return bool()


  def isEnabled(self):
    '''
    @return whether it is enabled
    '''
    return bool()


  def isIncluded(self):
    '''
    @return whether it is included in parent layout
    '''
    return bool()


  def isVisible(self):
    '''
    @return whether it is visible
    '''
    return bool()


  def getDescriptionHTML(self):
    '''
    @return the description accessor
    '''
    return com_silabs_ss_framework_config_api_view_accessor_IDescriptionAccessor()


  def getAlignment(self):
    '''
    @return the alignment of this view element
    '''
    return com_silabs_ss_framework_config_api_view_accessor_IContainerAccessor.Alignment()


  def getSpanCols(self):
    '''
    @return the number of columns to span in parent
    '''
    return int()


  def getSpanRows(self):
    '''
    @return the number of rows to span in parent
    '''
    return int()


  def getLabelText(self):
    '''
    @return the optional label text
    '''
    return str()


  def getId(self):
    '''
    @return the id
    '''
    return str()


  def getTooltip(self):
    '''
    @return the tooltip
    '''
    return str()


  def getChildren(self):
    '''
    @return the child view elements
    '''
    return list()


class com_silabs_ss_framework_config_api_view_accessor_IDescriptionAccessor(object):
  '''
  This provides access to a view element's description element.
   *
  '''
  def init(self):
    self.anchor = self.getAnchor()

    self.path = self.getPath()

    self.search = self.getSearch()

    self.text = self.getText()

  def getAnchor(self):
    '''
    @return the optional anchor into an html document
    '''
    return str()


  def getPath(self):
    '''
    @return the optional path to an html document
    '''
    return str()


  def getSearch(self):
    '''
    @return the optional search string for an html document
    '''
    return str()


  def getText(self):
    '''
    @return the html text of a description (used only if path is not set)
    '''
    return str()


class com_silabs_ss_framework_config_api_view_accessor_IEditorAccessor(com_silabs_ss_framework_config_api_view_accessor_IViewElementAccessor):
  '''
  This provides access to an editor in a view layout model.
   *
  '''
  def init(self):
    self.altType = self.getAltType()

    self.minWidth = self.getMinWidth()

    self.selectedIndex = self.getSelectedIndex()

    self.visibleRows = self.getVisibleRows()

    self.widthHint = self.getWidthHint()

    self.labelText = self.getLabelText()

    self.propertyId = self.getPropertyId()

    self.valueLabels = self.getValueLabels()

  WIDTH_HINT_DEFAULT = int
  '''
  '''

  class AltType(java_lang_Enum):
    CHECKBOX = com_silabs_ss_framework_config_api_view_accessor_IEditorAccessor.AltType
    '''
    '''

    CHECKBOX_TOP_LABEL = com_silabs_ss_framework_config_api_view_accessor_IEditorAccessor.AltType
    '''
    '''

    COMBO = com_silabs_ss_framework_config_api_view_accessor_IEditorAccessor.AltType
    '''
    '''

    HEX_INT = com_silabs_ss_framework_config_api_view_accessor_IEditorAccessor.AltType
    '''
    '''

    H_RADIOS = com_silabs_ss_framework_config_api_view_accessor_IEditorAccessor.AltType
    '''
    '''

    LIST = com_silabs_ss_framework_config_api_view_accessor_IEditorAccessor.AltType
    '''
    '''

    MULTI_LINE_TEXT = com_silabs_ss_framework_config_api_view_accessor_IEditorAccessor.AltType
    '''
    '''

    NONE = com_silabs_ss_framework_config_api_view_accessor_IEditorAccessor.AltType
    '''
    '''

    V_RADIOS = com_silabs_ss_framework_config_api_view_accessor_IEditorAccessor.AltType
    '''
    '''

    def valueOf(self, _str):
      return com_silabs_ss_framework_config_api_view_accessor_IEditorAccessor.AltType()


    def values(self):
      return list()


  def canAddListItems(self):
    '''
    @return whether to show UI to add list items
    Only applies for string list property editors
    '''
    return bool()


  def canRemoveListItems(self):
    '''
    @return whether to remove UI to add list items
    Only applies for string list property editors
    '''
    return bool()


  def canReorderListItems(self):
    '''
    @return whether to reorder UI to add list items
    Only applies for string list property editors
    '''
    return bool()


  def isEnabled(self):
    '''
    @return whether it is enabled
    '''
    return bool()


  def isIncluded(self):
    '''
    @return whether it is included in parent layout
    '''
    return bool()


  def isVisible(self):
    '''
    @return whether it is visible
    '''
    return bool()


  def getDescriptionHTML(self):
    '''
    @return the description accessor
    '''
    return com_silabs_ss_framework_config_api_view_accessor_IDescriptionAccessor()


  def getAltType(self):
    '''
    @return the alternate editor type
    '''
    return com_silabs_ss_framework_config_api_view_accessor_IEditorAccessor.AltType()


  def getAlignment(self):
    '''
    @return the alignment of this view element
    '''
    return com_silabs_ss_framework_config_api_view_accessor_IEditorAccessor.Alignment()


  def getMinWidth(self):
    '''
    @return the minimum width
    '''
    return int()


  def getSelectedIndex(self):
    '''
    @return the selected index if this is a selection change enabled editor (only string list editor for now) or -1 for no selection
    '''
    return int()


  def getVisibleRows(self):
    '''
    @return the number of rows that should be visible
    Only applies for multi-row property editors
    '''
    return int()


  def getWidthHint(self):
    '''
    @return the desired width
    '''
    return int()


  def getSpanCols(self):
    '''
    @return the number of columns to span in parent
    '''
    return int()


  def getSpanRows(self):
    '''
    @return the number of rows to span in parent
    '''
    return int()


  def getLabelText(self):
    '''
    @return the label text
    '''
    return str()


  def getPropertyId(self):
    '''
    @return the property id
    '''
    return str()


  def getId(self):
    '''
    @return the id
    '''
    return str()


  def getTooltip(self):
    '''
    @return the tooltip
    '''
    return str()


  def getValueLabels(self):
    '''
    @return the id to value labels map

    Only applies for enums and for booleans with alt type (radios, list, or combo)

    For booleans, the ids are "False" and "True"
    '''
    return java_util_Map()


class com_silabs_ss_framework_config_api_view_accessor_IViewElementAccessor(object):
  '''
  This provides access to a view element in a view layout model.
   *
  '''
  def init(self):
    self.descriptionHTML = self.getDescriptionHTML()

    self.alignment = self.getAlignment()

    self.spanCols = self.getSpanCols()

    self.spanRows = self.getSpanRows()

    self.id = self.getId()

    self.tooltip = self.getTooltip()

  class Alignment(java_lang_Enum):
    CENTER = com_silabs_ss_framework_config_api_view_accessor_IViewElementAccessor.Alignment
    '''
    '''

    FILL = com_silabs_ss_framework_config_api_view_accessor_IViewElementAccessor.Alignment
    '''
    '''

    LEFT = com_silabs_ss_framework_config_api_view_accessor_IViewElementAccessor.Alignment
    '''
    '''

    RIGHT = com_silabs_ss_framework_config_api_view_accessor_IViewElementAccessor.Alignment
    '''
    '''

    def valueOf(self, _str):
      return com_silabs_ss_framework_config_api_view_accessor_IViewElementAccessor.Alignment()


    def values(self):
      return list()


  def isEnabled(self):
    '''
    @return whether it is enabled
    '''
    return bool()


  def isIncluded(self):
    '''
    @return whether it is included in parent layout
    '''
    return bool()


  def isVisible(self):
    '''
    @return whether it is visible
    '''
    return bool()


  def getDescriptionHTML(self):
    '''
    @return the description accessor
    '''
    return com_silabs_ss_framework_config_api_view_accessor_IDescriptionAccessor()


  def getAlignment(self):
    '''
    @return the alignment of this view element
    '''
    return com_silabs_ss_framework_config_api_view_accessor_IViewElementAccessor.Alignment()


  def getSpanCols(self):
    '''
    @return the number of columns to span in parent
    '''
    return int()


  def getSpanRows(self):
    '''
    @return the number of rows to span in parent
    '''
    return int()


  def getId(self):
    '''
    @return the id
    '''
    return str()


  def getTooltip(self):
    '''
    @return the tooltip
    '''
    return str()


class com_silabs_ss_framework_config_api_view_accessor_IViewLayoutAccessor(object):
  '''
  This provides access to the view layout model.
   *
  '''
  def init(self):
    self.id = self.getId()

    self.containers = self.getContainers()

  def findEditor(self, propertyId):
    '''
    @param propertyId
    @type propertyId: str
    @return 
    '''
    return com_silabs_ss_framework_config_api_view_accessor_IEditorAccessor()


  def findViewElement(self, id):
    '''
    @param id
    @type id: str
    @return the first view element found with the id
    '''
    return com_silabs_ss_framework_config_api_view_accessor_IViewElementAccessor()


  def getId(self):
    '''
    @return the unique id of this provision model
    '''
    return str()


  def getContainers(self):
    '''
    @return the containers
    '''
    return list()


class com_silabs_ss_framework_configbase_api_core_client_ICommandReference(object):
  '''
  This is a reference to a command on an {@link IDocumentobjectAccessor}.

  A command reference has a command id.
   *
  '''
  def init(self):
    self.object = self.getObject()

    self.commandId = self.getCommandId()

  def getObject(self):
    '''
    @return the object owning the property
    '''
    return com_silabs_ss_framework_configbase_api_core_client_accessors_IDocumentObjectAccessor()


  def getCommandId(self):
    '''
    @return the command id
    '''
    return str()


class com_silabs_ss_framework_configbase_api_core_client_IDocumentChange(object):
  '''
  This represents a change proposed to the document model from a client
  that only has IDocumentobjectAccessor visibility (e.g. from script).
   *
  '''
  def toString(self):
    '''
    @return string format for debugging
    '''
    return str()


  def dispose(self):
    '''
    This change has been disposed
    '''
    pass


class com_silabs_ss_framework_configbase_api_core_client_IDocumentEventCallback(object):
  '''
  This interface denotes the callback expected by configurators.
  Note that some script functions may automatically map 
  anonymous functions or lambdas to this format; thus, your
  script does not necessarily have to explicitly implement this interface.
  '''
  def run(self, event, object):
    '''
    Called from configurators in response to an earlier event.
    @param event event code
    @param object affected object (see {@link IDocumentEventConstants})
    @type event: int
    @type object: object
    @return list of changes to make, or None
    '''
    return list()


class com_silabs_ss_framework_configbase_api_core_client_IDocumentEventFilter(com_silabs_ss_platform_api_rcp_core_ITypedFilter):
  '''
  This describes a filter on events generated during document changes
  which influence when clients (e.g. scripts) may be scheduled to operate
  on the model.
   *
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


class com_silabs_ss_framework_configbase_api_core_client_IDocumentMultipleEventCallback(object):
  '''
  This interface denotes the callback type expected by 
  the {@link IHalConfigScriptModule#addMultipleEventHandler(int, IDocumentEventFilter, com.silabs.ide.halconf.core.scripting.IDocumentMultipleEventCallback)}
  API.  

  Note that some script functions may automatically map 
  anonymous functions or lambdas to this format; thus, your
  script does not necessarily have to explicitly implement this interface.
  '''
  class EventInfo(object):
    event = int
    '''
    @ivar event
    '''

    object = object
    '''
    @ivar object
    '''

  def run(self, eventInfos):
    '''
    Called from configurators in response to a series of earlier events.
    @param eventInfos each event that was triggered
    @type eventInfos: list
    @return list of changes to make, or None
    '''
    return list()


class com_silabs_ss_framework_configbase_api_core_client_IProblemChange(com_silabs_ss_framework_configbase_api_core_client_IDocumentChange):
  '''
  *
  '''
  def init(self):
    self.quickFixProcessor = self.getQuickFixProcessor()

    self.severity = self.getSeverity()

    self.message = self.getMessage()

    self.problemSites = self.getProblemSites()

  ERROR = int
  '''
  '''

  INFO = int
  '''
  '''

  WARNING = int
  '''
  '''

  def getQuickFixProcessor(self):
    '''
    If set, a handler for generating quick fixes for the problem
    '''
    return com_silabs_ss_framework_configbase_api_core_client_changes_ProblemChange_IQuickFixCallback()


  def getSeverity(self):
    '''
    Severity code
    @see ERROR
    @see WARNING
    @see INFO
    '''
    return int()


  def toString(self):
    '''
    @return string format for debugging
    '''
    return str()


  def getMessage(self):
    '''
    Human-readable message
    '''
    return str()


  def getProblemSites(self):
    '''
    The offending object or property -- never None
    '''
    return list()


  def dispose(self):
    '''
    This change has been disposed
    '''
    pass


  def setMessage(self, message):
    '''
    Human-readable message
    @param message text of message

    @type message: str
    '''
    pass


  def setQuickFixProcessor(self, quickFixProcessor):
    '''
    If set, a handler for generating quick fixes for the problem
    @param quickFixProcessor the callback invoked to supply fixes

    @type quickFixProcessor: com_silabs_ss_framework_configbase_api_core_client_changes_ProblemChange_IQuickFixCallback
    '''
    pass


  def setSeverity(self, severity):
    '''
    Severity code
    @param severity one of ERROR, WARNING, or INFO
    @see ERROR
    @see WARNING
    @see INFO

    @type severity: int
    '''
    pass


class com_silabs_ss_framework_configbase_api_core_client_IPropertyReference(com_silabs_ss_framework_configbase_api_core_client_accessors_IProblemSiteAccessor):
  '''
  This is a reference to a property on an {@link IDocumentobjectAccessor}.

  A property has a current value accessible from {@link #get()}.

  A property also has default value ({@link #getDefaultValue()}) which may be
  tested with {@link #isDefault()}.

  If a property's type is an enum, the {@link #getEnumValues()} returns the
  list of legal values, and {@link #getEnumIndex()} tells the 0-based
  index of the current value.

  If a property is a ranged integer, the {@link #getMinimumValue()} and
  {@link #getMaximumValue()} methods return the inclusive minimum and
  maximum allowed for the value -- or None if no such limit is imposed.
   *
  '''
  def init(self):
    self.object = self.getObject()

    self.enumIndex = self.getEnumIndex()

    self.maximumValue = self.getMaximumValue()

    self.minimumValue = self.getMinimumValue()

    self.defaultValue = self.getDefaultValue()

    self.id = self.getId()

    self.label = self.getLabel()

    self.propertyId = self.getPropertyId()

    self.enumIds = self.getEnumIds()

    self.enumIntValues = self.getEnumIntValues()

    self.enumValues = self.getEnumValues()

  def equals(self, obj):
    '''
    Test equality on the object name and property name
    @param obj other property
    @see object#equals(object)

    @type obj: object
    '''
    return bool()


  def isDefault(self):
    '''
    Tell whether the property's value is default
    @return 
    '''
    return bool()


  def isHidden(self):
    '''
    Tell whether the property is hidden
    @return 
    '''
    return bool()


  def isReadOnly(self):
    '''
    Tell whether the property is read only
    @return 
    '''
    return bool()


  def isTransient(self):
    '''
    Tell whether the property is transient
    @return 
    '''
    return bool()


  def getObject(self):
    '''
    @return the object owning the property
    '''
    return com_silabs_ss_framework_configbase_api_core_client_accessors_IDocumentObjectAccessor()


  def hashCode(self):
    '''
    Hash on the object name and property name
    @see object#hashCode()
    '''
    return int()


  def getEnumIndex(self):
    '''
    For enum properties, fetch the index of the current value
    @return index of current value, -1 if value is not valid, or None for non-enum property
    '''
    return int()


  def getMaximumValue(self):
    '''
    For ranged properties, fetch the legal maximum value
    @return maximum allowed value, or None if no maximum is imposed
    '''
    return int()


  def getMinimumValue(self):
    '''
    For ranged properties, fetch the legal minimum value
    @return minimum allowed value, or None if no minimum is imposed
    '''
    return int()


  def get(self):
    '''
    Get the current value
    @return value
    '''
    return object()


  def getDefaultValue(self):
    '''
    Get the default value of the property
    @return 
    '''
    return object()


  def getId(self):
    '''
    Get the device-wide identifier for the property
    @see IDeviceAccessor#findPropertyReferenceById()
    '''
    return str()


  def getLabel(self):
    '''
    Get the label of the property
    @return 
    '''
    return str()


  def getPropertyId(self):
    '''
    @return the propertyId
    '''
    return str()


  def getEnumIds(self):
    '''
    For enum properties, fetch the list of ids
    @return ids, or None for non-enums
    '''
    return list()


  def getEnumIntValues(self):
    '''
    For enum properties, fetch the list of int values
    @return values, or None for non-enums
    '''
    return list()


  def getEnumValues(self):
    '''
    For enum properties, fetch the allowed values (or ids)
    @return values, or None for non-enums
    @deprecated 
    @see IPropertyReference#getEnumIds()
    @see IPropertyReference#getEnumIntValues()
    '''
    return list()


  def getProblems(self):
    '''
    Get the problems currently published on the receiver.
    @return unmodifiable list
    '''
    return list()


class com_silabs_ss_framework_configbase_api_core_client_IQuickFix(object):
  '''
  The interface to a quick fix associated with a problem.
   *
  '''
  def init(self):
    self.propertyReference = self.getPropertyReference()

    self.description = self.getDescription()

    self.changes = self.getChanges()

  def getPropertyReference(self):
    '''
    The offending property
    @return property
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IPropertyReference()


  def getDescription(self):
    '''
    Human-readable description of the solution
    @return description
    '''
    return str()


  def getChanges(self):
    '''
    Changes to enact the fix
    @return non-None list of changes
    '''
    return list()


  def setChanges(self, changes):
    '''
    Changes to enact the fix
    @param changes non-None list of changes

    @type changes: list
    '''
    pass


  def setDescription(self, description):
    '''
    Human-readable description of the solution
    @param description new description

    @type description: str
    '''
    pass


  def setPropertyReference(self, ref):
    '''
    The offending property
    @param ref new property reference

    @type ref: com_silabs_ss_framework_configbase_api_core_client_IPropertyReference
    '''
    pass


class com_silabs_ss_framework_configbase_api_core_client_IResponseReference(object):
  '''
  This is a reference to a command on an {@link IDocumentobjectAccessor}.

  A command reference has a command id.
   *
  '''
  def init(self):
    self.object = self.getObject()

    self.response = self.getResponse()

    self.questionId = self.getQuestionId()

  def getObject(self):
    '''
    @return the object owning the property
    '''
    return com_silabs_ss_framework_configbase_api_core_client_accessors_IDocumentObjectAccessor()


  def getResponse(self):
    '''
    @return the response
    '''
    return object()


  def getQuestionId(self):
    '''
    @return the question id
    '''
    return str()


class com_silabs_ss_framework_configbase_api_core_client_accessors_IDocumentAccessor(object):
  '''
  This provides access to the a document.

  An document contains document objects.
  '''
  def init(self):
    self.name = self.getName()

    self.path = self.getPath()

    self.documentObjects = self.getDocumentObjects()

  def getName(self):
    '''
    @return the name of the document
    '''
    return str()


  def getPath(self):
    '''
    Get the document's location.  This serves as the identity of the document
    independently of its contents, e.g. for use by scripting and source generation.
    @return absolute location or None
    '''
    return str()


  def getDocumentObjects(self):
    '''
    @return a list of document objects in this document
    '''
    return list()


class com_silabs_ss_framework_configbase_api_core_client_accessors_IDocumentObjectAccessor(com_silabs_ss_framework_configbase_api_core_client_accessors_IProblemSiteAccessor):
  '''
  This provides access to the lowest level objects in a document.

  An object contains the properties that represent the configured state.
   *
  '''
  def init(self):
    self.document = self.getDocument()

    self.id = self.getId()

    self.name = self.getName()

    self.propertyIds = self.getPropertyIds()

  def createCommandReference(self, commandId):
    '''
    Create a command reference for a command id
    @param commandId
    @type commandId: str
    @return a command reference
    '''
    return com_silabs_ss_framework_configbase_api_core_client_ICommandReference()


  def getPropertyReference(self, propertyId):
    '''
    Get a reference to the property
    @param propertyId
    @type propertyId: str
    @return reference or None for undefined property ID
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IPropertyReference()


  def ref(self, propertyId):
    '''
    Get a reference to the property (this is a convenience method for script, fully equivalent to {@link #getPropertyReference(str)})
    @param propertyId
    @type propertyId: str
    @return reference or None for undefined property ID
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IPropertyReference()


  def createResponseReference(self, questionId, response):
    '''
    Create a response reference for a question id
    @param questionId
    @param response
    @type questionId: str
    @type response: object
    @return a response reference
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IResponseReference()


  def getDocument(self):
    '''
    Get the document object's document
    @return the document that this object is part of
    '''
    return com_silabs_ss_framework_configbase_api_core_client_accessors_IDocumentAccessor()


  def getProperty(self, propertyId):
    '''
    Get the value of a property
    @param propertyId
    @type propertyId: str
    @return value or None for undefined property ID
    '''
    return object()


  def getId(self):
    '''
    the unique id of this object in the device
    '''
    return str()


  def getName(self):
    '''
    instance name of this object  -- e.g. TIMER_1
    '''
    return str()


  def getPropertyIds(self):
    '''
    Get all the defined properties
    @return non-None list of property IDs
    '''
    return list()


  def getProblems(self):
    '''
    Get the problems currently published on the receiver.
    @return unmodifiable list
    '''
    return list()


class com_silabs_ss_framework_configbase_api_core_client_accessors_IHexImageFileAccessor(object):
  '''
  The interface to an intel hex file in memory
  '''
  def init(self):
    self.numSections = self.getNumSections()

    self.contents = self.getContents()

  def getBytes(self, sectionIndex):
    '''
    @param sectionIndex
    @type sectionIndex: int
    @return the byte array of the section at sectionIndex
    '''
    return array.array()


  def getAddress(self, sectionIndex):
    '''
    @param sectionIndex
    @type sectionIndex: int
    @return the 16 bit address of the section at sectionIndex
    '''
    return int()


  def getNumSections(self):
    '''
    @return the number of contiguous sections in this image
    '''
    return int()


  def getContents(self):
    '''
    @return the contents of the hex image file
    '''
    return str()


  def addSection(self, address, bytes):
    '''
    Add a section to the hex image file
    @param address
    @param bytes
    @throws IllegalArgumentException if section intersects an existing section

    @type address: int
    @type bytes: array.array
    '''
    pass


class com_silabs_ss_framework_configbase_api_core_client_accessors_IProblemAccessor(object):
  '''
  This interface wraps a problem that is currently attached to the model.
   *
  '''
  def init(self):
    self.problemSite = self.getProblemSite()

    self.severity = self.getSeverity()

    self.message = self.getMessage()

  ERROR = int
  '''
  '''

  INFO = int
  '''
  '''

  WARNING = int
  '''
  '''

  def getProblemSite(self):
    '''
    The offending object or property -- never None
    '''
    return com_silabs_ss_framework_configbase_api_core_client_accessors_IProblemSiteAccessor()


  def getSeverity(self):
    '''
    Severity code
    @see ERROR
    @see WARNING
    @see INFO
    '''
    return int()


  def getMessage(self):
    '''
    Human-readable message
    '''
    return str()


class com_silabs_ss_framework_configbase_api_core_client_accessors_IProblemSiteAccessor(object):
  '''
  This interface denotes an object that can have problems associated
  with it.
   *
  '''
  def init(self):
    self.problems = self.getProblems()

  def getProblems(self):
    '''
    Get the problems currently published on the receiver.
    @return unmodifiable list
    '''
    return list()


class com_silabs_ss_framework_configbase_api_core_client_changes_ProblemChange_IQuickFixCallback(object):
  def generateQuickFixes(self, _com_silabs_ss_framework_configbase_api_core_client_IProblemChange):
    return list()


class com_silabs_ss_framework_hwconfig_api_core_client_IPowerDomain(object):
  '''
  Clients use this interface to pass information to the HalConfigurator
  about calculated power model information.
   *
  '''
  def init(self):
    self.currentIn = self.getCurrentIn()

    self.currentOut = self.getCurrentOut()

    self.voltageIn = self.getVoltageIn()

    self.voltageOut = self.getVoltageOut()

    self.id = self.getId()

    self.name = self.getName()

    self.propertyReferences = self.getPropertyReferences()

    self.subdomains = self.getSubdomains()

  def getCurrentIn(self):
    return float()


  def getCurrentOut(self):
    return float()


  def getVoltageIn(self):
    return float()


  def getVoltageOut(self):
    return float()


  def getId(self):
    '''
    unique id for generated object
    '''
    return int()


  def getName(self):
    return str()


  def getPropertyReferences(self):
    return list()


  def getSubdomains(self):
    return list()


  def setCurrentIn(self, _float):
    pass


  def setCurrentOut(self, _float):
    pass


  def setId(self, _int):
    pass


  def setName(self, _str):
    pass


  def setPropertyReferences(self, _list):
    pass


  def setSubdomains(self, _list):
    pass


  def setVoltageIn(self, _float):
    pass


  def setVoltageOut(self, _float):
    pass


class com_silabs_ss_framework_hwconfig_api_core_client_IPowerModelChange(com_silabs_ss_framework_configbase_api_core_client_IDocumentChange):
  '''
  *
  '''
  def init(self):
    self.domain = self.getDomain()

    self.mode = self.getMode()

  def getDomain(self):
    return com_silabs_ss_framework_hwconfig_api_core_client_IPowerDomain()


  def getMode(self):
    return com_silabs_ss_framework_hwconfig_api_core_client_accessors_IModeAccessor()


  def toString(self):
    '''
    @return string format for debugging
    '''
    return str()


  def dispose(self):
    '''
    This change has been disposed
    '''
    pass


  def setDomain(self, _com_silabs_ss_framework_hwconfig_api_core_client_IPowerDomain):
    pass


  def setMode(self, _com_silabs_ss_framework_hwconfig_api_core_client_accessors_IModeAccessor):
    pass


class com_silabs_ss_framework_hwconfig_api_core_client_ISignalReference(object):
  '''
  Get an accessor for a signal on a module.
   *
  '''
  def init(self):
    self.object = self.getObject()

    self.defaultValue = self.getDefaultValue()

    self.id = self.getId()

    self.name = self.getName()

    self.signalType = self.getSignalType()

  def equals(self, obj):
    '''
    Test equality on the object name and property name
    @param obj other property
    @see object#equals(object)

    @type obj: object
    '''
    return bool()


  def getObject(self):
    '''
    Get the owning module
    @return module, never None
    '''
    return com_silabs_ss_framework_hwconfig_api_core_client_accessors_IModuleAccessor()


  def hashCode(self):
    '''
    Hash on the object name and property name
    @see object#hashCode()
    '''
    return int()


  def get(self):
    '''
    Get the current value of the signal
    @return 
    '''
    return object()


  def getDefaultValue(self):
    '''
    Get the default value of the signal
    @return 
    '''
    return object()


  def getId(self):
    '''
    Get the device-wide identifier for the signal
    @see IDeviceAccessor#findSignalReferenceById()
    '''
    return str()


  def getName(self):
    '''
    Get the name of the signal
    @return 
    '''
    return str()


  def getSignalType(self):
    '''
    Get the type of the signal (an internal type, not a data type)
    @return 
    '''
    return str()


class com_silabs_ss_framework_hwconfig_api_core_client_accessors_ICategoryAccessor(object):
  '''
  *
  '''
  def init(self):
    self.label = self.getLabel()

    self.subcategories = self.getSubcategories()

  def getLabel(self):
    '''
    @return the label of the category
    '''
    return str()


  def getSubcategories(self):
    '''
    @return non-None list of subcategories
    '''
    return list()


class com_silabs_ss_framework_hwconfig_api_core_client_accessors_IComponentAccessor(com_silabs_ss_framework_hwconfig_api_core_client_accessors_IObjectAccessor):
  '''
  This represents an object which has a backing component model.
   *
  '''
  def init(self):
    self.componentId = self.getComponentId()

    self.componentName = self.getComponentName()

    self.componentVersion = self.getComponentVersion()

  def isReadOnly(self):
    '''
    @return whether this module is read-only
    '''
    return bool()


  def createCommandReference(self, commandId):
    '''
    Create a command reference for a command id
    @param commandId
    @type commandId: str
    @return a command reference
    '''
    return com_silabs_ss_framework_configbase_api_core_client_ICommandReference()


  def getPropertyReference(self, propertyId):
    '''
    Get a reference to the property
    @param propertyId
    @type propertyId: str
    @return reference or None for undefined property ID
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IPropertyReference()


  def ref(self, propertyId):
    '''
    Get a reference to the property (this is a convenience method for script, fully equivalent to {@link #getPropertyReference(str)})
    @param propertyId
    @type propertyId: str
    @return reference or None for undefined property ID
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IPropertyReference()


  def createResponseReference(self, questionId, response):
    '''
    Create a response reference for a question id
    @param questionId
    @param response
    @type questionId: str
    @type response: object
    @return a response reference
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IResponseReference()


  def getDocument(self):
    '''
    Get the document object's document
    @return the document that this object is part of
    '''
    return com_silabs_ss_framework_configbase_api_core_client_accessors_IDocumentAccessor()


  def getProperty(self, propertyId):
    '''
    Get the value of a property
    @param propertyId
    @type propertyId: str
    @return value or None for undefined property ID
    '''
    return object()


  def getId(self):
    '''
    the unique id of this object in the device
    '''
    return str()


  def getName(self):
    '''
    instance name of this object  -- e.g. TIMER_1
    '''
    return str()


  def getComponentId(self):
    '''
    Get the identifier of the component
    @return id
    '''
    return str()


  def getComponentName(self):
    '''
    Get the human-readable name of the component
    @return name
    '''
    return str()


  def getComponentVersion(self):
    '''
    Get the version of the component
    @return version string
    '''
    return str()


  def getLabel(self):
    '''
    @return the user visible label
    '''
    return str()


  def getPropertyIds(self):
    '''
    Get all the defined properties
    @return non-None list of property IDs
    '''
    return list()


  def getProblems(self):
    '''
    Get the problems currently published on the receiver.
    @return unmodifiable list
    '''
    return list()


  def getCategories(self):
    '''
    @return non-None list of categories
    '''
    return list()


class com_silabs_ss_framework_hwconfig_api_core_client_accessors_ICrossbarAccessor(com_silabs_ss_framework_hwconfig_api_core_client_accessors_IModuleAccessor):
  def init(self):
    self.validateSignal = self.getValidateSignal()

    self.portBanks = self.getPortBanks()

    self.propertyIdToSignalInfos = self.getPropertyIdToSignalInfos()

  class ILayoutPin(object):
    def init(self):
      self.pinIndex = self.getPinIndex()

      self.portbankIndex = self.getPortbankIndex()

    def getPinIndex(self):
      return int()


    def getPortbankIndex(self):
      return int()


  class IPropertyIdToSignalInfosMapping(object):
    def init(self):
      self.propertyId = self.getPropertyId()

      self.signalInfos = self.getSignalInfos()

    def getPropertyId(self):
      return str()


    def getSignalInfos(self):
      '''
      @return list of ISignalInfo
      '''
      return list()


  class ISignalInfo(object):
    def init(self):
      self.firstAffectedPin = self.getFirstAffectedPin()

      self.lastAffectedPin = self.getLastAffectedPin()

      self.groupName = self.getGroupName()

      self.moduleName = self.getModuleName()

      self.signalName = self.getSignalName()

    def getFirstAffectedPin(self):
      return com_silabs_ss_framework_hwconfig_api_core_client_accessors_ICrossbarAccessor.ILayoutPin()


    def getLastAffectedPin(self):
      return com_silabs_ss_framework_hwconfig_api_core_client_accessors_ICrossbarAccessor.ILayoutPin()


    def getGroupName(self):
      return str()


    def getModuleName(self):
      return str()


    def getSignalName(self):
      return str()


  def isReadOnly(self):
    '''
    @return whether this module is read-only
    '''
    return bool()


  def createCommandReference(self, commandId):
    '''
    Create a command reference for a command id
    @param commandId
    @type commandId: str
    @return a command reference
    '''
    return com_silabs_ss_framework_configbase_api_core_client_ICommandReference()


  def getPropertyReference(self, propertyId):
    '''
    Get a reference to the property
    @param propertyId
    @type propertyId: str
    @return reference or None for undefined property ID
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IPropertyReference()


  def ref(self, propertyId):
    '''
    Get a reference to the property (this is a convenience method for script, fully equivalent to {@link #getPropertyReference(str)})
    @param propertyId
    @type propertyId: str
    @return reference or None for undefined property ID
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IPropertyReference()


  def createResponseReference(self, questionId, response):
    '''
    Create a response reference for a question id
    @param questionId
    @param response
    @type questionId: str
    @type response: object
    @return a response reference
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IResponseReference()


  def getDocument(self):
    '''
    Get the document object's document
    @return the document that this object is part of
    '''
    return com_silabs_ss_framework_configbase_api_core_client_accessors_IDocumentAccessor()


  def getValidateSignal(self):
    '''
    @return a built-in signal with boolean value controlling internal validation (make not True to inhibit)
    '''
    return com_silabs_ss_framework_hwconfig_api_core_client_ISignalReference()


  def getSignalReference(self, name):
    '''
    Find the signal with the given name on the module
    @param name signal name
    @type name: str
    @return {@link ISignalReference} or None
    '''
    return com_silabs_ss_framework_hwconfig_api_core_client_ISignalReference()


  def signal(self, name):
    '''
    Find the signal with the given name on the module.  (Convenience method for scripts,
    fully equivalent to {@link #getSignalReference(str)}.)
    @param name signal name
    @type name: str
    @return {@link ISignalReference} or None
    '''
    return com_silabs_ss_framework_hwconfig_api_core_client_ISignalReference()


  def getMode(self):
    '''
    get the mode containing this object
    '''
    return com_silabs_ss_framework_hwconfig_api_core_client_accessors_IModeAccessor()


  def getProperty(self, propertyId):
    '''
    Get the value of a property
    @param propertyId
    @type propertyId: str
    @return value or None for undefined property ID
    '''
    return object()


  def getId(self):
    '''
    the unique id of this object in the device
    '''
    return str()


  def getName(self):
    '''
    instance name of this object  -- e.g. TIMER_1
    '''
    return str()


  def getComponentId(self):
    '''
    Get the identifier of the component
    @return id
    '''
    return str()


  def getComponentName(self):
    '''
    Get the human-readable name of the component
    @return name
    '''
    return str()


  def getComponentVersion(self):
    '''
    Get the version of the component
    @return version string
    '''
    return str()


  def getLabel(self):
    '''
    @return the user visible label
    '''
    return str()


  def getPropertyIds(self):
    '''
    Get all the defined properties
    @return non-None list of property IDs
    '''
    return list()


  def getProblems(self):
    '''
    Get the problems currently published on the receiver.
    @return unmodifiable list
    '''
    return list()


  def getPortBanks(self):
    '''
    @return list of {@link IPortBankAccessor}
    '''
    return list()


  def getPropertyIdToSignalInfos(self):
    '''
    Get the mapping of property ID to all the signal infos for that property
    @return list of {@link IPropertyIdToSignalInfosMapping}
    '''
    return list()


  def getSignals(self):
    '''
    Get the signals available on the module
    @return unmodifiable list of {@link ISignalReference}
    '''
    return list()


  def getCategories(self):
    '''
    @return non-None list of categories
    '''
    return list()


class com_silabs_ss_framework_hwconfig_api_core_client_accessors_IDeviceAccessor(com_silabs_ss_framework_configbase_api_core_client_accessors_IDocumentAccessor):
  '''
  This is the top-level element for the HalConfig document model, 
  a representation of a device with various modes.
   *
  '''
  def init(self):
    self.prototypeMode = self.getPrototypeMode()

    self.version = self.getVersion()

    self.modeTransitions = self.getModeTransitions()

    self.modes = self.getModes()

  def findPropertyReferenceById(self, id):
    '''
    Find the property reference with the given id
    @param id from {@link IPropertyReference#getId()}

    @type id: str
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IPropertyReference()


  def findSignalReferenceById(self, id):
    '''
    Find the signal reference with the given id
    @param id from {@link ISignalReference#getId()}

    @type id: str
    '''
    return com_silabs_ss_framework_hwconfig_api_core_client_ISignalReference()


  def findMode(self, name):
    '''
    Find a mode with the given name
    @param name mode name
    @type name: str
    @return mode or None
    '''
    return com_silabs_ss_framework_hwconfig_api_core_client_accessors_IModeAccessor()


  def getPrototypeMode(self):
    '''
    Get a mode that is the prototype of any mode created by this device
    @return mode, never None
    '''
    return com_silabs_ss_framework_hwconfig_api_core_client_accessors_IModeAccessor()


  def findObjectById(self, id):
    '''
    Find the object with the given id
    @param id from {@link IobjectAccessor#getId()}

    @type id: str
    '''
    return com_silabs_ss_framework_hwconfig_api_core_client_accessors_IObjectAccessor()


  def getName(self):
    '''
    @return the name of the document
    '''
    return str()


  def getPath(self):
    '''
    Get the document's location.  This serves as the identity of the document
    independently of its contents, e.g. for use by scripting and source generation.
    @return absolute location or None
    '''
    return str()


  def getVersion(self):
    '''
    Return the version of the device model
    @return 
    '''
    return str()


  def getDocumentObjects(self):
    '''
    @return a list of document objects in this document
    '''
    return list()


  def getModeTransitions(self):
    '''
    Get the mode transitions
    @return unmodifiable list
    '''
    return list()


  def getModes(self):
    '''
    Get the modes currently defined.
    @return unmodifiable list
    '''
    return list()


class com_silabs_ss_framework_hwconfig_api_core_client_accessors_IInterfacePinAccessor(object):
  '''
  Allows access to pin information for a single interface pin
   *
  '''
  def init(self):
    self.label = self.getLabel()

    self.name = self.getName()

  def getLabel(self):
    '''
    Get the label of the pin
    @return str
    '''
    return str()


  def getName(self):
    '''
    Get the name of the pin
    @return str
    '''
    return str()


class com_silabs_ss_framework_hwconfig_api_core_client_accessors_IInterfaceToPinsAccessor(object):
  '''
  This allows access to interfaces and their pins
   *
  '''
  def init(self):
    self.interfaceName = self.getInterfaceName()

    self.pins = self.getPins()

  def getInterfaceName(self):
    '''
    Get the name of the interface
    @return str
    '''
    return str()


  def getPins(self):
    '''
    Get the pins for the interface
    @return unmodifiable list
    '''
    return list()


class com_silabs_ss_framework_hwconfig_api_core_client_accessors_ILocationAccessor(object):
  '''
  This allows access to the pin for a pin connection
   *
  '''
  def init(self):
    self.pin = self.getPin()

    self.locationNumber = self.getLocationNumber()

  def getPin(self):
    '''
    @return the pin for this connection (location)
    '''
    return com_silabs_ss_framework_hwconfig_api_core_client_accessors_IPinAccessor()


  def getLocationNumber(self):
    '''
    @return the location number of this pin connection (location)
    '''
    return int()


class com_silabs_ss_framework_hwconfig_api_core_client_accessors_IModeAccessor(com_silabs_ss_framework_hwconfig_api_core_client_accessors_IObjectAccessor):
  '''
  This provides access to the settings for a given mode in a HalConfig document.

  A mode consists of a tree of {@link IobjectAccessor}, each with properties.

  Each mode and its objects contain independent values of each property and signal setting.
   *
  '''
  def init(self):
    self.device = self.getDevice()

    self.portIO = self.getPortIO()

    self.peripherals = self.getPeripherals()

  def isReadOnly(self):
    '''
    @return whether this module is read-only
    '''
    return bool()


  def createCommandReference(self, commandId):
    '''
    Create a command reference for a command id
    @param commandId
    @type commandId: str
    @return a command reference
    '''
    return com_silabs_ss_framework_configbase_api_core_client_ICommandReference()


  def getPropertyReference(self, propertyId):
    '''
    Get a reference to the property
    @param propertyId
    @type propertyId: str
    @return reference or None for undefined property ID
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IPropertyReference()


  def ref(self, propertyId):
    '''
    Get a reference to the property (this is a convenience method for script, fully equivalent to {@link #getPropertyReference(str)})
    @param propertyId
    @type propertyId: str
    @return reference or None for undefined property ID
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IPropertyReference()


  def createResponseReference(self, questionId, response):
    '''
    Create a response reference for a question id
    @param questionId
    @param response
    @type questionId: str
    @type response: object
    @return a response reference
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IResponseReference()


  def getDocument(self):
    '''
    Get the document object's document
    @return the document that this object is part of
    '''
    return com_silabs_ss_framework_configbase_api_core_client_accessors_IDocumentAccessor()


  def getDevice(self):
    '''
    Get the device that owns this mode.
    '''
    return com_silabs_ss_framework_hwconfig_api_core_client_accessors_IDeviceAccessor()


  def findObject(self, name):
    '''
    Find an object with the given name in the mode.
    @param name object name
    @type name: str
    @return result or None
    '''
    return com_silabs_ss_framework_hwconfig_api_core_client_accessors_IObjectAccessor()


  def getPortIO(self):
    '''
    Get the Port IO for the mode.
    '''
    return com_silabs_ss_framework_hwconfig_api_core_client_accessors_IPortIOAccessor()


  def getProperty(self, propertyId):
    '''
    Get the value of a property
    @param propertyId
    @type propertyId: str
    @return value or None for undefined property ID
    '''
    return object()


  def getId(self):
    '''
    the unique id of this object in the device
    '''
    return str()


  def getName(self):
    '''
    instance name of this object  -- e.g. TIMER_1
    '''
    return str()


  def getLabel(self):
    '''
    @return the user visible label
    '''
    return str()


  def getPropertyIds(self):
    '''
    Get all the defined properties
    @return non-None list of property IDs
    '''
    return list()


  def getProblems(self):
    '''
    Get the problems currently published on the receiver.
    @return unmodifiable list
    '''
    return list()


  def getPeripherals(self):
    '''
    Get the peripherals contained in this mode.  Every peripheral (even not-enabled ones) are returned.
    @return unmodifiable list
    '''
    return list()


  def getCategories(self):
    '''
    @return non-None list of categories
    '''
    return list()


class com_silabs_ss_framework_hwconfig_api_core_client_accessors_IModeTransitionAccessor(com_silabs_ss_framework_hwconfig_api_core_client_accessors_IObjectAccessor):
  '''
  *
  '''
  def init(self):
    self.device = self.getDevice()

    self.source = self.getSource()

    self.target = self.getTarget()

  def isReadOnly(self):
    '''
    @return whether this module is read-only
    '''
    return bool()


  def createCommandReference(self, commandId):
    '''
    Create a command reference for a command id
    @param commandId
    @type commandId: str
    @return a command reference
    '''
    return com_silabs_ss_framework_configbase_api_core_client_ICommandReference()


  def getPropertyReference(self, propertyId):
    '''
    Get a reference to the property
    @param propertyId
    @type propertyId: str
    @return reference or None for undefined property ID
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IPropertyReference()


  def ref(self, propertyId):
    '''
    Get a reference to the property (this is a convenience method for script, fully equivalent to {@link #getPropertyReference(str)})
    @param propertyId
    @type propertyId: str
    @return reference or None for undefined property ID
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IPropertyReference()


  def createResponseReference(self, questionId, response):
    '''
    Create a response reference for a question id
    @param questionId
    @param response
    @type questionId: str
    @type response: object
    @return a response reference
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IResponseReference()


  def getDocument(self):
    '''
    Get the document object's document
    @return the document that this object is part of
    '''
    return com_silabs_ss_framework_configbase_api_core_client_accessors_IDocumentAccessor()


  def getDevice(self):
    '''
    Get the device that owns this mode transition.
    '''
    return com_silabs_ss_framework_hwconfig_api_core_client_accessors_IDeviceAccessor()


  def getSource(self):
    '''
    Get the source mode for this transition
    '''
    return com_silabs_ss_framework_hwconfig_api_core_client_accessors_IModeAccessor()


  def getTarget(self):
    '''
    Get the target mode for this transition
    '''
    return com_silabs_ss_framework_hwconfig_api_core_client_accessors_IModeAccessor()


  def getProperty(self, propertyId):
    '''
    Get the value of a property
    @param propertyId
    @type propertyId: str
    @return value or None for undefined property ID
    '''
    return object()


  def getId(self):
    '''
    the unique id of this object in the device
    '''
    return str()


  def getName(self):
    '''
    instance name of this object  -- e.g. TIMER_1
    '''
    return str()


  def getLabel(self):
    '''
    @return the user visible label
    '''
    return str()


  def getPropertyIds(self):
    '''
    Get all the defined properties
    @return non-None list of property IDs
    '''
    return list()


  def getProblems(self):
    '''
    Get the problems currently published on the receiver.
    @return unmodifiable list
    '''
    return list()


  def getCategories(self):
    '''
    @return non-None list of categories
    '''
    return list()


class com_silabs_ss_framework_hwconfig_api_core_client_accessors_IModuleAccessor(com_silabs_ss_framework_hwconfig_api_core_client_accessors_IComponentAccessor):
  '''
  Get a module, which is an component with signals.
   *
  '''
  def init(self):
    self.mode = self.getMode()

    self.signals = self.getSignals()

  def isReadOnly(self):
    '''
    @return whether this module is read-only
    '''
    return bool()


  def createCommandReference(self, commandId):
    '''
    Create a command reference for a command id
    @param commandId
    @type commandId: str
    @return a command reference
    '''
    return com_silabs_ss_framework_configbase_api_core_client_ICommandReference()


  def getPropertyReference(self, propertyId):
    '''
    Get a reference to the property
    @param propertyId
    @type propertyId: str
    @return reference or None for undefined property ID
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IPropertyReference()


  def ref(self, propertyId):
    '''
    Get a reference to the property (this is a convenience method for script, fully equivalent to {@link #getPropertyReference(str)})
    @param propertyId
    @type propertyId: str
    @return reference or None for undefined property ID
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IPropertyReference()


  def createResponseReference(self, questionId, response):
    '''
    Create a response reference for a question id
    @param questionId
    @param response
    @type questionId: str
    @type response: object
    @return a response reference
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IResponseReference()


  def getDocument(self):
    '''
    Get the document object's document
    @return the document that this object is part of
    '''
    return com_silabs_ss_framework_configbase_api_core_client_accessors_IDocumentAccessor()


  def getSignalReference(self, name):
    '''
    Find the signal with the given name on the module
    @param name signal name
    @type name: str
    @return {@link ISignalReference} or None
    '''
    return com_silabs_ss_framework_hwconfig_api_core_client_ISignalReference()


  def signal(self, name):
    '''
    Find the signal with the given name on the module.  (Convenience method for scripts,
    fully equivalent to {@link #getSignalReference(str)}.)
    @param name signal name
    @type name: str
    @return {@link ISignalReference} or None
    '''
    return com_silabs_ss_framework_hwconfig_api_core_client_ISignalReference()


  def getMode(self):
    '''
    get the mode containing this object
    '''
    return com_silabs_ss_framework_hwconfig_api_core_client_accessors_IModeAccessor()


  def getProperty(self, propertyId):
    '''
    Get the value of a property
    @param propertyId
    @type propertyId: str
    @return value or None for undefined property ID
    '''
    return object()


  def getId(self):
    '''
    the unique id of this object in the device
    '''
    return str()


  def getName(self):
    '''
    instance name of this object  -- e.g. TIMER_1
    '''
    return str()


  def getComponentId(self):
    '''
    Get the identifier of the component
    @return id
    '''
    return str()


  def getComponentName(self):
    '''
    Get the human-readable name of the component
    @return name
    '''
    return str()


  def getComponentVersion(self):
    '''
    Get the version of the component
    @return version string
    '''
    return str()


  def getLabel(self):
    '''
    @return the user visible label
    '''
    return str()


  def getPropertyIds(self):
    '''
    Get all the defined properties
    @return non-None list of property IDs
    '''
    return list()


  def getProblems(self):
    '''
    Get the problems currently published on the receiver.
    @return unmodifiable list
    '''
    return list()


  def getSignals(self):
    '''
    Get the signals available on the module
    @return unmodifiable list of {@link ISignalReference}
    '''
    return list()


  def getCategories(self):
    '''
    @return non-None list of categories
    '''
    return list()


class com_silabs_ss_framework_hwconfig_api_core_client_accessors_IObjectAccessor(com_silabs_ss_framework_configbase_api_core_client_accessors_IDocumentObjectAccessor):
  '''
  This provides access to the lowest level objects in a HalConfig document.

  An object contains the properties that represent the configured state.
   *
  '''
  def init(self):
    self.label = self.getLabel()

    self.categories = self.getCategories()

  def isReadOnly(self):
    '''
    @return whether this module is read-only
    '''
    return bool()


  def createCommandReference(self, commandId):
    '''
    Create a command reference for a command id
    @param commandId
    @type commandId: str
    @return a command reference
    '''
    return com_silabs_ss_framework_configbase_api_core_client_ICommandReference()


  def getPropertyReference(self, propertyId):
    '''
    Get a reference to the property
    @param propertyId
    @type propertyId: str
    @return reference or None for undefined property ID
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IPropertyReference()


  def ref(self, propertyId):
    '''
    Get a reference to the property (this is a convenience method for script, fully equivalent to {@link #getPropertyReference(str)})
    @param propertyId
    @type propertyId: str
    @return reference or None for undefined property ID
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IPropertyReference()


  def createResponseReference(self, questionId, response):
    '''
    Create a response reference for a question id
    @param questionId
    @param response
    @type questionId: str
    @type response: object
    @return a response reference
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IResponseReference()


  def getDocument(self):
    '''
    Get the document object's document
    @return the document that this object is part of
    '''
    return com_silabs_ss_framework_configbase_api_core_client_accessors_IDocumentAccessor()


  def getProperty(self, propertyId):
    '''
    Get the value of a property
    @param propertyId
    @type propertyId: str
    @return value or None for undefined property ID
    '''
    return object()


  def getId(self):
    '''
    the unique id of this object in the device
    '''
    return str()


  def getName(self):
    '''
    instance name of this object  -- e.g. TIMER_1
    '''
    return str()


  def getLabel(self):
    '''
    @return the user visible label
    '''
    return str()


  def getPropertyIds(self):
    '''
    Get all the defined properties
    @return non-None list of property IDs
    '''
    return list()


  def getProblems(self):
    '''
    Get the problems currently published on the receiver.
    @return unmodifiable list
    '''
    return list()


  def getCategories(self):
    '''
    @return non-None list of categories
    '''
    return list()


class com_silabs_ss_framework_hwconfig_api_core_client_accessors_IPinAccessor(com_silabs_ss_framework_hwconfig_api_core_client_accessors_IModuleAccessor):
  '''
  *
  '''
  def init(self):
    self.assignmentSignal = self.getAssignmentSignal()

    self.crossbar = self.getCrossbar()

    self.portBank = self.getPortBank()

    self.index = self.getIndex()

    self.function = self.getFunction()

    self.functionPropertyId = self.getFunctionPropertyId()

    self.iOMode = self.getIOMode()

    self.iOModePropertyId = self.getIOModePropertyId()

    self.skippedPropertyId = self.getSkippedPropertyId()

  def isReadOnly(self):
    '''
    @return whether this module is read-only
    '''
    return bool()


  def isSkipped(self):
    return bool()


  def createCommandReference(self, commandId):
    '''
    Create a command reference for a command id
    @param commandId
    @type commandId: str
    @return a command reference
    '''
    return com_silabs_ss_framework_configbase_api_core_client_ICommandReference()


  def getPropertyReference(self, propertyId):
    '''
    Get a reference to the property
    @param propertyId
    @type propertyId: str
    @return reference or None for undefined property ID
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IPropertyReference()


  def ref(self, propertyId):
    '''
    Get a reference to the property (this is a convenience method for script, fully equivalent to {@link #getPropertyReference(str)})
    @param propertyId
    @type propertyId: str
    @return reference or None for undefined property ID
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IPropertyReference()


  def createResponseReference(self, questionId, response):
    '''
    Create a response reference for a question id
    @param questionId
    @param response
    @type questionId: str
    @type response: object
    @return a response reference
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IResponseReference()


  def getDocument(self):
    '''
    Get the document object's document
    @return the document that this object is part of
    '''
    return com_silabs_ss_framework_configbase_api_core_client_accessors_IDocumentAccessor()


  def getSignalReference(self, name):
    '''
    Find the signal with the given name on the module
    @param name signal name
    @type name: str
    @return {@link ISignalReference} or None
    '''
    return com_silabs_ss_framework_hwconfig_api_core_client_ISignalReference()


  def signal(self, name):
    '''
    Find the signal with the given name on the module.  (Convenience method for scripts,
    fully equivalent to {@link #getSignalReference(str)}.)
    @param name signal name
    @type name: str
    @return {@link ISignalReference} or None
    '''
    return com_silabs_ss_framework_hwconfig_api_core_client_ISignalReference()


  def getAssignmentSignal(self):
    '''
    @return a built-in signal with string value denoting the label of this pin - None means use the default label
    '''
    return com_silabs_ss_framework_hwconfig_api_core_client_ISignalReference()


  def getCrossbar(self):
    return com_silabs_ss_framework_hwconfig_api_core_client_accessors_ICrossbarAccessor()


  def getMode(self):
    '''
    get the mode containing this object
    '''
    return com_silabs_ss_framework_hwconfig_api_core_client_accessors_IModeAccessor()


  def getPortBank(self):
    return com_silabs_ss_framework_hwconfig_api_core_client_accessors_IPortBankAccessor()


  def getIndex(self):
    return int()


  def getProperty(self, propertyId):
    '''
    Get the value of a property
    @param propertyId
    @type propertyId: str
    @return value or None for undefined property ID
    '''
    return object()


  def getId(self):
    '''
    the unique id of this object in the device
    '''
    return str()


  def getName(self):
    '''
    instance name of this object  -- e.g. TIMER_1
    '''
    return str()


  def getComponentId(self):
    '''
    Get the identifier of the component
    @return id
    '''
    return str()


  def getComponentName(self):
    '''
    Get the human-readable name of the component
    @return name
    '''
    return str()


  def getComponentVersion(self):
    '''
    Get the version of the component
    @return version string
    '''
    return str()


  def getLabel(self):
    '''
    @return the user visible label
    '''
    return str()


  def getFunction(self):
    return str()


  def getFunctionPropertyId(self):
    return str()


  def getIOMode(self):
    return str()


  def getIOModePropertyId(self):
    return str()


  def getSkippedPropertyId(self):
    return str()


  def getPropertyIds(self):
    '''
    Get all the defined properties
    @return non-None list of property IDs
    '''
    return list()


  def getProblems(self):
    '''
    Get the problems currently published on the receiver.
    @return unmodifiable list
    '''
    return list()


  def getSignals(self):
    '''
    Get the signals available on the module
    @return unmodifiable list of {@link ISignalReference}
    '''
    return list()


  def getCategories(self):
    '''
    @return non-None list of categories
    '''
    return list()


class com_silabs_ss_framework_hwconfig_api_core_client_accessors_IPortBankAccessor(com_silabs_ss_framework_hwconfig_api_core_client_accessors_IModuleAccessor):
  '''
  This provides access to the port banks inside a port IO in a HalConfig document.
   *
  '''
  def init(self):
    self.validateSignal = self.getValidateSignal()

    self.index = self.getIndex()

    self.pins = self.getPins()

  def isReadOnly(self):
    '''
    @return whether this module is read-only
    '''
    return bool()


  def createCommandReference(self, commandId):
    '''
    Create a command reference for a command id
    @param commandId
    @type commandId: str
    @return a command reference
    '''
    return com_silabs_ss_framework_configbase_api_core_client_ICommandReference()


  def getPropertyReference(self, propertyId):
    '''
    Get a reference to the property
    @param propertyId
    @type propertyId: str
    @return reference or None for undefined property ID
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IPropertyReference()


  def ref(self, propertyId):
    '''
    Get a reference to the property (this is a convenience method for script, fully equivalent to {@link #getPropertyReference(str)})
    @param propertyId
    @type propertyId: str
    @return reference or None for undefined property ID
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IPropertyReference()


  def createResponseReference(self, questionId, response):
    '''
    Create a response reference for a question id
    @param questionId
    @param response
    @type questionId: str
    @type response: object
    @return a response reference
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IResponseReference()


  def getDocument(self):
    '''
    Get the document object's document
    @return the document that this object is part of
    '''
    return com_silabs_ss_framework_configbase_api_core_client_accessors_IDocumentAccessor()


  def getSignalReference(self, name):
    '''
    Find the signal with the given name on the module
    @param name signal name
    @type name: str
    @return {@link ISignalReference} or None
    '''
    return com_silabs_ss_framework_hwconfig_api_core_client_ISignalReference()


  def signal(self, name):
    '''
    Find the signal with the given name on the module.  (Convenience method for scripts,
    fully equivalent to {@link #getSignalReference(str)}.)
    @param name signal name
    @type name: str
    @return {@link ISignalReference} or None
    '''
    return com_silabs_ss_framework_hwconfig_api_core_client_ISignalReference()


  def getValidateSignal(self):
    '''
    Get the built-in signal with boolean value that controls internal validation (make not True to inhibit)
    @return signal reference
    '''
    return com_silabs_ss_framework_hwconfig_api_core_client_ISignalReference()


  def getMode(self):
    '''
    get the mode containing this object
    '''
    return com_silabs_ss_framework_hwconfig_api_core_client_accessors_IModeAccessor()


  def getIndex(self):
    '''
    @return the portbank index
    '''
    return int()


  def getProperty(self, propertyId):
    '''
    Get the value of a property
    @param propertyId
    @type propertyId: str
    @return value or None for undefined property ID
    '''
    return object()


  def getId(self):
    '''
    the unique id of this object in the device
    '''
    return str()


  def getName(self):
    '''
    instance name of this object  -- e.g. TIMER_1
    '''
    return str()


  def getComponentId(self):
    '''
    Get the identifier of the component
    @return id
    '''
    return str()


  def getComponentName(self):
    '''
    Get the human-readable name of the component
    @return name
    '''
    return str()


  def getComponentVersion(self):
    '''
    Get the version of the component
    @return version string
    '''
    return str()


  def getLabel(self):
    '''
    @return the user visible label
    '''
    return str()


  def getPropertyIds(self):
    '''
    Get all the defined properties
    @return non-None list of property IDs
    '''
    return list()


  def getProblems(self):
    '''
    Get the problems currently published on the receiver.
    @return unmodifiable list
    '''
    return list()


  def getSignals(self):
    '''
    Get the signals available on the module
    @return unmodifiable list of {@link ISignalReference}
    '''
    return list()


  def getCategories(self):
    '''
    @return non-None list of categories
    '''
    return list()


  def getPins(self):
    '''
    Get the pins available on the port bank
    @return list of pins
    '''
    return list()


class com_silabs_ss_framework_hwconfig_api_core_client_accessors_IPortIOAccessor(com_silabs_ss_framework_hwconfig_api_core_client_accessors_IModuleAccessor):
  '''
  This allows access to the crossbars, port banks and pin routes for the device.
   *
  '''
  def init(self):
    self.crossbars = self.getCrossbars()

    self.interfaceToPinList = self.getInterfaceToPinList()

    self.portBanks = self.getPortBanks()

    self.selectors = self.getSelectors()

  def isReadOnly(self):
    '''
    @return whether this module is read-only
    '''
    return bool()


  def createCommandReference(self, commandId):
    '''
    Create a command reference for a command id
    @param commandId
    @type commandId: str
    @return a command reference
    '''
    return com_silabs_ss_framework_configbase_api_core_client_ICommandReference()


  def getPropertyReference(self, propertyId):
    '''
    Get a reference to the property
    @param propertyId
    @type propertyId: str
    @return reference or None for undefined property ID
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IPropertyReference()


  def ref(self, propertyId):
    '''
    Get a reference to the property (this is a convenience method for script, fully equivalent to {@link #getPropertyReference(str)})
    @param propertyId
    @type propertyId: str
    @return reference or None for undefined property ID
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IPropertyReference()


  def createResponseReference(self, questionId, response):
    '''
    Create a response reference for a question id
    @param questionId
    @param response
    @type questionId: str
    @type response: object
    @return a response reference
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IResponseReference()


  def getDocument(self):
    '''
    Get the document object's document
    @return the document that this object is part of
    '''
    return com_silabs_ss_framework_configbase_api_core_client_accessors_IDocumentAccessor()


  def getSignalReference(self, name):
    '''
    Find the signal with the given name on the module
    @param name signal name
    @type name: str
    @return {@link ISignalReference} or None
    '''
    return com_silabs_ss_framework_hwconfig_api_core_client_ISignalReference()


  def signal(self, name):
    '''
    Find the signal with the given name on the module.  (Convenience method for scripts,
    fully equivalent to {@link #getSignalReference(str)}.)
    @param name signal name
    @type name: str
    @return {@link ISignalReference} or None
    '''
    return com_silabs_ss_framework_hwconfig_api_core_client_ISignalReference()


  def getMode(self):
    '''
    get the mode containing this object
    '''
    return com_silabs_ss_framework_hwconfig_api_core_client_accessors_IModeAccessor()


  def getProperty(self, propertyId):
    '''
    Get the value of a property
    @param propertyId
    @type propertyId: str
    @return value or None for undefined property ID
    '''
    return object()


  def getId(self):
    '''
    the unique id of this object in the device
    '''
    return str()


  def getName(self):
    '''
    instance name of this object  -- e.g. TIMER_1
    '''
    return str()


  def getComponentId(self):
    '''
    Get the identifier of the component
    @return id
    '''
    return str()


  def getComponentName(self):
    '''
    Get the human-readable name of the component
    @return name
    '''
    return str()


  def getComponentVersion(self):
    '''
    Get the version of the component
    @return version string
    '''
    return str()


  def getLabel(self):
    '''
    @return the user visible label
    '''
    return str()


  def getPropertyIds(self):
    '''
    Get all the defined properties
    @return non-None list of property IDs
    '''
    return list()


  def getProblems(self):
    '''
    Get the problems currently published on the receiver.
    @return unmodifiable list
    '''
    return list()


  def getSignals(self):
    '''
    Get the signals available on the module
    @return unmodifiable list of {@link ISignalReference}
    '''
    return list()


  def getCategories(self):
    '''
    @return non-None list of categories
    '''
    return list()


  def getCrossbars(self):
    '''
    Get the crossbars.
    @return unmodifiable list
    '''
    return list()


  def getInterfaceToPinList(self):
    '''
    Get the interface to pin list
    @return unmodifiable list
    '''
    return list()


  def getPortBanks(self):
    '''
    Get the port banks.
    @return unmodifiable list
    '''
    return list()


  def getSelectors(self):
    '''
    Get the selectors
    @return unmodifiable list
    '''
    return list()


class com_silabs_ss_framework_hwconfig_api_core_client_accessors_IRouteAccessor(object):
  '''
  This allows access to the pin connections of a pin configuration.
   *
  '''
  def init(self):
    self.enablePropertyReference = self.getEnablePropertyReference()

    self.aportName = self.getAportName()

    self.name = self.getName()

    self.locations = self.getLocations()

  def getEnablePropertyReference(self):
    '''
    @return the enable property reference
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IPropertyReference()


  def getAportName(self):
    '''
    @return the aportName if it exists
    '''
    return str()


  def getName(self):
    '''
    @return the name of this pin configuration (route)
    '''
    return str()


  def getLocations(self):
    '''
    @return an unmodifiable list of locations
    '''
    return list()


class com_silabs_ss_framework_hwconfig_api_core_client_accessors_ISelectorAccessor(object):
  '''
  This allows access to the pin configurations of a pin route.
   *
  '''
  def init(self):
    self.locationPropertyReference = self.getLocationPropertyReference()

    self.module = self.getModule()

    self.name = self.getName()

    self.routes = self.getRoutes()

  def getLocationPropertyReference(self):
    '''
    @return the location property reference
    '''
    return com_silabs_ss_framework_configbase_api_core_client_IPropertyReference()


  def getModule(self):
    '''
    @return the module of the route
    '''
    return com_silabs_ss_framework_hwconfig_api_core_client_accessors_IModuleAccessor()


  def getName(self):
    '''
    @return the name of the pin route (selector)
    '''
    return str()


  def getRoutes(self):
    '''
    @return an unmodifiable list of routes
    '''
    return list()


class com_silabs_ss_framework_hwconfig_api_core_client_accessors_ISubcategoryAccessor(object):
  '''
  *
  '''
  def init(self):
    self.label = self.getLabel()

    self.propertyIds = self.getPropertyIds()

  def getLabel(self):
    '''
    @return the label of the subcategory
    '''
    return str()


  def getPropertyIds(self):
    '''
    @return non-None list of property IDs
    '''
    return list()


class com_silabs_ss_framework_hwconfig_api_core_model_device_XMLDevice(org_eclipse_emf_ecore_EObject):
  '''
  A representation of the model object 'XDevice'.

   *

  This is the persisted record of a device.  It has a flat list of Modes.

   *

  The following features are supported:

  	{@link com.silabs.ss.framework.hwconfig.internal.core.model.device.XMLDevice#getName Name}

  	{@link com.silabs.ss.framework.hwconfig.internal.core.model.device.XMLDevice#getPartId Part Id}

  	{@link com.silabs.ss.framework.hwconfig.internal.core.model.device.XMLDevice#getVersion Version}

  	{@link com.silabs.ss.framework.hwconfig.internal.core.model.device.XMLDevice#getMode Mode}

  	{@link com.silabs.ss.framework.hwconfig.internal.core.model.device.XMLDevice#getModeTransition Mode Transition}

   *
  @see com.silabs.ss.framework.hwconfig.internal.core.model.device.DevicePackage#getXMLDevice()
  @model 
  '''
  def init(self):
    self.name = self.getName()

    self.partId = self.getPartId()

    self.version = self.getVersion()

    self.modes = self.getModes()

    self.mode = self.getMode()

    self.modeTransition = self.getModeTransition()

  def createPropertyValue(self, object, propertyId, value):
    '''
    Factory for creating new XMLPropertyValue objects.
    Any created values still need to be added to an XMLMode
    @see XMLMode#getProperty()
    @see XMLPropertyValue
    @param object
    @param propertyId
    @param value
    @type object: str
    @type propertyId: str
    @type value: str
    @return 
    '''
    return com_silabs_ss_framework_hwconfig_api_core_model_device_XMLPropertyValue()


  def getName(self):
    '''
    Returns the value of the 'Name' attribute.

    The name of the device modeled.

    @return the value of the 'Name' attribute.
    @see #setName(str)
    @see com.silabs.ss.framework.hwconfig.internal.core.model.device.DevicePackage#getXMLDevice_Name()
    @model id="True"
    '''
    return str()


  def getPartId(self):
    '''
    Returns the value of the 'Part Id' attribute.

    The part id of the device modeled.

    @return the value of the 'Part Id' attribute.
    @see #setPartId(str)
    @see com.silabs.ss.framework.hwconfig.internal.core.model.device.DevicePackage#getXMLDevice_PartId()
    @model 
    '''
    return str()


  def getVersion(self):
    '''
    Returns the value of the 'Version' attribute.
    The default value is "".

    If the meaning of the 'Version' attribute isn't clear,
    there really should be more of a description here...

    @return the value of the 'Version' attribute.
    @see #setVersion(str)
    @see com.silabs.ss.framework.hwconfig.internal.core.model.device.DevicePackage#getXMLDevice_Version()
    @model default=""
    '''
    return str()


  def getModes(self):
    '''
    Return an unmodifiable list of XMLMode(s) for this device
    @return list
    '''
    return list()


  def setName(self, value):
    '''
    Sets the value of the '{@link com.silabs.ss.framework.hwconfig.internal.core.model.device.XMLDevice#getName Name}' attribute.

    @param value the new value of the 'Name' attribute.
    @see #getName()

    @type value: str
    '''
    pass


  def setPartId(self, value):
    '''
    Sets the value of the '{@link com.silabs.ss.framework.hwconfig.internal.core.model.device.XMLDevice#getPartId Part Id}' attribute.

    @param value the new value of the 'Part Id' attribute.
    @see #getPartId()

    @type value: str
    '''
    pass


  def setVersion(self, value):
    '''
    Sets the value of the '{@link com.silabs.ss.framework.hwconfig.internal.core.model.device.XMLDevice#getVersion Version}' attribute.

    @param value the new value of the 'Version' attribute.
    @see #getVersion()

    @type value: str
    '''
    pass


class com_silabs_ss_framework_hwconfig_api_core_model_device_XMLMode(org_eclipse_emf_ecore_EObject):
  '''
  A representation of the model object 'XMode'.

   *

  This is the persisted record of a mode.  It has a flat list of PropertyValues.

   *

  The following features are supported:

  	{@link com.silabs.ss.framework.hwconfig.internal.core.model.device.XMLMode#getName Name}

  	{@link com.silabs.ss.framework.hwconfig.internal.core.model.device.XMLMode#getProperty Property}

   *
  @see com.silabs.ss.framework.hwconfig.internal.core.model.device.DevicePackage#getXMLMode()
  @model 
  '''
  def init(self):
    self.name = self.getName()

    self.properties = self.getProperties()

    self.property = self.getProperty()

  def getName(self):
    '''
    Returns the value of the 'Name' attribute.

    If the meaning of the 'Name' attribute isn't clear,
    there really should be more of a description here...

    @return the value of the 'Name' attribute.
    @see #setName(str)
    @see com.silabs.ss.framework.hwconfig.internal.core.model.device.DevicePackage#getXMLMode_Name()
    @model id="True"
    '''
    return str()


  def getProperties(self):
    '''
    Return an unmodifiable list of XMLPropertyValue(s) for this mode
    @return list
    '''
    return list()


  def getProperty(self):
    '''
    Returns the value of the 'Property' containment reference list.
    The list contents are of type {@link com.silabs.ss.framework.hwconfig.internal.core.model.device.XMLPropertyValue}.

    If the meaning of the 'Property' containment reference list isn't clear,
    there really should be more of a description here...

    @return the value of the 'Property' containment reference list.
    @see com.silabs.ss.framework.hwconfig.internal.core.model.device.DevicePackage#getXMLMode_Property()
    @model containment="True"
    '''
    return list()


  def addProperty(self, propertyValue
  ):
    '''
    Append a property value
    @param propertyValue

    @type propertyValue
    : com_silabs_ss_framework_hwconfig_api_core_model_device_XMLPropertyValue
    '''
    pass


  def removeProperty(self, index
  ):
    '''
    Remove a property by index
    @param index

    @type index
    : int
    '''
    pass


  def setName(self, value):
    '''
    Sets the value of the '{@link com.silabs.ss.framework.hwconfig.internal.core.model.device.XMLMode#getName Name}' attribute.

    @param value the new value of the 'Name' attribute.
    @see #getName()

    @type value: str
    '''
    pass


class com_silabs_ss_framework_hwconfig_api_core_model_device_XMLPropertyValue(org_eclipse_emf_ecore_EObject):
  '''
  A representation of the model object 'XProperty Value'.
  @extends Comparable

  *

  This is the persisted record of a property.  It records the value of a non-default property.

  *

  The following features are supported:

  	{@link com.silabs.ss.framework.hwconfig.internal.core.model.device.XMLPropertyValue#getobject object}

  	{@link com.silabs.ss.framework.hwconfig.internal.core.model.device.XMLPropertyValue#getPropertyId Property Id}

  	{@link com.silabs.ss.framework.hwconfig.internal.core.model.device.XMLPropertyValue#getValue Value}

  *
  @see com.silabs.ss.framework.hwconfig.internal.core.model.device.DevicePackage#getXMLPropertyValue()
  @model 
  '''
  def init(self):
    self.object = self.getObject()

    self.propertyId = self.getPropertyId()

    self.value = self.getValue()

  def getObject(self):
    '''
    Returns the value of the 'object' attribute.

    If the meaning of the 'object' attribute isn't clear,
    there really should be more of a description here...

    @return the value of the 'object' attribute.
    @see #setobject(str)
    @see com.silabs.ss.framework.hwconfig.internal.core.model.device.DevicePackage#getXMLPropertyValue_object()
    @model 
    '''
    return str()


  def getPropertyId(self):
    '''
    Returns the value of the 'Property Id' attribute.

    If the meaning of the 'Property Id' attribute isn't clear,
    there really should be more of a description here...

    @return the value of the 'Property Id' attribute.
    @see #setPropertyId(str)
    @see com.silabs.ss.framework.hwconfig.internal.core.model.device.DevicePackage#getXMLPropertyValue_PropertyId()
    @model 
    '''
    return str()


  def getValue(self):
    '''
    Returns the value of the 'Value' attribute.

    If the meaning of the 'Value' attribute isn't clear,
    there really should be more of a description here...

    @return the value of the 'Value' attribute.
    @see #setValue(str)
    @see com.silabs.ss.framework.hwconfig.internal.core.model.device.DevicePackage#getXMLPropertyValue_Value()
    @model 
    '''
    return str()


  def setObject(self, value):
    '''
    Sets the value of the '{@link com.silabs.ss.framework.hwconfig.internal.core.model.device.XMLPropertyValue#getobject object}' attribute.

    @param value the new value of the 'object' attribute.
    @see #getobject()

    @type value: str
    '''
    pass


  def setPropertyId(self, value):
    '''
    Sets the value of the '{@link com.silabs.ss.framework.hwconfig.internal.core.model.device.XMLPropertyValue#getPropertyId Property Id}' attribute.

    @param value the new value of the 'Property Id' attribute.
    @see #getPropertyId()

    @type value: str
    '''
    pass


  def setValue(self, value):
    '''
    Sets the value of the '{@link com.silabs.ss.framework.hwconfig.internal.core.model.device.XMLPropertyValue#getValue Value}' attribute.

    @param value the new value of the 'Value' attribute.
    @see #getValue()

    @type value: str
    '''
    pass


class com_silabs_ss_framework_ide_api_project_sls_core_BuildResults(object):
  '''
  This encapsulates all the results from a build.
   *
  '''
  def init(self):
    self.deletedFiles = self.getDeletedFiles()

    self.modifiedFiles = self.getModifiedFiles()

    self.newFiles = self.getNewFiles()

    self.problemMarkers = self.getProblemMarkers()

    self.project = self.getProject()

  def anyErrors(self):
    '''
    Checks if there were any build errors
    @return True if there were errors, otherwise False
    '''
    return bool()


  def numWarnings(self):
    '''
    Gets the number of build warnings
    @return number of warnings from the last build
    '''
    return int()


  def getDeletedFiles(self):
    '''
    Get all of the files that were deleted
    @return list of files that were deleted
    '''
    return list()


  def getModifiedFiles(self):
    '''
    Get all of the files that were modified by the build
    @return list of files that were modified
    '''
    return list()


  def getNewFiles(self):
    '''
    Get any new files added by the build
    @return list of files that were added
    '''
    return list()


  def getProblemMarkers(self):
    '''
    Get any markers from the last build
    @return list of markers
    '''
    return list()


  def getProject(self):
    '''
    Get the project that is associated with these results
    @return the project associated with the build results
    '''
    return org_eclipse_core_resources_IProject()


class com_silabs_ss_framework_project_api_core_IBuildConfigurationDescriptor(com_silabs_ss_platform_api_content_core_IWriteableDescriptor):
  '''
  This encapsulates the data associated with a build configuration, 
  as it may exist in editing state before committing it to a
  project handle.

  The parent is a project descriptor or None for a free-floating descriptor.
   *
  '''
  def init(self):
    self.stockConfigurationId = self.getStockConfigurationId()

    self.additionalStockOptions = self.getAdditionalStockOptions()

  def equals(self, _object):
    '''
    Returns True if the {@code obj} has the same class and the same id.
    @see object#equals(object)
    '''
    return bool()


  def isBuiltin(self):
    '''
    Tell whether the descriptor (and entity) are considered built in to the product.
    This may be used to distinguish bundled descriptors vs. ones discovered on
    the user's system.
    @see CoreProperties#BUILTIN
    '''
    return bool()


  def isHidden(self):
    '''
    Tell whether the object is intended to be hidden from UI.
    @see CoreProperties#HIDDEN
    '''
    return bool()


  def copy(self):
    '''
    Deep-copy the receiver
    @return new copy
    '''
    return com_silabs_ss_platform_api_content_core_IDescriptor()


  def getPropertyAccess(self):
    '''
    Get the full property access for the descriptor.
    '''
    return com_silabs_ss_platform_api_content_core_IPropertyAccess()


  def getPropertyMapper(self):
    '''
    Get the property mapper for the descriptor.
    '''
    return com_silabs_ss_platform_api_content_core_IPropertyMapper()


  def getPropertyAccess(self):
    '''
    Access the properties with write capability
    '''
    return com_silabs_ss_platform_api_content_core_IWriteablePropertyAccess()


  def getRegistry(self):
    '''
    Get the owning registry.
    @return registry, non-None if descriptor is contained in a registry
    '''
    return com_silabs_ss_platform_api_content_core_registry_IRegistry()


  def hashCode(self):
    '''
    Returns the hash code of the receiver's id.
    @see object#hashCode()
    '''
    return int()


  def getProperty(self, key):
    '''
    Get the value of a property for the receiver, parent chain, or default if not defined in any of them.
    @param key name of a property in receiver's scope or fully qualified property name
    @type key: str
    @return value, in the Java type represented by the property's {@link IType}, or a string if the
    property is not registerted in the property scope.  The value may be the default if not explicitly
    set, or None if no such property is known in the receiver's or parent chain's properties
    @throws IllegalArgumentException if property value does not conform to type
    @see IPropertyAccess#getValue(str)
    '''
    return object()


  def getProperty(self, key, _com_silabs_ss_platform_api_content_core_IType):
    '''
    Get the value of a property for the receiver, parent chain, or default if not defined in any of them.
    @param key name of a property in receiver's scope or fully qualified property name
    @type key: str
    @return value, in the Java type represented by the property's {@link IType}, or a string if the
    property is not registerted in the property scope.  The value may be the default if not explicitly
    set, or None if no such property is known in the receiver's or parent chain's properties
    @throws IllegalArgumentException if property value does not conform to type
    @see IPropertyAccess#getValue(str)
    '''
    return object()


  def getProperty(self, key, _str):
    '''
    Get the value of a property for the receiver, parent chain, or default if not defined in any of them.
    @param key name of a property in receiver's scope or fully qualified property name
    @type key: str
    @return value, in the Java type represented by the property's {@link IType}, or a string if the
    property is not registerted in the property scope.  The value may be the default if not explicitly
    set, or None if no such property is known in the receiver's or parent chain's properties
    @throws IllegalArgumentException if property value does not conform to type
    @see IPropertyAccess#getValue(str)
    '''
    return object()


  def getParent(self):
    '''
    Get the parent
    @return parent object, or None
    '''
    return object()


  def setProperty(self, key, value):
    '''
    Set the value for a property for the receiver.
    	 *
    @param key name of a property in receiver's scope or fully qualified property name
    @param value conforming to the property's type or None to reset to default;
    note: the default does not expose the parent's value; use {@link IWriteablePropertyAccess#unset(str)}
    for that.
    @returns previous value of setting, or None if not previously defined
    @throws IllegalArgumentException if value is incompatible with type
    @see {@link IWriteablePropertyAccess#setValue(str, object)}
    @see {@link IWriteablePropertyAccess#unset(str)}

    @type key: str
    @type value: object
    '''
    return object()


  def setProperty(self, key, value, _com_silabs_ss_platform_api_content_core_IType):
    '''
    Set the value for a property for the receiver.
    	 *
    @param key name of a property in receiver's scope or fully qualified property name
    @param value conforming to the property's type or None to reset to default;
    note: the default does not expose the parent's value; use {@link IWriteablePropertyAccess#unset(str)}
    for that.
    @returns previous value of setting, or None if not previously defined
    @throws IllegalArgumentException if value is incompatible with type
    @see {@link IWriteablePropertyAccess#setValue(str, object)}
    @see {@link IWriteablePropertyAccess#unset(str)}

    @type key: str
    @type value: object
    '''
    return object()


  def getStockConfigurationId(self):
    '''
    Get the identifier of the stock configuration used to create the descriptor.
    @return identifier or None if not derived from a stock config
    @see BuildConfigProperties#STOCK_CONFIG_ID
    '''
    return str()


  def getPartId(self):
    '''
    Get the part associated with the configuration (or the project handle's, if unset)
    @return part id
    '''
    return str()


  def getSdkId(self):
    '''
    Get the SDK associated with the configuration (or the project handle's, if unset)
    @return SDK id
    '''
    return str()


  def getToolchainId(self):
    '''
    Get the toolchain associated with the configuration (or the project handle's, if unset)
    @return toolchain id
    '''
    return str()


  def getDescription(self):
    '''
    Human-readable description of the value for UI.

    This description is interpreted as HTML.

    @return description, never None (but may be blank)
    '''
    return str()


  def getId(self):
    '''
    The fully qualified identifer for this entity, including the ids of its parents, up to an implementation-defined root.
    '''
    return str()


  def getLabel(self):
    '''
    The label for the item, displayed in UI.
    @return label, never None
    '''
    return str()


  def getName(self):
    '''
    The unique name for this item within its parent.   See {@link #getId()} for the full unique identifier.
    '''
    return str()


  def toString(self):
    '''
    Return the id and label.
    @return str
    '''
    return str()


  def getLabel(self):
    '''
    Label for the value, if it appears in UI.  This label is plain text.

    This may be a derived value, sourced from the wrapped MDescriptor.  If
    that value is None or blank, a label is automatically
    generated from the {@link #getName()}.
    @return label, never None
    '''
    return str()


  def getBoardIds(self):
    '''
    Get the boards associated with the configuration (or the project handle's, if unset)
    @return board ids
    '''
    return list()


  def getAdditionalStockOptions(self):
    '''
    Get the additional stock options applied above and beyond those provided by the
    stock configuration
    @return non-None unmodifiable list
    @see BuildConfigProperties#ADDITIONAL_STOCK_OPTIONS
    '''
    return list()


  def gatherListProperty(self, _str):
    return list()


  def getInstallationPath(self):
    '''
    Get the path where the installation lives on the system.
    @return path
    @throws IOException if path cannot be resolved
    @see CoreProperties#INSTALLATION_PATH
    '''
    return org_eclipse_core_runtime_IPath()


  def setBoardIds(self, boardId
  ):
    '''
    Set the boards associated with the configuration (overrides the project handle's, unless None)
    @param boardId

    @type boardId
    : list
    '''
    pass


  def setPartId(self, partId
  ):
    '''
    Set the part associated with the configuration (overrides the project handle's, unless None)
    @param partId

    @type partId
    : str
    '''
    pass


  def setSdkId(self, sdkId
  ):
    '''
    Set the SDK id associated with the configuration (overrides the project handle's, unless None)
    @param sdkId

    @type sdkId
    : str
    '''
    pass


  def setToolchainId(self, toolchainId
  ):
    '''
    Set the toolchain associated with the configuration (overrides the project handle's, unless None)
    @param toolchainId

    @type toolchainId
    : str
    '''
    pass


  def setDescription(self, description
  ):
    '''
    Set the human-readable HTML description
    @param description

    @type description
    : str
    '''
    pass


  def setId(self, id):
    '''
    Set the identifier of the descriptor.
    @param id
    @see #getId()

    @type id: str
    '''
    pass


  def setLabel(self, label
  ):
    '''
    Set the human-readable label
    @param label

    @type label
    : str
    '''
    pass


  def setName(self, name
  ):
    '''
    Set the name (the suffix of the id)
    @param name

    @type name
    : str
    '''
    pass


  def setProvidingBundleId(self, bundleId
  ):
    '''
    Override the bundle that created the receiver
    @param bundleId

    @type bundleId
    : str
    '''
    pass


  def setRegistry(self, registry):
    '''
    Set the owning registry (should only be called by IRegistry)
    @param registry new registry or None

    @type registry: com_silabs_ss_platform_api_content_core_registry_IRegistry
    '''
    pass


  def getPropertyAccess(self):
    '''
    Access the properties with write capability
    '''
    return com_silabs_ss_platform_api_content_core_IPropertyAccess()


class com_silabs_ss_framework_project_api_core_ISelectableDescriptor(com_silabs_ss_platform_api_content_core_IDescriptor):
  '''
  Interface that adds board, part, sdk, and toolchain id 
  support. This is applicable for projects and configurations.
  '''
  def init(self):
    self.partId = self.getPartId()

    self.sdkId = self.getSdkId()

    self.toolchainId = self.getToolchainId()

    self.boardIds = self.getBoardIds()

  def equals(self, _object):
    '''
    Returns True if the {@code obj} has the same class and the same id.
    @see object#equals(object)
    '''
    return bool()


  def isBuiltin(self):
    '''
    Tell whether the descriptor (and entity) are considered built in to the product.
    This may be used to distinguish bundled descriptors vs. ones discovered on
    the user's system.
    @see CoreProperties#BUILTIN
    '''
    return bool()


  def isHidden(self):
    '''
    Tell whether the object is intended to be hidden from UI.
    @see CoreProperties#HIDDEN
    '''
    return bool()


  def copy(self):
    '''
    Deep-copy the receiver
    @return new copy
    '''
    return com_silabs_ss_platform_api_content_core_IDescriptor()


  def getPropertyAccess(self):
    '''
    Get the full property access for the descriptor.
    '''
    return com_silabs_ss_platform_api_content_core_IPropertyAccess()


  def getPropertyMapper(self):
    '''
    Get the property mapper for the descriptor.
    '''
    return com_silabs_ss_platform_api_content_core_IPropertyMapper()


  def getRegistry(self):
    '''
    Get the owning registry.
    @return registry, non-None if descriptor is contained in a registry
    '''
    return com_silabs_ss_platform_api_content_core_registry_IRegistry()


  def hashCode(self):
    '''
    Returns the hash code of the receiver's id.
    @see object#hashCode()
    '''
    return int()


  def getProperty(self, key):
    '''
    Get the value of a property for the receiver, parent chain, or default if not defined in any of them.
    @param key name of a property in receiver's scope or fully qualified property name
    @type key: str
    @return value, in the Java type represented by the property's {@link IType}, or a string if the
    property is not registerted in the property scope.  The value may be the default if not explicitly
    set, or None if no such property is known in the receiver's or parent chain's properties
    @throws IllegalArgumentException if property value does not conform to type
    @see IPropertyAccess#getValue(str)
    '''
    return object()


  def getProperty(self, key, _com_silabs_ss_platform_api_content_core_IType):
    '''
    Get the value of a property for the receiver, parent chain, or default if not defined in any of them.
    @param key name of a property in receiver's scope or fully qualified property name
    @type key: str
    @return value, in the Java type represented by the property's {@link IType}, or a string if the
    property is not registerted in the property scope.  The value may be the default if not explicitly
    set, or None if no such property is known in the receiver's or parent chain's properties
    @throws IllegalArgumentException if property value does not conform to type
    @see IPropertyAccess#getValue(str)
    '''
    return object()


  def getProperty(self, key, _str):
    '''
    Get the value of a property for the receiver, parent chain, or default if not defined in any of them.
    @param key name of a property in receiver's scope or fully qualified property name
    @type key: str
    @return value, in the Java type represented by the property's {@link IType}, or a string if the
    property is not registerted in the property scope.  The value may be the default if not explicitly
    set, or None if no such property is known in the receiver's or parent chain's properties
    @throws IllegalArgumentException if property value does not conform to type
    @see IPropertyAccess#getValue(str)
    '''
    return object()


  def getPartId(self):
    '''
    Get the part associated with the configuration (or the project handle's, if unset)
    @return part id
    '''
    return str()


  def getSdkId(self):
    '''
    Get the SDK associated with the configuration (or the project handle's, if unset)
    @return SDK id
    '''
    return str()


  def getToolchainId(self):
    '''
    Get the toolchain associated with the configuration (or the project handle's, if unset)
    @return toolchain id
    '''
    return str()


  def getDescription(self):
    '''
    Human-readable description of the value for UI.

    This description is interpreted as HTML.

    @return description, never None (but may be blank)
    '''
    return str()


  def getId(self):
    '''
    The fully qualified identifer for this entity, including the ids of its parents, up to an implementation-defined root.
    '''
    return str()


  def getLabel(self):
    '''
    The label for the item, displayed in UI.
    @return label, never None
    '''
    return str()


  def getName(self):
    '''
    The unique name for this item within its parent.   See {@link #getId()} for the full unique identifier.
    '''
    return str()


  def toString(self):
    '''
    Return the id and label.
    @return str
    '''
    return str()


  def getLabel(self):
    '''
    Label for the value, if it appears in UI.  This label is plain text.

    This may be a derived value, sourced from the wrapped MDescriptor.  If
    that value is None or blank, a label is automatically
    generated from the {@link #getName()}.
    @return label, never None
    '''
    return str()


  def getBoardIds(self):
    '''
    Get the boards associated with the configuration (or the project handle's, if unset)
    @return board ids
    '''
    return list()


  def gatherListProperty(self, _str):
    return list()


  def getInstallationPath(self):
    '''
    Get the path where the installation lives on the system.
    @return path
    @throws IOException if path cannot be resolved
    @see CoreProperties#INSTALLATION_PATH
    '''
    return org_eclipse_core_runtime_IPath()


class com_silabs_ss_framework_project_api_core_ISelectableWriteableDescriptor(com_silabs_ss_framework_project_api_core_ISelectableDescriptor):
  '''
  Interface for handling writing boards, parts, sdks,
  and toolchains.
  '''
  def equals(self, _object):
    '''
    Returns True if the {@code obj} has the same class and the same id.
    @see object#equals(object)
    '''
    return bool()


  def isBuiltin(self):
    '''
    Tell whether the descriptor (and entity) are considered built in to the product.
    This may be used to distinguish bundled descriptors vs. ones discovered on
    the user's system.
    @see CoreProperties#BUILTIN
    '''
    return bool()


  def isHidden(self):
    '''
    Tell whether the object is intended to be hidden from UI.
    @see CoreProperties#HIDDEN
    '''
    return bool()


  def copy(self):
    '''
    Deep-copy the receiver
    @return new copy
    '''
    return com_silabs_ss_platform_api_content_core_IDescriptor()


  def getPropertyAccess(self):
    '''
    Get the full property access for the descriptor.
    '''
    return com_silabs_ss_platform_api_content_core_IPropertyAccess()


  def getPropertyMapper(self):
    '''
    Get the property mapper for the descriptor.
    '''
    return com_silabs_ss_platform_api_content_core_IPropertyMapper()


  def getRegistry(self):
    '''
    Get the owning registry.
    @return registry, non-None if descriptor is contained in a registry
    '''
    return com_silabs_ss_platform_api_content_core_registry_IRegistry()


  def hashCode(self):
    '''
    Returns the hash code of the receiver's id.
    @see object#hashCode()
    '''
    return int()


  def getProperty(self, key):
    '''
    Get the value of a property for the receiver, parent chain, or default if not defined in any of them.
    @param key name of a property in receiver's scope or fully qualified property name
    @type key: str
    @return value, in the Java type represented by the property's {@link IType}, or a string if the
    property is not registerted in the property scope.  The value may be the default if not explicitly
    set, or None if no such property is known in the receiver's or parent chain's properties
    @throws IllegalArgumentException if property value does not conform to type
    @see IPropertyAccess#getValue(str)
    '''
    return object()


  def getProperty(self, key, _com_silabs_ss_platform_api_content_core_IType):
    '''
    Get the value of a property for the receiver, parent chain, or default if not defined in any of them.
    @param key name of a property in receiver's scope or fully qualified property name
    @type key: str
    @return value, in the Java type represented by the property's {@link IType}, or a string if the
    property is not registerted in the property scope.  The value may be the default if not explicitly
    set, or None if no such property is known in the receiver's or parent chain's properties
    @throws IllegalArgumentException if property value does not conform to type
    @see IPropertyAccess#getValue(str)
    '''
    return object()


  def getProperty(self, key, _str):
    '''
    Get the value of a property for the receiver, parent chain, or default if not defined in any of them.
    @param key name of a property in receiver's scope or fully qualified property name
    @type key: str
    @return value, in the Java type represented by the property's {@link IType}, or a string if the
    property is not registerted in the property scope.  The value may be the default if not explicitly
    set, or None if no such property is known in the receiver's or parent chain's properties
    @throws IllegalArgumentException if property value does not conform to type
    @see IPropertyAccess#getValue(str)
    '''
    return object()


  def getPartId(self):
    '''
    Get the part associated with the configuration (or the project handle's, if unset)
    @return part id
    '''
    return str()


  def getSdkId(self):
    '''
    Get the SDK associated with the configuration (or the project handle's, if unset)
    @return SDK id
    '''
    return str()


  def getToolchainId(self):
    '''
    Get the toolchain associated with the configuration (or the project handle's, if unset)
    @return toolchain id
    '''
    return str()


  def getDescription(self):
    '''
    Human-readable description of the value for UI.

    This description is interpreted as HTML.

    @return description, never None (but may be blank)
    '''
    return str()


  def getId(self):
    '''
    The fully qualified identifer for this entity, including the ids of its parents, up to an implementation-defined root.
    '''
    return str()


  def getLabel(self):
    '''
    The label for the item, displayed in UI.
    @return label, never None
    '''
    return str()


  def getName(self):
    '''
    The unique name for this item within its parent.   See {@link #getId()} for the full unique identifier.
    '''
    return str()


  def toString(self):
    '''
    Return the id and label.
    @return str
    '''
    return str()


  def getLabel(self):
    '''
    Label for the value, if it appears in UI.  This label is plain text.

    This may be a derived value, sourced from the wrapped MDescriptor.  If
    that value is None or blank, a label is automatically
    generated from the {@link #getName()}.
    @return label, never None
    '''
    return str()


  def getBoardIds(self):
    '''
    Get the boards associated with the configuration (or the project handle's, if unset)
    @return board ids
    '''
    return list()


  def gatherListProperty(self, _str):
    return list()


  def getInstallationPath(self):
    '''
    Get the path where the installation lives on the system.
    @return path
    @throws IOException if path cannot be resolved
    @see CoreProperties#INSTALLATION_PATH
    '''
    return org_eclipse_core_runtime_IPath()


  def setBoardIds(self, boardId
  ):
    '''
    Set the boards associated with the configuration (overrides the project handle's, unless None)
    @param boardId

    @type boardId
    : list
    '''
    pass


  def setPartId(self, partId
  ):
    '''
    Set the part associated with the configuration (overrides the project handle's, unless None)
    @param partId

    @type partId
    : str
    '''
    pass


  def setSdkId(self, sdkId
  ):
    '''
    Set the SDK id associated with the configuration (overrides the project handle's, unless None)
    @param sdkId

    @type sdkId
    : str
    '''
    pass


  def setToolchainId(self, toolchainId
  ):
    '''
    Set the toolchain associated with the configuration (overrides the project handle's, unless None)
    @param toolchainId

    @type toolchainId
    : str
    '''
    pass


class com_silabs_ss_framework_project_api_core_engine_IProjectModel(object):
  '''
  This is the interface to a modeled project instance.

  The model consists mainly of the EMF model ({@link IProjectModel#getModel()}),
  which mirrors the .slsproj file.

  Since the model can contain variable references, and may reflect changes against
  an existing project, it also contains a record of the current state of resources in the project 
  ({@link IProjectModel#getProjectResourceTree()}), along with a method to map
  variables to values ({@link IProjectModel#getVariableLookup()}), and methods
  for mapping URI references in the project.
  '''
  def init(self):
    self.rawModel = self.getRawModel()

    self.model = self.getModel()

    self.projectResourceTree = self.getProjectResourceTree()

    self.variableLookup = self.getVariableLookup()

    self.contentRootURI = self.getContentRootURI()

  URI_PROJECT_PREFIX = str
  '''
  This URI prefix denotes a path relative to the generated project.
  @value "studio:/project/"
  '''

  VAR_CONFIG_NAME = str
  '''
  '''

  VAR_PROJECT_NAME = str
  '''
  '''

  def getRawModel(self):
    '''
    For existing projects converted to "user", represents
    the "raw" model.
    @return 
    '''
    return com_silabs_ss_framework_project_api_core_engine_IProjectModel()


  def getModel(self):
    '''
    Get the root of the model
    '''
    return com_silabs_ss_framework_project_api_core_model_MProject()


  def getProjectResourceTree(self):
    '''
    For existing projects, yields the mapping of resources to
    their providing modules.
    '''
    return com_silabs_ss_framework_project_api_core_model_MProjectResourceTree()


  def getVariableLookup(self):
    '''
    Get the variable lookup callback used by this model.
    '''
    return com_silabs_ss_platform_api_rcp_core_variables_IVariableLookup()


  def resolveOutputBaseFilename(self, outputPattern
  , _com_silabs_ss_framework_project_api_core_IBuildConfigurationDescriptor):
    '''
    Resolve the output path for the content generated by a project with
    the given configuration.
    @param outputPattern

    @type outputPattern
    : str
    '''
    return str()


  def resolveString(self, string):
    '''
    Resolve an arbitrary string against the variable lookup
    @param string
    @type string: str
    @return resolved string
    '''
    return str()


  def wrapReference(self, var):
    '''
    Generate a reference to the given variable.  Such references may be embedded in
    the name fields of {@link MEntry} objects in the {@link #getModel()}, and expanded
    during #resolve...() methods or #accept() visitors via {@link #getVariableLookup()}.
    @param var variable name
    @type var: str
    @return wrapped reference, e.g. "$(var)"
    '''
    return str()


  def getContentRootURI(self):
    '''
    Get the variable-resolved URI to the root of the project content.
    @return URI
    '''
    return java_net_URI()


  def resolveURI(self, parent, parentURI, entry):
    '''
    Resolve an MEntry to a URI relative to some containing entry, which will be of the form:

    resource:/project/path/to/something
    project:/path/to/something
    file:/path/to/something
    platform:/path/to/something
    bundle:/.../
    etc.

    	 *
    The path can be consumed by {@link URIUtils#resolveURIToPath(URI)} if needed.
    @param parent parent entry
    @param parentURI URI for parent
    @param entry an entry to resolve (which must be on child path of parent)
    @type parent: com_silabs_ss_framework_project_api_core_model_MEntry
    @type parentURI: java_net_URI
    @type entry: com_silabs_ss_framework_project_api_core_model_MEntry
    @return platform URI
    '''
    return java_net_URI()


  def resolveURI(self, parent, parentURI):
    '''
    Resolve an MEntry to a URI relative to some containing entry, which will be of the form:

    resource:/project/path/to/something
    project:/path/to/something
    file:/path/to/something
    platform:/path/to/something
    bundle:/.../
    etc.

    	 *
    The path can be consumed by {@link URIUtils#resolveURIToPath(URI)} if needed.
    @param parent parent entry
    @param parentURI URI for parent
    @param entry an entry to resolve (which must be on child path of parent)
    @type parent: str
    @type parentURI: bool
    @return platform URI
    '''
    return java_net_URI()


  def resolveURI(self, parent, parentURI, entry):
    '''
    Resolve an MEntry to a URI relative to some containing entry, which will be of the form:

    resource:/project/path/to/something
    project:/path/to/something
    file:/path/to/something
    platform:/path/to/something
    bundle:/.../
    etc.

    	 *
    The path can be consumed by {@link URIUtils#resolveURIToPath(URI)} if needed.
    @param parent parent entry
    @param parentURI URI for parent
    @param entry an entry to resolve (which must be on child path of parent)
    @type parent: java_net_URI
    @type parentURI: bool
    @type entry: bool
    @return platform URI
    '''
    return java_net_URI()


  def setContentRootURI(self, _java_net_URI):
    '''
    Set the content root, overriding that in the MProject
    @return URI
    '''
    pass


class com_silabs_ss_framework_project_api_core_model_DocumentRoot(org_eclipse_emf_ecore_EObject):
  '''
  A representation of the model object 'Document Root'.

   *

  The following features are supported:

  	{@link com.silabs.ss.framework.project.api.core.model.DocumentRoot#getMixed Mixed}

  	{@link com.silabs.ss.framework.project.api.core.model.DocumentRoot#getXMLNSPrefixMap XMLNS Prefix Map}

  	{@link com.silabs.ss.framework.project.api.core.model.DocumentRoot#getXSISchemaLocation XSI Schema Location}

  	{@link com.silabs.ss.framework.project.api.core.model.DocumentRoot#getProject Project}

   *
  @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getDocumentRoot()
  @model extendedMetaData="name='' kind='mixed'"
  '''
  def init(self):
    self.project = self.getProject()

    self.xMLNSPrefixMap = self.getXMLNSPrefixMap()

    self.xSISchemaLocation = self.getXSISchemaLocation()

    self.mixed = self.getMixed()

  def getProject(self):
    '''
    Returns the value of the 'Project' containment reference.

    If the meaning of the 'Project' containment reference isn't clear,
    there really should be more of a description here...

    @return the value of the 'Project' containment reference.
    @see #setProject(MProject)
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getDocumentRoot_Project()
    @model containment="True" upper="-2" transient="True" volatile="True" derived="True"
    extendedMetaData="kind='element' name='project' namespace='##targetNamespace'"
    '''
    return com_silabs_ss_framework_project_api_core_model_MProject()


  def getXMLNSPrefixMap(self):
    '''
    Returns the value of the 'XMLNS Prefix Map' map.
    The key is of type {@link str},
    and the value is of type {@link str},

    If the meaning of the 'XMLNS Prefix Map' map isn't clear,
    there really should be more of a description here...

    @return the value of the 'XMLNS Prefix Map' map.
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getDocumentRoot_XMLNSPrefixMap()
    @model mapType="org.eclipse.emf.ecore.EstrTostrMapEntry" transient="True"
    extendedMetaData="kind='attribute' name='xmlns:prefix'"
    '''
    return list()


  def getXSISchemaLocation(self):
    '''
    Returns the value of the 'XSI Schema Location' map.
    The key is of type {@link str},
    and the value is of type {@link str},

    If the meaning of the 'XSI Schema Location' map isn't clear,
    there really should be more of a description here...

    @return the value of the 'XSI Schema Location' map.
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getDocumentRoot_XSISchemaLocation()
    @model mapType="org.eclipse.emf.ecore.EstrTostrMapEntry" transient="True"
    extendedMetaData="kind='attribute' name='xsi:schemaLocation'"
    '''
    return list()


  def getMixed(self):
    '''
    Returns the value of the 'Mixed' attribute list.
    The list contents are of type {@link org.eclipse.emf.ecore.util.FeatureMap.Entry}.

    If the meaning of the 'Mixed' attribute list isn't clear,
    there really should be more of a description here...

    @return the value of the 'Mixed' attribute list.
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getDocumentRoot_Mixed()
    @model unique="False" dataType="org.eclipse.emf.ecore.EFeatureMapEntry" many="True"
    extendedMetaData="kind='elementWildcard' name=':mixed'"
    '''
    return list()


  def setProject(self, value):
    '''
    Sets the value of the '{@link com.silabs.ss.framework.project.api.core.model.DocumentRoot#getProject Project}' containment reference.

    @param value the new value of the 'Project' containment reference.
    @see #getProject()

    @type value: com_silabs_ss_framework_project_api_core_model_MProject
    '''
    pass


class com_silabs_ss_framework_project_api_core_model_EMappingStatus(java_lang_Enum):
  def init(self):
    self.value = self.getValue()

    self.literal = self.getLiteral()

    self.name = self.getName()

  MAPPED = com_silabs_ss_framework_project_api_core_model_EMappingStatus
  '''
  '''

  MAPPED_VALUE = int
  '''
  The 'MAPPED' literal value.

  If the meaning of 'MAPPED' literal object isn't clear,
  there really should be more of a description here...

  @see #MAPPED
  @model 

  @ordered 

  @value 1
  '''

  PARTIALLY_MAPPED = com_silabs_ss_framework_project_api_core_model_EMappingStatus
  '''
  '''

  PARTIALLY_MAPPED_VALUE = int
  '''
  The 'PARTIALLY MAPPED' literal value.

  If the meaning of 'PARTIALLY MAPPED' literal object isn't clear,
  there really should be more of a description here...

  @see #PARTIALLY_MAPPED
  @model 

  @ordered 

  @value -1
  '''

  UNMAPPED = com_silabs_ss_framework_project_api_core_model_EMappingStatus
  '''
  '''

  UNMAPPED_VALUE = int
  '''
  The 'UNMAPPED' literal value.

  If the meaning of 'UNMAPPED' literal object isn't clear,
  there really should be more of a description here...

  @see #UNMAPPED
  @model 

  @ordered 

  @value 0
  '''

  VALUES = list
  '''
  A public read-only list of all the 'EMapping Status' enumerators.

  @value Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY))
  '''

  VALUES_ARRAY = list
  '''
  '''

  def getValue(self):
    '''
    '''
    return int()


  def getLiteral(self):
    '''
    '''
    return str()


  def getName(self):
    '''
    '''
    return str()


  def toString(self):
    '''
    Returns the literal value of the enumerator, which is its string representation.
    '''
    return str()


  def get(self, _int):
    return com_silabs_ss_framework_project_api_core_model_EMappingStatus()


  def get(self, _str):
    return com_silabs_ss_framework_project_api_core_model_EMappingStatus()


  def getByName(self, _str):
    return com_silabs_ss_framework_project_api_core_model_EMappingStatus()


  def valueOf(self, _str):
    return com_silabs_ss_framework_project_api_core_model_EMappingStatus()


  def values(self):
    return list()


class com_silabs_ss_framework_project_api_core_model_EValueStatus(java_lang_Enum):
  def init(self):
    self.value = self.getValue()

    self.literal = self.getLiteral()

    self.name = self.getName()

  KNOWN_CUSTOMIZED = com_silabs_ss_framework_project_api_core_model_EValueStatus
  '''
  '''

  KNOWN_CUSTOMIZED_VALUE = int
  '''
  The 'KNOWN CUSTOMIZED' literal value.

  If the meaning of 'KNOWN CUSTOMIZED' literal object isn't clear,
  there really should be more of a description here...

  @see #KNOWN_CUSTOMIZED
  @model 

  @ordered 

  @value 1
  '''

  KNOWN_DEFAULT = com_silabs_ss_framework_project_api_core_model_EValueStatus
  '''
  '''

  KNOWN_DEFAULT_VALUE = int
  '''
  The 'KNOWN DEFAULT' literal value.

  If the meaning of 'KNOWN DEFAULT' literal object isn't clear,
  there really should be more of a description here...

  @see #KNOWN_DEFAULT
  @model 

  @ordered 

  @value 0
  '''

  UNKNOWN = com_silabs_ss_framework_project_api_core_model_EValueStatus
  '''
  '''

  UNKNOWN_VALUE = int
  '''
  The 'UNKNOWN' literal value.

  If the meaning of 'UNKNOWN' literal object isn't clear,
  there really should be more of a description here...

  @see #UNKNOWN
  @model 

  @ordered 

  @value -1
  '''

  VALUES = list
  '''
  A public read-only list of all the 'EValue Status' enumerators.

  @value Collections.unmodifiableList(Arrays.asList(VALUES_ARRAY))
  '''

  VALUES_ARRAY = list
  '''
  '''

  def getValue(self):
    '''
    '''
    return int()


  def getLiteral(self):
    '''
    '''
    return str()


  def getName(self):
    '''
    '''
    return str()


  def toString(self):
    '''
    Returns the literal value of the enumerator, which is its string representation.
    '''
    return str()


  def get(self, _int):
    return com_silabs_ss_framework_project_api_core_model_EValueStatus()


  def get(self, _str):
    return com_silabs_ss_framework_project_api_core_model_EValueStatus()


  def getByName(self, _str):
    return com_silabs_ss_framework_project_api_core_model_EValueStatus()


  def valueOf(self, _str):
    return com_silabs_ss_framework_project_api_core_model_EValueStatus()


  def values(self):
    return list()


class com_silabs_ss_framework_project_api_core_model_IResourceFilterInfo(object):
  '''
  This opaque interface is used during project imports to represent
  Eclipse resource filter information.
   *
  '''
  pass
class com_silabs_ss_framework_project_api_core_model_MBuildSetting(com_silabs_ss_framework_project_api_core_model_MSelectable):
  '''
  A representation of the model object 'MBuild Setting'.

   *

  This defines a build setting to apply to the container.

   *

  The following features are supported:

  	{@link com.silabs.ss.framework.project.api.core.model.MBuildSetting#getLanguageCompatibility Language Compatibility}

   *
  @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMBuildSetting()
  @model abstract="True"
  extendedMetaData="name='buildSetting:0' kind='group' namespace='##targetNamespace'"
  '''
  def init(self):
    self.languageCompatibility = self.getLanguageCompatibility()

  def getLanguageCompatibility(self):
    '''
    Returns the value of the 'Language Compatibility' attribute.
    The default value is "ALL".

    Defines the language(s) for which this entity applies.  

    This has the same syntax as other compatibility grammars.

    See ELanguage literal strings for allowed values.

    @return the value of the 'Language Compatibility' attribute.
    @see #setLanguageCompatibility(str)
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMBuildSetting_LanguageCompatibility()
    @model default="ALL"
    '''
    return str()


  def setLanguageCompatibility(self, value):
    '''
    Sets the value of the '{@link com.silabs.ss.framework.project.api.core.model.MBuildSetting#getLanguageCompatibility Language Compatibility}' attribute.

    @param value the new value of the 'Language Compatibility' attribute.
    @see #getLanguageCompatibility()

    @type value: str
    '''
    pass


class com_silabs_ss_framework_project_api_core_model_MConfigSettings(org_eclipse_emf_ecore_EObject):
  '''
  A representation of the model object 'MConfig Settings'.

   *

  This contains settings (project-wide or per-configuration) configuring the build.

   *

  The following features are supported:

  	{@link com.silabs.ss.framework.project.api.core.model.MConfigSettings#getSourceFolders Source Folders}

  	{@link com.silabs.ss.framework.project.api.core.model.MConfigSettings#getExcludedPaths Excluded Paths}

  	{@link com.silabs.ss.framework.project.api.core.model.MConfigSettings#getOutputFileBase Output File Base}

  	{@link com.silabs.ss.framework.project.api.core.model.MConfigSettings#getEntrySettings Entry Settings}

  	{@link com.silabs.ss.framework.project.api.core.model.MConfigSettings#getModules Modules}

  	{@link com.silabs.ss.framework.project.api.core.model.MConfigSettings#getPrebuildStep Prebuild Step}

  	{@link com.silabs.ss.framework.project.api.core.model.MConfigSettings#getPostbuildStep Postbuild Step}

   *
  @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMConfigSettings()
  @model 
  '''
  def init(self):
    self.outputFileBase = self.getOutputFileBase()

    self.postbuildStep = self.getPostbuildStep()

    self.prebuildStep = self.getPrebuildStep()

    self.excludedPaths = self.getExcludedPaths()

    self.modules = self.getModules()

    self.sourceFolders = self.getSourceFolders()

    self.entrySettings = self.getEntrySettings()

  def getOutputFileBase(self):
    '''
    Returns the value of the 'Output File Base' attribute.

    The base name of the project's output -- if unspecified, the project name is used.

    @return the value of the 'Output File Base' attribute.
    @see #setOutputFileBase(str)
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMConfigSettings_OutputFileBase()
    @model extendedMetaData="namespace='##targetNamespace' kind='element'"
    '''
    return str()


  def getPostbuildStep(self):
    '''
    Returns the value of the 'Postbuild Step' attribute.

    The base name of the project's output -- if unspecified, the project name is used.

    @return the value of the 'Postbuild Step' attribute.
    @see #setPostbuildStep(str)
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMConfigSettings_PostbuildStep()
    @model extendedMetaData="namespace='##targetNamespace' kind='element'"
    '''
    return str()


  def getPrebuildStep(self):
    '''
    Returns the value of the 'Prebuild Step' attribute.

    The base name of the project's output -- if unspecified, the project name is used.

    @return the value of the 'Prebuild Step' attribute.
    @see #setPrebuildStep(str)
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMConfigSettings_PrebuildStep()
    @model extendedMetaData="namespace='##targetNamespace' kind='element'"
    '''
    return str()


  def getExcludedPaths(self):
    '''
    Returns the value of the 'Excluded Paths' attribute list.
    The list contents are of type {@link str}.

    Collection of project-relative paths excluded from the build of this configuration.

    Unlike in CDT, this is a flat list, not hierarchical, thus other source folders do not appear here.

    @return the value of the 'Excluded Paths' attribute list.
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMConfigSettings_ExcludedPaths()
    @model extendedMetaData="name='excludedPath' kind='elementOnly' namespace='##targetNamespace'"
    '''
    return list()


  def getModules(self):
    '''
    Returns the value of the 'Modules' containment reference list.
    The list contents are of type {@link com.silabs.ss.framework.project.api.core.model.MModule}.

    Collection of module identifiers included in the configuration or project.

    Modules are applied in order, relative to each other, and the settings they
    contribute are always lower in priority to other settings explicitly mentioned
    in the project.

    @return the value of the 'Modules' containment reference list.
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMConfigSettings_Modules()
    @model containment="True"
    extendedMetaData="kind='element' name='module' namespace='##targetNamespace'"
    '''
    return list()


  def getSourceFolders(self):
    '''
    Returns the value of the 'Source Folders' attribute list.
    The list contents are of type {@link str}.

    Collection of project-relative paths used for source folders.

    Unlike in CDT, this is a flat list, not hierarchical, and does not contain parents of source folders.

    @return the value of the 'Source Folders' attribute list.
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMConfigSettings_SourceFolders()
    @model extendedMetaData="name='sourceFolder' kind='elementOnly' namespace='##targetNamespace'"
    '''
    return list()


  def getEntrySettings(self):
    '''
    Returns the value of the 'Entry Settings' map.
    The key is of type {@link com.silabs.ss.framework.project.api.core.model.MEntry},
    and the value is of type {@link com.silabs.ss.framework.project.api.core.model.MSettingsSite},

    This container holds entry-specific settings for the configuration.  This 
    augments or overrides any settings held specifically on the entry itself (which apply to all configurations).

    @return the value of the 'Entry Settings' map.
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMConfigSettings_EntrySettings()
    @model mapType="com.silabs.ss.framework.project.api.core.model.MEntryToMSettingsSiteMap"
    extendedMetaData="name='entrySetting' kind='elementOnly' namespace='##targetNamespace'"
    '''
    return list()


  def setOutputFileBase(self, value):
    '''
    Sets the value of the '{@link com.silabs.ss.framework.project.api.core.model.MConfigSettings#getOutputFileBase Output File Base}' attribute.

    @param value the new value of the 'Output File Base' attribute.
    @see #getOutputFileBase()

    @type value: str
    '''
    pass


  def setPostbuildStep(self, value):
    '''
    Sets the value of the '{@link com.silabs.ss.framework.project.api.core.model.MConfigSettings#getPostbuildStep Postbuild Step}' attribute.

    @param value the new value of the 'Postbuild Step' attribute.
    @see #getPostbuildStep()

    @type value: str
    '''
    pass


  def setPrebuildStep(self, value):
    '''
    Sets the value of the '{@link com.silabs.ss.framework.project.api.core.model.MConfigSettings#getPrebuildStep Prebuild Step}' attribute.

    @param value the new value of the 'Prebuild Step' attribute.
    @see #getPrebuildStep()

    @type value: str
    '''
    pass


class com_silabs_ss_framework_project_api_core_model_MConfiguration(com_silabs_ss_platform_api_content_core_model_MDescriptor):
  '''
  A representation of the model object 'MConfiguration'.

   *

  This defines a build configuration in the project.

  This builds on the project by specifying settings that differ from the project and 
  optionally modifying the build content for the project.

  The configuration may only support a given part, SDK, or toolchain -- the compatibility flags 
  determine what choices are allowed.  This may be as specific as listing one exact part that matches,
  or may specify an entire part family or architecture.  See, e.g., CoreProperties#PART_COMPATIBLITY,
  and related options for SDK and toolchain compatibility.

   *

  The following features are supported:

  	{@link com.silabs.ss.framework.project.api.core.model.MConfiguration#getStockConfigCompatibility Stock Config Compatibility}

   *
  @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMConfiguration()
  @model extendedMetaData="kind='element' name='configuration' namespace='##targetNamespace'"
  '''
  def init(self):
    self.id = self.getId()

    self.name = self.getName()

    self.stockConfigCompatibility = self.getStockConfigCompatibility()

  def getId(self):
    return str()


  def getName(self):
    return str()


  def getStockConfigCompatibility(self):
    '''
    Returns the value of the 'Stock Config Compatibility' attribute.

    This attribute, used in client module projects, 
    indicates that the configuration's contents are only applied to user projects 
    which were derived from the given stock configuration.

    The format is akin to that of CoreProperties#PART_COMPATIBILITY,
    and is usually a list of matching stock configuration ids and/or
    negated stock configuration ids (preceded with '-').

    In the event that multiple client project configurations match, 
    only the first defined configuration matching a given user project
    configuration is applied to the user project.

    @return the value of the 'Stock Config Compatibility' attribute.
    @see #setStockConfigCompatibility(str)
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMConfiguration_StockConfigCompatibility()
    @model 
    '''
    return str()


  def getPropertyScope(self):
    '''
    Returns the value of the 'Property Scope' attribute.
    The default value is "".

    The identifier for the property scope (IPropertyGroup id) which define the properties referenced.

    @return the value of the 'Property Scope' attribute.
    @see #setPropertyScope(str)
    @see com.silabs.ss.platform.api.content.core.model.StudioModelPackage#getMDescriptor_PropertyScope()
    @model default=""
    '''
    return str()


  def getProperties(self):
    '''
    Returns the value of the 'Properties' map.
    The key is of type {@link str},
    and the value is of type {@link str},

    If the meaning of the 'Property Settings' map isn't clear,
    there really should be more of a description here...

    These are (key, value) pairs associated with a descriptor.

    These are serialized versions of typed properties via {Type,Property}ConversionUtils#stringizeValue().

    @return the value of the 'Properties' map.
    @see com.silabs.ss.platform.api.content.core.model.StudioModelPackage#getMDescriptor_Properties()
    @model mapType="com.silabs.ss.platform.api.content.core.model.strTostrMap"
    extendedMetaData="name='property' kind='elementOnly' namespace='##targetNamespace'"
    '''
    return list()


  def setStockConfigCompatibility(self, value):
    '''
    Sets the value of the '{@link com.silabs.ss.framework.project.api.core.model.MConfiguration#getStockConfigCompatibility Stock Config Compatibility}' attribute.

    @param value the new value of the 'Stock Config Compatibility' attribute.
    @see #getStockConfigCompatibility()

    @type value: str
    '''
    pass


  def setPropertyScope(self, value):
    '''
    Sets the value of the '{@link com.silabs.ss.platform.api.content.core.model.MDescriptor#getPropertyScope Property Scope}' attribute.

    @param value the new value of the 'Property Scope' attribute.
    @see #getPropertyScope()

    @type value: str
    '''
    pass


class com_silabs_ss_framework_project_api_core_model_MContent(com_silabs_ss_framework_project_api_core_model_MEntry):
  '''
  A representation of the model object 'MContent'.

   *

  This represents content which will be copied or linked into the project as an entry.  

   *

  The following features are supported:

  	{@link com.silabs.ss.framework.project.api.core.model.MContent#getLinked Linked}

  	{@link com.silabs.ss.framework.project.api.core.model.MContent#getUri Uri}

  	{@link com.silabs.ss.framework.project.api.core.model.MContent#isVirtual Virtual}

   *
  @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMContent()
  @model 
  '''
  def init(self):
    self.linked = self.getLinked()

    self.uri = self.getUri()

  LINKED_DEFAULT = bool
  '''
  '''

  VIRTUAL_FOLDER_URI = str
  '''
  URI that defines virtual folders
  @value "virtual:/virtual"
  '''

  def isLinked(self):
    '''
    Return the value from {@link #getLinked()} or the default value
    if None.
    @return 
    '''
    return bool()


  def isVirtual(self):
    '''
    Returns the value of the 'Virtual' attribute.

    If set, this indicates the folder is virtual and represents a group in the project.  It does not correspond to anything on disk, but still holds contents (all of which are links).

    @return the value of the 'Virtual' attribute.
    @see #setVirtual(boolean)
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMContent_Virtual()
    @model transient="True" derived="True"
    '''
    return bool()


  def getLinked(self):
    '''
    Returns the value of the 'Linked' attribute.

    If set, this indicates the content should be linked from its original location.  Otherwise,  the content will be copied from its original location.

    @return the value of the 'Linked' attribute.
    @see #setLinked(Boolean)
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMContent_Linked()
    @model 
    '''
    return bool()


  def getUri(self):
    '''
    Returns the value of the 'Uri' attribute.

    This is a URI, by default relative to the parent's content location, and possibly containing $(variable) references, where the receiver's content is located.

    A None or empty string is replaced with the entry's name.

    @return the value of the 'Uri' attribute.
    @see #setUri(str)
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMContent_Uri()
    @model 
    '''
    return str()


  def setLinked(self, value):
    '''
    Sets the value of the '{@link com.silabs.ss.framework.project.api.core.model.MContent#getLinked Linked}' attribute.

    @param value the new value of the 'Linked' attribute.
    @see #getLinked()

    @type value: bool
    '''
    pass


  def setUri(self, value):
    '''
    Sets the value of the '{@link com.silabs.ss.framework.project.api.core.model.MContent#getUri Uri}' attribute.

    @param value the new value of the 'Uri' attribute.
    @see #getUri()

    @type value: str
    '''
    pass


  def setVirtual(self, value):
    '''
    Sets the value of the '{@link com.silabs.ss.framework.project.api.core.model.MContent#isVirtual Virtual}' attribute.

    @param value the new value of the 'Virtual' attribute.
    @see #isVirtual()

    @type value: bool
    '''
    pass


class com_silabs_ss_framework_project_api_core_model_MConvertedOption(org_eclipse_emf_ecore_EObject):
  '''
  A representation of the model object 'MConverted Option'.

   *

  This represents one option, which is a build setting in a configuration that 
  came from an external source (e.g. an import operation).

  These options exist in the model transiently during conversion
  operations, inside MEntrySettings#convertedSettings.

   *

  The following features are supported:

  	{@link com.silabs.ss.framework.project.api.core.model.MConvertedOption#getToolId Tool Id}

  	{@link com.silabs.ss.framework.project.api.core.model.MConvertedOption#getOptionId Option Id}

  	{@link com.silabs.ss.framework.project.api.core.model.MConvertedOption#getValue Value}

  	{@link com.silabs.ss.framework.project.api.core.model.MConvertedOption#getValueStatus Value Status}

   *
  @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMConvertedOption()
  @model abstract="True"
  extendedMetaData="name='convertedOption' kind='elementOnly' namespace='##targetNamespace' affiliation='buildSetting'"
  '''
  def init(self):
    self.valueStatus = self.getValueStatus()

    self.value = self.getValue()

    self.optionId = self.getOptionId()

    self.toolId = self.getToolId()

  def getValueStatus(self):
    '''
    Returns the value of the 'Value Status' attribute.
    The literals are from the enumeration {@link com.silabs.ss.framework.project.api.core.model.EValueStatus}.

    This tells whether the value for the option is known to be default, 
    customized, or unknown.

    This is primarily used to decide how important it might be that
    a option could not be converted.

    @return the value of the 'Value Status' attribute.
    @see com.silabs.ss.framework.project.api.core.model.EValueStatus
    @see #setValueStatus(EValueStatus)
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMConvertedOption_ValueStatus()
    @model 
    '''
    return com_silabs_ss_framework_project_api_core_model_EValueStatus()


  def getValue(self):
    '''
    Returns the value of the 'Value' attribute.

    Value for the option, as a string.

    @return the value of the 'Value' attribute.
    @see #setValue(object)
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMConvertedOption_Value()
    @model 
    '''
    return object()


  def getOptionId(self):
    '''
    Returns the value of the 'Option Id' attribute.

    The identifier for an option. This should be unique with respect to the tool so other
    converters can identify it.

    @return the value of the 'Option Id' attribute.
    @see #setOptionId(str)
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMConvertedOption_OptionId()
    @model 
    '''
    return str()


  def getToolId(self):
    '''
    Returns the value of the 'Tool Id' attribute.

    This is the identifier for the tool that uses the option.
    This should be globally unique and include a version.

    @return the value of the 'Tool Id' attribute.
    @see #setToolId(str)
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMConvertedOption_ToolId()
    @model 
    '''
    return str()


  def setOptionId(self, value):
    '''
    Sets the value of the '{@link com.silabs.ss.framework.project.api.core.model.MConvertedOption#getOptionId Option Id}' attribute.

    @param value the new value of the 'Option Id' attribute.
    @see #getOptionId()

    @type value: str
    '''
    pass


  def setToolId(self, value):
    '''
    Sets the value of the '{@link com.silabs.ss.framework.project.api.core.model.MConvertedOption#getToolId Tool Id}' attribute.

    @param value the new value of the 'Tool Id' attribute.
    @see #getToolId()

    @type value: str
    '''
    pass


  def setValue(self, value):
    '''
    Sets the value of the '{@link com.silabs.ss.framework.project.api.core.model.MConvertedOption#getValue Value}' attribute.

    @param value the new value of the 'Value' attribute.
    @see #getValue()

    @type value: object
    '''
    pass


  def setValueStatus(self, value):
    '''
    Sets the value of the '{@link com.silabs.ss.framework.project.api.core.model.MConvertedOption#getValueStatus Value Status}' attribute.

    @param value the new value of the 'Value Status' attribute.
    @see com.silabs.ss.framework.project.api.core.model.EValueStatus
    @see #getValueStatus()

    @type value: com_silabs_ss_framework_project_api_core_model_EValueStatus
    '''
    pass


  def updateFrom(self, option, value):
    '''
    Assign the option from the given option property and value.
    @param option
    @param value
    @throws IllegalArgumentException if the value does not match the option's type
    @throws IllegalStateException if a different value is already applied to this option

    @type option: com_silabs_ss_platform_api_content_core_IProperty
    @type value: object
    '''
    pass


class com_silabs_ss_framework_project_api_core_model_MCustomization(com_silabs_ss_framework_project_api_core_model_MSelectable):
  '''
  A representation of the model object 'MCustomization'.

   *

  This node's value specifies a pattern (regular expression) for files or folders to customize a module's files.

   *

  The following features are supported:

  	{@link com.silabs.ss.framework.project.api.core.model.MCustomization#getPattern Pattern}

   *
  @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMCustomization()
  @model extendedMetaData="name='customization' kind='none'"
  '''
  def init(self):
    self.pattern = self.getPattern()

  def getPattern(self):
    '''
    Returns the value of the 'Pattern' attribute.

    Regular expression that applies to relative filenames or folder names from the module.

    Paths tested against the expression do not have a leading slash.  Path segments are separated with forward slashes.
    Folder entries have a trailing slash.

    Match examples:

    	A file at a known path:  src/foo.c

    	A file, no matter where it appears: (^|.*?/)somefile.c

    	An (empty) directory: emptyDir/

    	A directory and all its contents: emptyDir/.*

    @return the value of the 'Pattern' attribute.
    @see #setPattern(str)
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMCustomization_Pattern()
    @model 
    '''
    return str()


  def setPattern(self, value):
    '''
    Sets the value of the '{@link com.silabs.ss.framework.project.api.core.model.MCustomization#getPattern Pattern}' attribute.

    @param value the new value of the 'Pattern' attribute.
    @see #getPattern()

    @type value: str
    '''
    pass


class com_silabs_ss_framework_project_api_core_model_MEntry(com_silabs_ss_platform_api_content_core_model_MDescribable):
  '''
  A representation of the model object 'MEntry'.

   *

  This represents a structural entry in the project.

   *
   *
  @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMEntry()
  @model abstract="True"
  extendedMetaData="name='entry' kind='none'"
  '''
  pass
class com_silabs_ss_framework_project_api_core_model_MExclusion(com_silabs_ss_framework_project_api_core_model_MCustomization):
  '''
  A representation of the model object 'MExclusions'.

   *

  This node's value specifies a pattern (regular expression) for files or folders to exclude from the project.

   *
   *
  @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMExclusion()
  @model extendedMetaData="name='exclude' kind='elementOnly' namespace='##targetNamespace' affiliation='customization'"
  '''
  pass
class com_silabs_ss_framework_project_api_core_model_MFileContent(com_silabs_ss_framework_project_api_core_model_MFileEntry):
  '''
  A representation of the model object 'MFile Content'.

   *

  This entry maps to a file in the filesystem.

   *
   *
  @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMFileContent()
  @model extendedMetaData="name='fileContent' kind='elementOnly' namespace='##targetNamespace' affiliation='entry'"
  '''
  pass
class com_silabs_ss_framework_project_api_core_model_MFileEntry(com_silabs_ss_framework_project_api_core_model_MEntry):
  '''
  A representation of the model object 'MFile Entry'.

   *

  This represents a file in the project.

   *
   *
  @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMFileEntry()
  @model extendedMetaData="name='file' kind='elementOnly' namespace='##targetNamespace' affiliation='entry'"
  '''
  pass
class com_silabs_ss_framework_project_api_core_model_MFileReference(com_silabs_ss_framework_project_api_core_model_MReference):
  '''
  A representation of the model object 'MFile Reference'.

   *

  This node indicates that a file is referenced by the configuration, e.g. at build time.  

   *

  The following features are supported:

  	{@link com.silabs.ss.framework.project.api.core.model.MFileReference#getRef Ref}

   *
  @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMFileReference()
  @model 
  '''
  def init(self):
    self.ref = self.getRef()

    self.ref = self.getRef()

  def getRef(self):
    '''
    Returns the value of the 'Ref' reference.

    If the meaning of the 'Ref' reference isn't clear,
    there really should be more of a description here...

    @return the value of the 'Ref' reference.
    @see #setRef(MFileEntry)
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMFileReference_Ref()
    @model required="True"
    '''
    return com_silabs_ss_framework_project_api_core_model_MFileEntry()


  def setRef(self, value):
    '''
    Sets the value of the '{@link com.silabs.ss.framework.project.api.core.model.MFileReference#getRef Ref}' reference.

    @param value the new value of the 'Ref' reference.
    @see #getRef()

    @type value: com_silabs_ss_framework_project_api_core_model_MFileEntry
    '''
    pass


  def getRef(self):
    '''
    Returns the value of the 'Ref' reference.

    If the meaning of the 'Ref' reference isn't clear,
    there really should be more of a description here...

    @return the value of the 'Ref' reference.
    @see #setRef(MFileEntry)
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMFileReference_Ref()
    @model required="True"
    '''
    return com_silabs_ss_framework_project_api_core_model_MEntry()


class com_silabs_ss_framework_project_api_core_model_MFolderContent(com_silabs_ss_framework_project_api_core_model_MContent):
  '''
  A representation of the model object 'MFolder Content'.

   *

  This entry maps to a directory in the filesystem.  The content of the directory is represented by the "entries" children, modified by any customizations.

   *

  The following features are supported:

  	{@link com.silabs.ss.framework.project.api.core.model.MFolderContent#isIncludeAllFiles Include All Files}

  	{@link com.silabs.ss.framework.project.api.core.model.MFolderContent#isIncludeAllFolders Include All Folders}

   *
  @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMFolderContent()
  @model extendedMetaData="name='folderContent' kind='elementOnly' namespace='##targetNamespace' affiliation='entry'"
  '''
  def isIncludeAllFiles(self):
    '''
    Returns the value of the 'Include All Files' attribute.
    The default value is "True".

    If set (default), all normal files in a folder are included by default (excluding generated files, hidden files, VCS files, etc).  Otherwise, only explicit MInclusions are used to construct contents.

    @return the value of the 'Include All Files' attribute.
    @see #setIncludeAllFiles(boolean)
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMFolderContent_IncludeAllFiles()
    @model default="True"
    '''
    return bool()


  def isIncludeAllFolders(self):
    '''
    Returns the value of the 'Include All Folders' attribute.
    The default value is "True".

    If set (default), all normal folders in a folder are included by default (excluding generated folders, hidden folders, VCS folders, etc).  Otherwise, only explicit MInclusions are used to construct subfolders.

    @return the value of the 'Include All Folders' attribute.
    @see #setIncludeAllFolders(boolean)
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMFolderContent_IncludeAllFolders()
    @model default="True"
    '''
    return bool()


  def setIncludeAllFiles(self, value):
    '''
    Sets the value of the '{@link com.silabs.ss.framework.project.api.core.model.MFolderContent#isIncludeAllFiles Include All Files}' attribute.

    @param value the new value of the 'Include All Files' attribute.
    @see #isIncludeAllFiles()

    @type value: bool
    '''
    pass


  def setIncludeAllFolders(self, value):
    '''
    Sets the value of the '{@link com.silabs.ss.framework.project.api.core.model.MFolderContent#isIncludeAllFolders Include All Folders}' attribute.

    @param value the new value of the 'Include All Folders' attribute.
    @see #isIncludeAllFolders()

    @type value: bool
    '''
    pass


class com_silabs_ss_framework_project_api_core_model_MFolderEntry(com_silabs_ss_framework_project_api_core_model_MEntry):
  '''
  A representation of the model object 'MFolder Entry'.

   *

  This represents a folder in the project.

   *

  The following features are supported:

  	{@link com.silabs.ss.framework.project.api.core.model.MFolderEntry#getFolders Folders}

  	{@link com.silabs.ss.framework.project.api.core.model.MFolderEntry#getFiles Files}

   *
  @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMFolderEntry()
  @model extendedMetaData="name='folder' kind='elementOnly' namespace='##targetNamespace' affiliation='entry'"
  '''
  def init(self):
    self.files = self.getFiles()

    self.folders = self.getFolders()

  def getFiles(self):
    '''
    Returns the value of the 'Files' containment reference list.
    The list contents are of type {@link com.silabs.ss.framework.project.api.core.model.MFileEntry}.

    This represents the entries contained in the entry.  Only MFolder and MProject may contain content.

    @return the value of the 'Files' containment reference list.
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMFolderEntry_Files()
    @model containment="True"
    extendedMetaData="name='file' kind='elementOnly' namespace='##targetNamespace' affiliation='entry'"
    '''
    return list()


  def getFolders(self):
    '''
    Returns the value of the 'Folders' containment reference list.
    The list contents are of type {@link com.silabs.ss.framework.project.api.core.model.MFolderEntry}.

    This represents the entries contained in the entry.  Only MFolder and MProject may contain content.

    @return the value of the 'Folders' containment reference list.
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMFolderEntry_Folders()
    @model containment="True"
    extendedMetaData="name='folder' kind='elementOnly' namespace='##targetNamespace' affiliation='entry'"
    '''
    return list()


class com_silabs_ss_framework_project_api_core_model_MFolderReference(com_silabs_ss_framework_project_api_core_model_MReference):
  '''
  A representation of the model object 'MFolder Reference'.

   *

  This node indicates that a folder is referenced by the configuration, e.g. at build time.  

  The builtin and excluded flags apply only to this node, not its children.  Children's versions of the flags may differ 
  from the receiver's, which means the builtin or excluded state is partial.

   *

  The following features are supported:

  	{@link com.silabs.ss.framework.project.api.core.model.MFolderReference#getRef Ref}

  	{@link com.silabs.ss.framework.project.api.core.model.MFolderReference#getFiles Files}

  	{@link com.silabs.ss.framework.project.api.core.model.MFolderReference#getFolders Folders}

   *
  @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMFolderReference()
  @model 
  '''
  def init(self):
    self.ref = self.getRef()

    self.files = self.getFiles()

    self.folders = self.getFolders()

    self.ref = self.getRef()

  def isBuiltinChildren(self):
    '''
    Tell if children (only) are considered builtin -- 
    returns False if there are no children
    '''
    return bool()


  def isBuiltinTree(self):
    '''
    Tell if the entire tree is considered builtin
    '''
    return bool()


  def isExcludedChildren(self):
    '''
    Tell if children (only) are considered excluded --
    returns False if there are no children
    '''
    return bool()


  def isExcludedTree(self):
    '''
    Tell if the entire tree is considered excluded
    '''
    return bool()


  def getRef(self):
    '''
    Returns the value of the 'Ref' reference.

    If the meaning of the 'Ref' reference isn't clear,
    there really should be more of a description here...

    @return the value of the 'Ref' reference.
    @see #setRef(MFolderEntry)
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMFolderReference_Ref()
    @model required="True"
    '''
    return com_silabs_ss_framework_project_api_core_model_MFolderEntry()


  def getFiles(self):
    '''
    Returns the value of the 'Files' containment reference list.
    The list contents are of type {@link com.silabs.ss.framework.project.api.core.model.MFileReference}.

    If the meaning of the 'Files' containment reference list isn't clear,
    there really should be more of a description here...

    @return the value of the 'Files' containment reference list.
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMFolderReference_Files()
    @model containment="True"
    '''
    return list()


  def getFolders(self):
    '''
    Returns the value of the 'Folders' containment reference list.
    The list contents are of type {@link com.silabs.ss.framework.project.api.core.model.MFolderReference}.

    If the meaning of the 'Folders' containment reference list isn't clear,
    there really should be more of a description here...

    @return the value of the 'Folders' containment reference list.
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMFolderReference_Folders()
    @model containment="True"
    '''
    return list()


  def setRef(self, value):
    '''
    Sets the value of the '{@link com.silabs.ss.framework.project.api.core.model.MFolderReference#getRef Ref}' reference.

    @param value the new value of the 'Ref' reference.
    @see #getRef()

    @type value: com_silabs_ss_framework_project_api_core_model_MFolderEntry
    '''
    pass


  def getRef(self):
    '''
    Returns the value of the 'Ref' reference.

    If the meaning of the 'Ref' reference isn't clear,
    there really should be more of a description here...

    @return the value of the 'Ref' reference.
    @see #setRef(MFolderEntry)
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMFolderReference_Ref()
    @model required="True"
    '''
    return com_silabs_ss_framework_project_api_core_model_MEntry()


class com_silabs_ss_framework_project_api_core_model_MGenericOption(com_silabs_ss_framework_project_api_core_model_MConvertedOption):
  '''
  A representation of the model object 'MGeneric Option'.

   *

  This represents a mapping from some specific option to a generic one.

   *

  The following features are supported:

  	{@link com.silabs.ss.framework.project.api.core.model.MGenericOption#getSpecificMappings Specific Mappings}

   *
  @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMGenericOption()
  @model extendedMetaData="name='genericOption' kind='elementOnly' namespace='##targetNamespace' affiliation='buildSetting'"
  '''
  def init(self):
    self.specificMappings = self.getSpecificMappings()

  def getSpecificMappings(self):
    '''
    Returns the value of the 'Specific Mappings' reference list.
    The list contents are of type {@link com.silabs.ss.framework.project.api.core.model.MSpecificOption}.

    This lists the specific options that the receiver maps to (after an export).

    @return the value of the 'Specific Mappings' reference list.
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMGenericOption_SpecificMappings()
    @model 
    '''
    return list()


class com_silabs_ss_framework_project_api_core_model_MIncludePath(com_silabs_ss_framework_project_api_core_model_MBuildSetting):
  '''
  A representation of the model object 'MInclude Path'.

   *

  This specifies an include path to add to C/C++ projects.

   *

  The following features are supported:

  	{@link com.silabs.ss.framework.project.api.core.model.MIncludePath#getUri Uri}

  	{@link com.silabs.ss.framework.project.api.core.model.MIncludePath#isUser User}

   *
  @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMIncludePath()
  @model extendedMetaData="name='includePath' kind='elementOnly' namespace='##targetNamespace' group='#buildSetting:0'"
  '''
  def init(self):
    self.uri = self.getUri()

  def isUser(self):
    '''
    Returns the value of the 'User' attribute.

    Tells if the path is treated as a user path (#include "...") or system (#include &lt;....&gt;).

    @return the value of the 'User' attribute.
    @see #setUser(boolean)
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMIncludePath_User()
    @model 
    '''
    return bool()


  def getUri(self):
    '''
    Returns the value of the 'Uri' attribute.

    This is a URI, possibly with $(variable) references, which is relative to the content root.

    To indicate content relative to the generated project, use project:/path/to/inc.

    Do not access directly:  use IProjectModel#resolveURI().

    @return the value of the 'Uri' attribute.
    @see #setUri(str)
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMIncludePath_Uri()
    @model 
    '''
    return str()


  def setUri(self, value):
    '''
    Sets the value of the '{@link com.silabs.ss.framework.project.api.core.model.MIncludePath#getUri Uri}' attribute.

    @param value the new value of the 'Uri' attribute.
    @see #getUri()

    @type value: str
    '''
    pass


  def setUser(self, value):
    '''
    Sets the value of the '{@link com.silabs.ss.framework.project.api.core.model.MIncludePath#isUser User}' attribute.

    @param value the new value of the 'User' attribute.
    @see #isUser()

    @type value: bool
    '''
    pass


class com_silabs_ss_framework_project_api_core_model_MInclusion(com_silabs_ss_framework_project_api_core_model_MCustomization):
  '''
  A representation of the model object 'MInclusion'.

   *

  This node's value specifies a pattern (regular expression) for files or folders to include into the project.

   *

  The following features are supported:

  	{@link com.silabs.ss.framework.project.api.core.model.MInclusion#getReplacement Replacement}

   *
  @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMInclusion()
  @model extendedMetaData="name='include' kind='elementOnly' namespace='##targetNamespace' affiliation='customization'"
  '''
  def init(self):
    self.replacement = self.getReplacement()

  def getReplacement(self):
    '''
    Returns the value of the 'Replacement' attribute.

    If set, an inclusion will rename the entry in the project.

    For example, you can include a pattern "foo(.*\.c)" and replace these with "bar$1" to take any entries starting with "foo" 
    and ending with ".c" and reference instead the corresponding files starting with "bar" and ending with ".c".  

    @return the value of the 'Replacement' attribute.
    @see #setReplacement(str)
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMInclusion_Replacement()
    @model 
    '''
    return str()


  def setReplacement(self, value):
    '''
    Sets the value of the '{@link com.silabs.ss.framework.project.api.core.model.MInclusion#getReplacement Replacement}' attribute.

    @param value the new value of the 'Replacement' attribute.
    @see #getReplacement()

    @type value: str
    '''
    pass


class com_silabs_ss_framework_project_api_core_model_MLibraryFile(com_silabs_ss_framework_project_api_core_model_MBuildSetting):
  '''
  A representation of the model object 'MLibrary File'.

   *

  This specifies a library file entry to add to C/C++ projects.

  This may be a bare filename, relative path, absolute path, etc.

  A bare filename may lack a file extension and "lib" prefix.

   *

  The following features are supported:

  	{@link com.silabs.ss.framework.project.api.core.model.MLibraryFile#getUri Uri}

  	{@link com.silabs.ss.framework.project.api.core.model.MLibraryFile#getName Name}

   *
  @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMLibraryFile()
  @model extendedMetaData="name='libraryFile' kind='elementOnly' namespace='##targetNamespace' affiliation='buildSetting'"
  '''
  def init(self):
    self.name = self.getName()

    self.uri = self.getUri()

  def getName(self):
    '''
    Returns the value of the 'Name' attribute.

    If set, the library is the base name of a library searched against one of the MLibraryPath entries.

    The uri field must not be set.

    @return the value of the 'Name' attribute.
    @see #setName(str)
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMLibraryFile_Name()
    @model 
    '''
    return str()


  def getUri(self):
    '''
    Returns the value of the 'Uri' attribute.

    This is a URI, possibly with $(variable) references, which is relative to the content root (NOT an MLibraryPath).

    To indicate content relative to the generated project, use project:/path/to/inc.

    Do not access directly:  use IProjectModel#resolveURI().

    @return the value of the 'Uri' attribute.
    @see #setUri(str)
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMLibraryFile_Uri()
    @model 
    '''
    return str()


  def setName(self, value):
    '''
    Sets the value of the '{@link com.silabs.ss.framework.project.api.core.model.MLibraryFile#getName Name}' attribute.

    @param value the new value of the 'Name' attribute.
    @see #getName()

    @type value: str
    '''
    pass


  def setUri(self, value):
    '''
    Sets the value of the '{@link com.silabs.ss.framework.project.api.core.model.MLibraryFile#getUri Uri}' attribute.

    @param value the new value of the 'Uri' attribute.
    @see #getUri()

    @type value: str
    '''
    pass


class com_silabs_ss_framework_project_api_core_model_MLibraryPath(com_silabs_ss_framework_project_api_core_model_MBuildSetting):
  '''
  A representation of the model object 'MLibrary Path'.

   *

  This specifies a library search path entry to add to C/C++ projects.

   *

  The following features are supported:

  	{@link com.silabs.ss.framework.project.api.core.model.MLibraryPath#getUri Uri}

   *
  @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMLibraryPath()
  @model extendedMetaData="name='libraryPath' kind='elementOnly' namespace='##targetNamespace' affiliation='buildSetting'"
  '''
  def init(self):
    self.uri = self.getUri()

  def getUri(self):
    '''
    Returns the value of the 'Uri' attribute.

    This is a URI, possibly with $(variable) references, which is relative to the content root.

    To indicate content relative to the generated project, use project:/path/to/inc.

    Do not access directly:  use IProjectModel#resolveURI().

    @return the value of the 'Uri' attribute.
    @see #setUri(str)
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMLibraryPath_Uri()
    @model 
    '''
    return str()


  def setUri(self, value):
    '''
    Sets the value of the '{@link com.silabs.ss.framework.project.api.core.model.MLibraryPath#getUri Uri}' attribute.

    @param value the new value of the 'Uri' attribute.
    @see #getUri()

    @type value: str
    '''
    pass


class com_silabs_ss_framework_project_api_core_model_MMacroDefinition(com_silabs_ss_framework_project_api_core_model_MBuildSetting):
  '''
  A representation of the model object 'MMacro Definition'.

   *

  This specifies a macro to define in C/C++ projects. 

   *

  The following features are supported:

  	{@link com.silabs.ss.framework.project.api.core.model.MMacroDefinition#getName Name}

  	{@link com.silabs.ss.framework.project.api.core.model.MMacroDefinition#getValue Value}

   *
  @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMMacroDefinition()
  @model extendedMetaData="name='macroDefinition' kind='elementOnly' namespace='##targetNamespace' group='#buildSetting:0'"
  '''
  def init(self):
    self.name = self.getName()

    self.value = self.getValue()

  def getName(self):
    '''
    Returns the value of the 'Name' attribute.

    This is a macro name, possibly with $(variable) references, or possibly with arguments.  Do not access directly:  use IProjectModel#resolveName().

    @return the value of the 'Name' attribute.
    @see #setName(str)
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMMacroDefinition_Name()
    @model 
    '''
    return str()


  def getValue(self):
    '''
    Returns the value of the 'Value' attribute.

    The definition of the macro:  empty string means the macro is defined without a value; None means the value "1" is assumed; otherwise, the variable-expanded value of the string is the definition.

    @return the value of the 'Value' attribute.
    @see #setValue(str)
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMMacroDefinition_Value()
    @model 
    '''
    return str()


  def setName(self, value):
    '''
    Sets the value of the '{@link com.silabs.ss.framework.project.api.core.model.MMacroDefinition#getName Name}' attribute.

    @param value the new value of the 'Name' attribute.
    @see #getName()

    @type value: str
    '''
    pass


  def setValue(self, value):
    '''
    Sets the value of the '{@link com.silabs.ss.framework.project.api.core.model.MMacroDefinition#getValue Value}' attribute.

    @param value the new value of the 'Value' attribute.
    @see #getValue()

    @type value: str
    '''
    pass


class com_silabs_ss_framework_project_api_core_model_MModule(com_silabs_ss_framework_project_api_core_model_MSelectable):
  '''
  A representation of the model object 'MModule'.

   *

  The identifier of a module (IModuleDescriptor) included in the project or configuration.  

  See the com.silabs.ss.framework.project.core.moduleSupport extension.

   *

  The following features are supported:

  	{@link com.silabs.ss.framework.project.api.core.model.MModule#getId Id}

  	{@link com.silabs.ss.framework.project.api.core.model.MModule#getCustomizationsGroup Customizations Group}

  	{@link com.silabs.ss.framework.project.api.core.model.MModule#isPdm Pdm}

   *
  @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMModule()
  @model features="exclusions inclusions"
  exclusionsType="com.silabs.ss.framework.project.api.core.model.MExclusion" exclusionsContainment="True" exclusionsMany="True" exclusionsTransient="True" exclusionsVolatile="True" exclusionsDerived="True" exclusionsSuppressedGetVisibility="True" exclusionsSuppressedSetVisibility="True"
  exclusionsExtendedMetaData="kind='element' name='exclude' group='#group:0'"
  inclusionsType="com.silabs.ss.framework.project.api.core.model.MInclusion" inclusionsContainment="True" inclusionsMany="True" inclusionsTransient="True" inclusionsVolatile="True" inclusionsDerived="True" inclusionsSuppressedGetVisibility="True" inclusionsSuppressedSetVisibility="True"
  inclusionsExtendedMetaData="kind='element' name='include' group='#group:0'"
  extendedMetaData="name='module' kind='element' namespace='##targetNamespace'"
  '''
  def init(self):
    self.id = self.getId()

    self.customizations = self.getCustomizations()

    self.customizationsGroup = self.getCustomizationsGroup()

  def isPdm(self):
    '''
    Returns the value of the 'Pdm' attribute.

    If set, says this module should be found inside the project.

    @return the value of the 'Pdm' attribute.
    @see #setPdm(boolean)
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMModule_Pdm()
    @model extendedMetaData="kind='attribute' name='pdm' namespace='##targetNamespace'"
    '''
    return bool()


  def removeCustomization(self, _com_silabs_ss_framework_project_api_core_model_MCustomization):
    '''
    Remove a customization
    @return True if changed
    '''
    return bool()


  def getId(self):
    '''
    Returns the value of the 'Id' attribute.

    The identifier of the module (IModuleDescriptor#getId()); may contain variables.

    @return the value of the 'Id' attribute.
    @see #setId(str)
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMModule_Id()
    @model 
    '''
    return str()


  def getCustomizations(self):
    '''
    Get all the customizations
    @return 
    '''
    return list()


  def getCustomizationsGroup(self):
    '''
    Returns the value of the 'Customizations Group' attribute list.
    The list contents are of type {@link org.eclipse.emf.ecore.util.FeatureMap.Entry}.

    This list applies changes to the way the module content is gathered and added to the project.

    If the list is empty, all module file/folder content is added to the receiver project.

    If the list is non-empty and starts with an MInclusion, then all content is considered excluded,
    unless the inclusion brings it in.

    If the list is non-empty and starts with an MExclusion, then all content is considered included,
    unless the exclusion filters it out.

    (Note: if one configuration includes a file while another does not, this translates to an
    excluded resource in the latter.)

    @return the value of the 'Customizations Group' attribute list.
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMModule_CustomizationsGroup()
    @model unique="False" dataType="org.eclipse.emf.ecore.EFeatureMapEntry" many="True"
    extendedMetaData="kind='group' name='group:0'"
    '''
    return list()


  def addCustomization(self, _com_silabs_ss_framework_project_api_core_model_MCustomization):
    '''
    Add a customization
    '''
    pass


  def setId(self, value):
    '''
    Sets the value of the '{@link com.silabs.ss.framework.project.api.core.model.MModule#getId Id}' attribute.

    @param value the new value of the 'Id' attribute.
    @see #getId()

    @type value: str
    '''
    pass


  def setPdm(self, value):
    '''
    Sets the value of the '{@link com.silabs.ss.framework.project.api.core.model.MModule#isPdm Pdm}' attribute.

    @param value the new value of the 'Pdm' attribute.
    @see #isPdm()

    @type value: bool
    '''
    pass


class com_silabs_ss_framework_project_api_core_model_MProject(com_silabs_ss_framework_project_api_core_model_MFolderEntry):
  '''
  A representation of the model object 'MProject'.

   *

  This represents a single project, which consists of a tree of physical content, 
  a logical presentation layout, and buildable configurations.

  The project may only support a subset of parts, SDKs, or toolchains -- the compatibility flags 
  determine what choices are allowed.  This may be as specific as listing one exact part that matches,
  or may specify an entire part family or architecture.  See, e.g., CoreProperties#PART_COMPATIBLITY,
  and related options for SDK and toolchain compatibility.

   *

  The following features are supported:

  	{@link com.silabs.ss.framework.project.api.core.model.MProject#getContentRoot Content Root}

  	{@link com.silabs.ss.framework.project.api.core.model.MProject#getConfigurations Configurations}

  	{@link com.silabs.ss.framework.project.api.core.model.MProject#getProjectDefinedModules Project Defined Modules}

   *
  @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMProject()
  @model extendedMetaData="name='project' kind='elementOnly' namespace='##targetNamespace'"
  '''
  def init(self):
    self.contentRoot = self.getContentRoot()

    self.filterInfoMap = self.getFilterInfoMap()

    self.configurations = self.getConfigurations()

    self.projectDefinedModules = self.getProjectDefinedModules()

  def findConfigurationById(self, id):
    '''
    Match a configuration by id
    @param id
    @type id: str
    @return match or None
    '''
    return com_silabs_ss_framework_project_api_core_model_MConfiguration()


  def findConfigurationByName(self, name):
    '''
    Match a configuration by name (not label)
    @param name
    @type name: str
    @return match or None
    '''
    return com_silabs_ss_framework_project_api_core_model_MConfiguration()


  def copy(self):
    '''
    Make a proper deep copy (featuremaps are not preserved normally!)
    @return copy of receiver
    '''
    return com_silabs_ss_framework_project_api_core_model_MProject()


  def getContentRoot(self):
    '''
    Returns the value of the 'Content Root' attribute.

    This is a URI pointing to the root content for the project, which is a folder.

    It is typically relative to the location of the project model.

    By default, the .project file lives in that folder, and the name of the folder is not
    visible (being replaced by the project name).

    @return the value of the 'Content Root' attribute.
    @see #setContentRoot(str)
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMProject_ContentRoot()
    @model 
    '''
    return str()


  def getPropertyScope(self):
    '''
    Returns the value of the 'Property Scope' attribute.
    The default value is "".

    The identifier for the property scope (IPropertyGroup id) which define the properties referenced.

    @return the value of the 'Property Scope' attribute.
    @see #setPropertyScope(str)
    @see com.silabs.ss.platform.api.content.core.model.StudioModelPackage#getMDescriptor_PropertyScope()
    @model default=""
    '''
    return str()


  def getFilterInfoMap(self):
    return java_util_Map()


  def getConfigurations(self):
    '''
    Returns the value of the 'Configurations' containment reference list.
    The list contents are of type {@link com.silabs.ss.framework.project.api.core.model.MConfiguration}.

    If the meaning of the 'Configurations' containment reference list isn't clear,
    there really should be more of a description here...

    The configurations created with a new project (for normal projects), or the configurations to match in a module client project.

    @return the value of the 'Configurations' containment reference list.
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMProject_Configurations()
    @model containment="True"
    extendedMetaData="kind='element' name='configuration' namespace='##targetNamespace'"
    '''
    return list()


  def getProjectDefinedModules(self):
    '''
    Returns the value of the 'Project Defined Modules' containment reference list.
    The list contents are of type {@link com.silabs.ss.framework.project.api.core.model.MProject}.

    A module defined on a per-project basis. This module can only be used in the current project.

    @return the value of the 'Project Defined Modules' containment reference list.
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMProject_ProjectDefinedModules()
    @model containment="True"
    extendedMetaData="kind='element' name='PDMDefinition' namespace='##targetNamespace'"
    '''
    return list()


  def getProperties(self):
    '''
    Returns the value of the 'Properties' map.
    The key is of type {@link str},
    and the value is of type {@link str},

    If the meaning of the 'Property Settings' map isn't clear,
    there really should be more of a description here...

    These are (key, value) pairs associated with a descriptor.

    These are serialized versions of typed properties via {Type,Property}ConversionUtils#stringizeValue().

    @return the value of the 'Properties' map.
    @see com.silabs.ss.platform.api.content.core.model.StudioModelPackage#getMDescriptor_Properties()
    @model mapType="com.silabs.ss.platform.api.content.core.model.strTostrMap"
    extendedMetaData="name='property' kind='elementOnly' namespace='##targetNamespace'"
    '''
    return list()


  def mergeFrom(self, project, mergeConfigs):
    '''
    Merge the contents of another project into the receiver.
    This destroys 'project'!
    @param project
    @param mergeConfigs if set, combine the settings from configurations to the root

    @type project: com_silabs_ss_framework_project_api_core_model_MProject
    @type mergeConfigs: bool
    '''
    pass


  def setContentRoot(self, value):
    '''
    Sets the value of the '{@link com.silabs.ss.framework.project.api.core.model.MProject#getContentRoot Content Root}' attribute.

    @param value the new value of the 'Content Root' attribute.
    @see #getContentRoot()

    @type value: str
    '''
    pass


  def setPropertyScope(self, value):
    '''
    Sets the value of the '{@link com.silabs.ss.platform.api.content.core.model.MDescriptor#getPropertyScope Property Scope}' attribute.

    @param value the new value of the 'Property Scope' attribute.
    @see #getPropertyScope()

    @type value: str
    '''
    pass


class com_silabs_ss_framework_project_api_core_model_MProjectReference(com_silabs_ss_framework_project_api_core_model_MFolderReference):
  '''
  A representation of the model object 'MProject Reference'.

   *

  This node is the root of the reference tree for an MConfiguration.  Its ref always refers to the project root.

   *
   *
  @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMProjectReference()
  @model 
  '''
  def init(self):
    self.entryToReferenceMap = self.getEntryToReferenceMap()

  def getEntryToReferenceMap(self):
    return java_util_Map()


class com_silabs_ss_framework_project_api_core_model_MProjectResourceTree(org_eclipse_emf_ecore_EObject):
  '''
  A representation of the model object 'MProject Resource Tree'.

   *

  This represents the resource state of a project, showing how each folder and file was derived.

  It is used during project update operations.

   *

  The following features are supported:

  	{@link com.silabs.ss.framework.project.api.core.model.MProjectResourceTree#getConfigurations Configurations}

   *
  @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMProjectResourceTree()
  @model 
  '''
  def init(self):
    self.configurations = self.getConfigurations()

  def getConfigurations(self):
    '''
    Returns the value of the 'Configurations' map.
    The key is of type {@link str},
    and the value is of type {@link com.silabs.ss.framework.project.api.core.model.MProjectReference},

    If the meaning of the 'Configurations' map isn't clear,
    there really should be more of a description here...

    @return the value of the 'Configurations' map.
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMProjectResourceTree_Configurations()
    @model mapType="com.silabs.ss.framework.project.api.core.model.MConfigIdToMProjectReferenceMap" changeable="False"
    '''
    return list()


class com_silabs_ss_framework_project_api_core_model_MReference(org_eclipse_emf_ecore_EObject):
  '''
  A representation of the model object 'MReference'.

   *

  This node, living in an MConfiguration, indicates that a file or folder is referenced by the configuration, e.g. at build time.  

  The purpose is to determine which files comprise a build, as opposed to other folders or files in the project.

   *

  The following features are supported:

  	{@link com.silabs.ss.framework.project.api.core.model.MReference#isBuiltin Builtin}

  	{@link com.silabs.ss.framework.project.api.core.model.MReference#isExcluded Excluded}

  	{@link com.silabs.ss.framework.project.api.core.model.MReference#getProvidingModule Providing Module}

  	{@link com.silabs.ss.framework.project.api.core.model.MReference#isRemove Remove}

   *
  @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMReference()
  @model abstract="True"
  '''
  def init(self):
    self.ref = self.getRef()

    self.providingModule = self.getProvidingModule()

  def isBuiltin(self):
    '''
    Returns the value of the 'Builtin' attribute.

    If set, says this item was added automatically (e.g. from a module).

    @return the value of the 'Builtin' attribute.
    @see #setBuiltin(boolean)
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMReference_Builtin()
    @model 
    '''
    return bool()


  def isExcluded(self):
    '''
    Returns the value of the 'Excluded' attribute.

    If set, says this item is excluded from the owning MConfiguration.

    @return the value of the 'Excluded' attribute.
    @see #setExcluded(boolean)
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMReference_Excluded()
    @model 
    '''
    return bool()


  def isRemove(self):
    '''
    Returns the value of the 'Remove' attribute.

    If set, says this item is excluded from the owning MConfiguration.

    @return the value of the 'Remove' attribute.
    @see #setRemove(boolean)
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMReference_Remove()
    @model 
    '''
    return bool()


  def getRef(self):
    '''
    Base method for type-specific #getRef() in subclasses
    @return 
    '''
    return com_silabs_ss_framework_project_api_core_model_MEntry()


  def getProvidingModule(self):
    '''
    Returns the value of the 'Providing Module' reference.

    This tells which module provided the file (if any).

    @return the value of the 'Providing Module' reference.
    @see #setProvidingModule(MModule)
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMReference_ProvidingModule()
    @model 
    '''
    return com_silabs_ss_framework_project_api_core_model_MModule()


  def setBuiltin(self, value):
    '''
    Sets the value of the '{@link com.silabs.ss.framework.project.api.core.model.MReference#isBuiltin Builtin}' attribute.

    @param value the new value of the 'Builtin' attribute.
    @see #isBuiltin()

    @type value: bool
    '''
    pass


  def setExcluded(self, value):
    '''
    Sets the value of the '{@link com.silabs.ss.framework.project.api.core.model.MReference#isExcluded Excluded}' attribute.

    @param value the new value of the 'Excluded' attribute.
    @see #isExcluded()

    @type value: bool
    '''
    pass


  def setProvidingModule(self, value):
    '''
    Sets the value of the '{@link com.silabs.ss.framework.project.api.core.model.MReference#getProvidingModule Providing Module}' reference.

    @param value the new value of the 'Providing Module' reference.
    @see #getProvidingModule()

    @type value: com_silabs_ss_framework_project_api_core_model_MModule
    '''
    pass


  def setRemove(self, value):
    '''
    Sets the value of the '{@link com.silabs.ss.framework.project.api.core.model.MReference#isRemove Remove}' attribute.

    @param value the new value of the 'Remove' attribute.
    @see #isRemove()

    @type value: bool
    '''
    pass


class com_silabs_ss_framework_project_api_core_model_MSelectable(org_eclipse_emf_ecore_EObject):
  '''
  A representation of the model object 'MSelectable'.

   *

  This interface represents an item that may be filtered out of consideration given the current part, toolchain, or SDK.

   *

  The following features are supported:

  	{@link com.silabs.ss.framework.project.api.core.model.MSelectable#getBoardCompatibility Board Compatibility}

  	{@link com.silabs.ss.framework.project.api.core.model.MSelectable#getPartCompatibility Part Compatibility}

  	{@link com.silabs.ss.framework.project.api.core.model.MSelectable#getToolchainCompatibility Toolchain Compatibility}

  	{@link com.silabs.ss.framework.project.api.core.model.MSelectable#getSdkCompatibility Sdk Compatibility}

  	{@link com.silabs.ss.framework.project.api.core.model.MSelectable#isBuiltin Builtin}

   *
  @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMSelectable()
  @model 
  '''
  def init(self):
    self.boardCompatibility = self.getBoardCompatibility()

    self.partCompatibility = self.getPartCompatibility()

    self.sdkCompatibility = self.getSdkCompatibility()

    self.toolchainCompatibility = self.getToolchainCompatibility()

  def isBuiltin(self):
    '''
    Returns the value of the 'Builtin' attribute.

    If set, says this item was added automatically (e.g. from a module).

    @return the value of the 'Builtin' attribute.
    @see #setBuiltin(boolean)
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMSelectable_Builtin()
    @model 
    '''
    return bool()


  def getBoardCompatibility(self):
    '''
    Returns the value of the 'Board Compatibility' attribute.

    If set, defines a board compatibility rule grammar which, if unmet, excludes this entry and its children from a project.  See CoreProperties#BOARD_COMPATIBILITY for details.

    @return the value of the 'Board Compatibility' attribute.
    @see #setBoardCompatibility(str)
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMSelectable_BoardCompatibility()
    @model 
    '''
    return str()


  def getPartCompatibility(self):
    '''
    Returns the value of the 'Part Compatibility' attribute.

    If set, defines a part compatibility rule grammar which, if unmet, excludes this entry and its children from a project.  See CoreProperties#PART_COMPATIBILITY for details.

    @return the value of the 'Part Compatibility' attribute.
    @see #setPartCompatibility(str)
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMSelectable_PartCompatibility()
    @model 
    '''
    return str()


  def getSdkCompatibility(self):
    '''
    Returns the value of the 'Sdk Compatibility' attribute.

    If set, defines an SDK compatibility rule grammar which, if unmet, excludes this entry and its children from a project.  See SDKProperties#SDK_COMPATIBILITY for details.

    @return the value of the 'Sdk Compatibility' attribute.
    @see #setSdkCompatibility(str)
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMSelectable_SdkCompatibility()
    @model 
    '''
    return str()


  def getToolchainCompatibility(self):
    '''
    Returns the value of the 'Toolchain Compatibility' attribute.

    If set, defines a toolchain compatibility rule grammar which, if unmet, excludes this entry and its children from a project.  See ToolchainProperties#TOOLCHAIN_COMPATIBILITY for details.

    @return the value of the 'Toolchain Compatibility' attribute.
    @see #setToolchainCompatibility(str)
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMSelectable_ToolchainCompatibility()
    @model 
    '''
    return str()


  def setBoardCompatibility(self, value):
    '''
    Sets the value of the '{@link com.silabs.ss.framework.project.api.core.model.MSelectable#getBoardCompatibility Board Compatibility}' attribute.

    @param value the new value of the 'Board Compatibility' attribute.
    @see #getBoardCompatibility()

    @type value: str
    '''
    pass


  def setBuiltin(self, value):
    '''
    Sets the value of the '{@link com.silabs.ss.framework.project.api.core.model.MSelectable#isBuiltin Builtin}' attribute.

    @param value the new value of the 'Builtin' attribute.
    @see #isBuiltin()

    @type value: bool
    '''
    pass


  def setPartCompatibility(self, value):
    '''
    Sets the value of the '{@link com.silabs.ss.framework.project.api.core.model.MSelectable#getPartCompatibility Part Compatibility}' attribute.

    @param value the new value of the 'Part Compatibility' attribute.
    @see #getPartCompatibility()

    @type value: str
    '''
    pass


  def setSdkCompatibility(self, value):
    '''
    Sets the value of the '{@link com.silabs.ss.framework.project.api.core.model.MSelectable#getSdkCompatibility Sdk Compatibility}' attribute.

    @param value the new value of the 'Sdk Compatibility' attribute.
    @see #getSdkCompatibility()

    @type value: str
    '''
    pass


  def setToolchainCompatibility(self, value):
    '''
    Sets the value of the '{@link com.silabs.ss.framework.project.api.core.model.MSelectable#getToolchainCompatibility Toolchain Compatibility}' attribute.

    @param value the new value of the 'Toolchain Compatibility' attribute.
    @see #getToolchainCompatibility()

    @type value: str
    '''
    pass


class com_silabs_ss_framework_project_api_core_model_MSettingsSite(org_eclipse_emf_ecore_EObject):
  '''
  A representation of the model object 'MEntry Settings'.

   *

  This contains settings that augment or override the parent's settings.  

  The "parent" depends on the settings site:
  For example, settings on MConfiguration override those on MProject.
  Settings associated with MFolderEntry override those in the configuration or parent folder,
  and settings associated with MFileEntry override those on its folder or parent folder.

  The full collection of settings for an entry is derived by taking the set from
  a configuration's stock configuration settings, overriding with settings from
  that configuration, then going on down to any specific folder or file.

  accumulation of 

   *

  The following features are supported:

  	{@link com.silabs.ss.framework.project.api.core.model.MSettingsSite#getConvertedOptions Converted Options}

  	{@link com.silabs.ss.framework.project.api.core.model.MSettingsSite#getIncludePaths Include Paths}

  	{@link com.silabs.ss.framework.project.api.core.model.MSettingsSite#getMacroDefinitions Macro Definitions}

  	{@link com.silabs.ss.framework.project.api.core.model.MSettingsSite#getLibraryFiles Library Files}

  	{@link com.silabs.ss.framework.project.api.core.model.MSettingsSite#getLibraryPaths Library Paths}

  	{@link com.silabs.ss.framework.project.api.core.model.MSettingsSite#getToolOptions Tool Options}

   *
  @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMSettingsSite()
  @model 
  '''
  def init(self):
    self.convertedOptions = self.getConvertedOptions()

    self.includePaths = self.getIncludePaths()

    self.libraryFiles = self.getLibraryFiles()

    self.libraryPaths = self.getLibraryPaths()

    self.macroDefinitions = self.getMacroDefinitions()

    self.toolOptions = self.getToolOptions()

  def getConvertedOptions(self):
    '''
    Returns the value of the 'Converted Options' containment reference list.
    The list contents are of type {@link com.silabs.ss.framework.project.api.core.model.MConvertedOption}.

    This list of build options maintained during import/export and conversion operations. 

    Entries here are not directly used by a project.  

    They are either derived from external project types on import, or from MToolOptions on export.

    @return the value of the 'Converted Options' containment reference list.
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMSettingsSite_ConvertedOptions()
    @model containment="True" transient="True"
    extendedMetaData="kind='element' name='convertedOption' namespace='##targetNamespace'"
    '''
    return list()


  def getIncludePaths(self):
    '''
    Returns the value of the 'Include Paths' containment reference list.
    The list contents are of type {@link com.silabs.ss.framework.project.api.core.model.MIncludePath}.

    This list of build settings applies to any configurations in the project, overriding or augmenting settings from stock configurations.

    @return the value of the 'Include Paths' containment reference list.
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMSettingsSite_IncludePaths()
    @model containment="True"
    extendedMetaData="kind='element' namespace='##targetNamespace' name='includePath'"
    '''
    return list()


  def getLibraryFiles(self):
    '''
    Returns the value of the 'Library Files' containment reference list.
    The list contents are of type {@link com.silabs.ss.framework.project.api.core.model.MLibraryFile}.

    This list of build settings applies to any configurations in the project, overriding or augmenting settings from stock configurations.

    @return the value of the 'Library Files' containment reference list.
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMSettingsSite_LibraryFiles()
    @model containment="True"
    extendedMetaData="kind='element' namespace='##targetNamespace' name='libraryFile'"
    '''
    return list()


  def getLibraryPaths(self):
    '''
    Returns the value of the 'Library Paths' containment reference list.
    The list contents are of type {@link com.silabs.ss.framework.project.api.core.model.MLibraryPath}.

    This list of build settings applies to any configurations in the project, overriding or augmenting settings from stock configurations.

    @return the value of the 'Library Paths' containment reference list.
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMSettingsSite_LibraryPaths()
    @model containment="True"
    extendedMetaData="kind='element' namespace='##targetNamespace' name='libraryPath'"
    '''
    return list()


  def getMacroDefinitions(self):
    '''
    Returns the value of the 'Macro Definitions' containment reference list.
    The list contents are of type {@link com.silabs.ss.framework.project.api.core.model.MMacroDefinition}.

    This list of build settings applies to any configurations in the project, overriding or augmenting settings from stock configurations.

    @return the value of the 'Macro Definitions' containment reference list.
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMSettingsSite_MacroDefinitions()
    @model containment="True"
    extendedMetaData="kind='element' namespace='##targetNamespace' name='macroDefinition'"
    '''
    return list()


  def getToolOptions(self):
    '''
    Returns the value of the 'Tool Options' containment reference list.
    The list contents are of type {@link com.silabs.ss.framework.project.api.core.model.MToolOption}.

    This list of build settings applies to any configurations in the project, overriding or augmenting settings from stock configurations.

    @return the value of the 'Tool Options' containment reference list.
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMSettingsSite_ToolOptions()
    @model containment="True"
    extendedMetaData="kind='element' namespace='##targetNamespace' name='toolOption'"
    '''
    return list()


class com_silabs_ss_framework_project_api_core_model_MSpecificOption(com_silabs_ss_framework_project_api_core_model_MConvertedOption):
  '''
  A representation of the model object 'MSpecific Option'.

   *

  This represents an option that is specific to some tool or toolchain.

  It contains a mapping to generic options and a status indicating the 
  extent of the mapping.

   *

  The following features are supported:

  	{@link com.silabs.ss.framework.project.api.core.model.MSpecificOption#getGenericMappings Generic Mappings}

  	{@link com.silabs.ss.framework.project.api.core.model.MSpecificOption#getMappingStatus Mapping Status}

  	{@link com.silabs.ss.framework.project.api.core.model.MSpecificOption#getImportedOption Imported Option}

   *
  @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMSpecificOption()
  @model extendedMetaData="name='specificOption' kind='elementOnly' namespace='##targetNamespace' affiliation='buildSetting'"
  '''
  def init(self):
    self.mappingStatus = self.getMappingStatus()

    self.importedOption = self.getImportedOption()

    self.genericMappings = self.getGenericMappings()

  def getMappingStatus(self):
    '''
    Returns the value of the 'Mapping Status' attribute.
    The literals are from the enumeration {@link com.silabs.ss.framework.project.api.core.model.EMappingStatus}.

    This is the status of the mappings in genericMappings.

    @return the value of the 'Mapping Status' attribute.
    @see com.silabs.ss.framework.project.api.core.model.EMappingStatus
    @see #setMappingStatus(EMappingStatus)
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMSpecificOption_MappingStatus()
    @model 
    '''
    return com_silabs_ss_framework_project_api_core_model_EMappingStatus()


  def getImportedOption(self):
    '''
    Returns the value of the 'Imported Option' reference.

    If set, this is the option from which the receiver was imported.

    @return the value of the 'Imported Option' reference.
    @see #setImportedOption(MSpecificOption)
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMSpecificOption_ImportedOption()
    @model 
    '''
    return com_silabs_ss_framework_project_api_core_model_MSpecificOption()


  def getGenericMappings(self):
    '''
    Returns the value of the 'Generic Mappings' reference list.
    The list contents are of type {@link com.silabs.ss.framework.project.api.core.model.MGenericOption}.

    This lists the generic options that the receiver maps to (after an import).

    @return the value of the 'Generic Mappings' reference list.
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMSpecificOption_GenericMappings()
    @model 
    '''
    return list()


  def setImportedOption(self, value):
    '''
    Sets the value of the '{@link com.silabs.ss.framework.project.api.core.model.MSpecificOption#getImportedOption Imported Option}' reference.

    @param value the new value of the 'Imported Option' reference.
    @see #getImportedOption()

    @type value: com_silabs_ss_framework_project_api_core_model_MSpecificOption
    '''
    pass


  def setMappingStatus(self, value):
    '''
    Sets the value of the '{@link com.silabs.ss.framework.project.api.core.model.MSpecificOption#getMappingStatus Mapping Status}' attribute.

    @param value the new value of the 'Mapping Status' attribute.
    @see com.silabs.ss.framework.project.api.core.model.EMappingStatus
    @see #getMappingStatus()

    @type value: com_silabs_ss_framework_project_api_core_model_EMappingStatus
    '''
    pass


class com_silabs_ss_framework_project_api_core_model_MToolListOption(com_silabs_ss_framework_project_api_core_model_MBuildSetting):
  '''
  A representation of the model object 'MTool List Option'.

   *

  The following features are supported:

  	{@link com.silabs.ss.framework.project.api.core.model.MToolListOption#getValue Value}

   *
  @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMToolListOption()
  @model 
  '''
  def init(self):
    self.value = self.getValue()

  def getValue(self):
    '''
    Returns the value of the 'Value' attribute.

    Value for the option, as a string.

    @return the value of the 'Value' attribute.
    @see #setValue(str)
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMToolListOption_Value()
    @model 
    '''
    return str()


  def setValue(self, value):
    '''
    Sets the value of the '{@link com.silabs.ss.framework.project.api.core.model.MToolListOption#getValue Value}' attribute.

    @param value the new value of the 'Value' attribute.
    @see #getValue()

    @type value: str
    '''
    pass


class com_silabs_ss_framework_project_api_core_model_MToolOption(com_silabs_ss_framework_project_api_core_model_MBuildSetting):
  '''
  A representation of the model object 'MStock Option'.

   *

  This represents one real option, which customizes build settings in a configuration.

  Note: this extends MSelectable, which allows filtering by toolchain, among other things.
  The IDE applies these where the given owner toolchain or tool is applied to a configuration,
  thus, such filtering may be superfluous.  But the namespaces for the owner apply to e.g. CDT
  while the toolchainCompatibility applies to Simplicity Studio, so there may be a sound reason for 
  specifying both.

   *

  The following features are supported:

  	{@link com.silabs.ss.framework.project.api.core.model.MToolOption#getToolId Tool Id}

  	{@link com.silabs.ss.framework.project.api.core.model.MToolOption#getOptionId Option Id}

  	{@link com.silabs.ss.framework.project.api.core.model.MToolOption#getValue Value}

  	{@link com.silabs.ss.framework.project.api.core.model.MToolOption#getToolListOptions Tool List Options}

   *
  @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMToolOption()
  @model extendedMetaData="name='toolOption' kind='elementOnly' namespace='##targetNamespace' affiliation='buildSetting'"
  '''
  def init(self):
    self.optionId = self.getOptionId()

    self.toolId = self.getToolId()

    self.value = self.getValue()

    self.toolListOptions = self.getToolListOptions()

  def getOptionId(self):
    '''
    Returns the value of the 'Option Id' attribute.

    The identifier for an option. This should be unique with respect to the tool so other
    converters can identify it.

    @return the value of the 'Option Id' attribute.
    @see #setOptionId(str)
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMToolOption_OptionId()
    @model 
    '''
    return str()


  def getToolId(self):
    '''
    Returns the value of the 'Tool Id' attribute.

    This is the identifier for the tool that uses the option.
    This should be globally unique and include a version.

    @return the value of the 'Tool Id' attribute.
    @see #setToolId(str)
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMToolOption_ToolId()
    @model 
    '''
    return str()


  def getValue(self):
    '''
    Returns the value of the 'Value' attribute.

    Value for the option, as a string.

    @return the value of the 'Value' attribute.
    @see #setValue(str)
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMToolOption_Value()
    @model 
    '''
    return str()


  def getToolListOptions(self):
    '''
    Returns the value of the 'Tool List Options' containment reference list.
    The list contents are of type {@link com.silabs.ss.framework.project.api.core.model.MToolListOption}.

    This is a list of values that can be selectively added to the tool option. Options in this list will be merged with anything defined in the value option.

    @return the value of the 'Tool List Options' containment reference list.
    @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage#getMToolOption_ToolListOptions()
    @model containment="True"
    extendedMetaData="kind='element' namespace='##targetNamespace' name='toolListOption'"
    '''
    return list()


  def setOptionId(self, value):
    '''
    Sets the value of the '{@link com.silabs.ss.framework.project.api.core.model.MToolOption#getOptionId Option Id}' attribute.

    @param value the new value of the 'Option Id' attribute.
    @see #getOptionId()

    @type value: str
    '''
    pass


  def setToolId(self, value):
    '''
    Sets the value of the '{@link com.silabs.ss.framework.project.api.core.model.MToolOption#getToolId Tool Id}' attribute.

    @param value the new value of the 'Tool Id' attribute.
    @see #getToolId()

    @type value: str
    '''
    pass


  def setValue(self, value):
    '''
    Sets the value of the '{@link com.silabs.ss.framework.project.api.core.model.MToolOption#getValue Value}' attribute.

    @param value the new value of the 'Value' attribute.
    @see #getValue()

    @type value: str
    '''
    pass


class com_silabs_ss_framework_project_api_core_model_ProjectModelFactory(org_eclipse_emf_ecore_EFactory):
  '''
  The Factory for the model.
  It provides a create method for each non-abstract class of the model.

  @see com.silabs.ss.framework.project.api.core.model.ProjectModelPackage
  '''
  def init(self):
    self.projectModelPackage = self.getProjectModelPackage()

  eINSTANCE = com_silabs_ss_framework_project_api_core_model_ProjectModelFactory
  '''
  The singleton instance of the factory.

  @value com.silabs.ss.framework.project.api.core.model.impl.ProjectModelFactoryImpl.init()
  '''

  def createDocumentRoot(self):
    '''
    Returns a new object of class 'Document Root'.

    @return a new object of class 'Document Root'.
    '''
    return com_silabs_ss_framework_project_api_core_model_DocumentRoot()


  def createMConfigSettings(self):
    '''
    Returns a new object of class 'MConfig Settings'.

    @return a new object of class 'MConfig Settings'.
    '''
    return com_silabs_ss_framework_project_api_core_model_MConfigSettings()


  def createMConfiguration(self):
    '''
    Returns a new object of class 'MConfiguration'.

    @return a new object of class 'MConfiguration'.
    '''
    return com_silabs_ss_framework_project_api_core_model_MConfiguration()


  def createMContent(self):
    '''
    Returns a new object of class 'MContent'.

    @return a new object of class 'MContent'.
    '''
    return com_silabs_ss_framework_project_api_core_model_MContent()


  def createMCustomization(self):
    '''
    Returns a new object of class 'MCustomization'.

    @return a new object of class 'MCustomization'.
    '''
    return com_silabs_ss_framework_project_api_core_model_MCustomization()


  def createMExclusion(self):
    '''
    Returns a new object of class 'MExclusion'.

    @return a new object of class 'MExclusion'.
    '''
    return com_silabs_ss_framework_project_api_core_model_MExclusion()


  def createMFileContent(self):
    '''
    Returns a new object of class 'MFile Content'.

    @return a new object of class 'MFile Content'.
    '''
    return com_silabs_ss_framework_project_api_core_model_MFileContent()


  def createMFileEntry(self):
    '''
    Returns a new object of class 'MFile Entry'.

    @return a new object of class 'MFile Entry'.
    '''
    return com_silabs_ss_framework_project_api_core_model_MFileEntry()


  def createMFileReference(self):
    '''
    Returns a new object of class 'MFile Reference'.

    @return a new object of class 'MFile Reference'.
    '''
    return com_silabs_ss_framework_project_api_core_model_MFileReference()


  def createMFolderContent(self):
    '''
    Returns a new object of class 'MFolder Content'.

    @return a new object of class 'MFolder Content'.
    '''
    return com_silabs_ss_framework_project_api_core_model_MFolderContent()


  def createMFolderEntry(self):
    '''
    Returns a new object of class 'MFolder Entry'.

    @return a new object of class 'MFolder Entry'.
    '''
    return com_silabs_ss_framework_project_api_core_model_MFolderEntry()


  def createMFolderReference(self):
    '''
    Returns a new object of class 'MFolder Reference'.

    @return a new object of class 'MFolder Reference'.
    '''
    return com_silabs_ss_framework_project_api_core_model_MFolderReference()


  def createMGenericOption(self):
    '''
    Returns a new object of class 'MGeneric Option'.

    @return a new object of class 'MGeneric Option'.
    '''
    return com_silabs_ss_framework_project_api_core_model_MGenericOption()


  def createMIncludePath(self):
    '''
    Returns a new object of class 'MInclude Path'.

    @return a new object of class 'MInclude Path'.
    '''
    return com_silabs_ss_framework_project_api_core_model_MIncludePath()


  def createMInclusion(self):
    '''
    Returns a new object of class 'MInclusion'.

    @return a new object of class 'MInclusion'.
    '''
    return com_silabs_ss_framework_project_api_core_model_MInclusion()


  def createMLibraryFile(self):
    '''
    Returns a new object of class 'MLibrary File'.

    @return a new object of class 'MLibrary File'.
    '''
    return com_silabs_ss_framework_project_api_core_model_MLibraryFile()


  def createMLibraryPath(self):
    '''
    Returns a new object of class 'MLibrary Path'.

    @return a new object of class 'MLibrary Path'.
    '''
    return com_silabs_ss_framework_project_api_core_model_MLibraryPath()


  def createMMacroDefinition(self):
    '''
    Returns a new object of class 'MMacro Definition'.

    @return a new object of class 'MMacro Definition'.
    '''
    return com_silabs_ss_framework_project_api_core_model_MMacroDefinition()


  def createMModule(self):
    '''
    Returns a new object of class 'MModule'.

    @return a new object of class 'MModule'.
    '''
    return com_silabs_ss_framework_project_api_core_model_MModule()


  def createMProject(self):
    '''
    Returns a new object of class 'MProject'.

    @return a new object of class 'MProject'.
    '''
    return com_silabs_ss_framework_project_api_core_model_MProject()


  def createMProjectReference(self):
    '''
    Returns a new object of class 'MProject Reference'.

    @return a new object of class 'MProject Reference'.
    '''
    return com_silabs_ss_framework_project_api_core_model_MProjectReference()


  def createMProjectResourceTree(self):
    '''
    Returns a new object of class 'MProject Resource Tree'.

    @return a new object of class 'MProject Resource Tree'.
    '''
    return com_silabs_ss_framework_project_api_core_model_MProjectResourceTree()


  def createMSelectable(self):
    '''
    Returns a new object of class 'MSelectable'.

    @return a new object of class 'MSelectable'.
    '''
    return com_silabs_ss_framework_project_api_core_model_MSelectable()


  def createMSettingsSite(self):
    '''
    Returns a new object of class 'MSettings Site'.

    @return a new object of class 'MSettings Site'.
    '''
    return com_silabs_ss_framework_project_api_core_model_MSettingsSite()


  def createMSpecificOption(self):
    '''
    Returns a new object of class 'MSpecific Option'.

    @return a new object of class 'MSpecific Option'.
    '''
    return com_silabs_ss_framework_project_api_core_model_MSpecificOption()


  def createMToolListOption(self):
    '''
    Returns a new object of class 'MTool List Option'.

    @return a new object of class 'MTool List Option'.
    '''
    return com_silabs_ss_framework_project_api_core_model_MToolListOption()


  def createMToolOption(self):
    '''
    Returns a new object of class 'MTool Option'.

    @return a new object of class 'MTool Option'.
    '''
    return com_silabs_ss_framework_project_api_core_model_MToolOption()


  def getProjectModelPackage(self):
    '''
    Returns the package supported by this factory.

    @return the package supported by this factory.
    '''
    return com_silabs_ss_framework_project_api_core_model_ProjectModelPackage()


class com_silabs_ss_framework_project_api_core_model_ProjectModelPackage(org_eclipse_emf_ecore_EPackage):
  '''
  The Package for the model.
  It contains accessors for the meta objects to represent

  	each class,

  	each feature of each class,

  	each enum,

  	and each data type

  @see com.silabs.ss.framework.project.api.core.model.ProjectModelFactory
  @model kind="package"
  '''
  def init(self):
    self.projectModelFactory = self.getProjectModelFactory()

    self.documentRoot_Mixed = self.getDocumentRoot_Mixed()

    self.mBuildSetting_LanguageCompatibility = self.getMBuildSetting_LanguageCompatibility()

    self.mConfigIdToMProjectReferenceMap_Key = self.getMConfigIdToMProjectReferenceMap_Key()

    self.mConfigSettings_ExcludedPaths = self.getMConfigSettings_ExcludedPaths()

    self.mConfigSettings_OutputFileBase = self.getMConfigSettings_OutputFileBase()

    self.mConfigSettings_PostbuildStep = self.getMConfigSettings_PostbuildStep()

    self.mConfigSettings_PrebuildStep = self.getMConfigSettings_PrebuildStep()

    self.mConfigSettings_SourceFolders = self.getMConfigSettings_SourceFolders()

    self.mConfiguration_StockConfigCompatibility = self.getMConfiguration_StockConfigCompatibility()

    self.mContent_Linked = self.getMContent_Linked()

    self.mContent_Uri = self.getMContent_Uri()

    self.mContent_Virtual = self.getMContent_Virtual()

    self.mConvertedOption_OptionId = self.getMConvertedOption_OptionId()

    self.mConvertedOption_ToolId = self.getMConvertedOption_ToolId()

    self.mConvertedOption_Value = self.getMConvertedOption_Value()

    self.mConvertedOption_ValueStatus = self.getMConvertedOption_ValueStatus()

    self.mCustomization_Pattern = self.getMCustomization_Pattern()

    self.mFolderContent_IncludeAllFiles = self.getMFolderContent_IncludeAllFiles()

    self.mFolderContent_IncludeAllFolders = self.getMFolderContent_IncludeAllFolders()

    self.mIncludePath_Uri = self.getMIncludePath_Uri()

    self.mIncludePath_User = self.getMIncludePath_User()

    self.mInclusion_Replacement = self.getMInclusion_Replacement()

    self.mLibraryFile_Name = self.getMLibraryFile_Name()

    self.mLibraryFile_Uri = self.getMLibraryFile_Uri()

    self.mLibraryPath_Uri = self.getMLibraryPath_Uri()

    self.mMacroDefinition_Name = self.getMMacroDefinition_Name()

    self.mMacroDefinition_Value = self.getMMacroDefinition_Value()

    self.mModule_CustomizationsGroup = self.getMModule_CustomizationsGroup()

    self.mModule_Id = self.getMModule_Id()

    self.mModule_Pdm = self.getMModule_Pdm()

    self.mProject_ContentRoot = self.getMProject_ContentRoot()

    self.mReference_Builtin = self.getMReference_Builtin()

    self.mReference_Excluded = self.getMReference_Excluded()

    self.mReference_Remove = self.getMReference_Remove()

    self.mSelectable_BoardCompatibility = self.getMSelectable_BoardCompatibility()

    self.mSelectable_Builtin = self.getMSelectable_Builtin()

    self.mSelectable_PartCompatibility = self.getMSelectable_PartCompatibility()

    self.mSelectable_SdkCompatibility = self.getMSelectable_SdkCompatibility()

    self.mSelectable_ToolchainCompatibility = self.getMSelectable_ToolchainCompatibility()

    self.mSpecificOption_MappingStatus = self.getMSpecificOption_MappingStatus()

    self.mToolListOption_Value = self.getMToolListOption_Value()

    self.mToolOption_OptionId = self.getMToolOption_OptionId()

    self.mToolOption_ToolId = self.getMToolOption_ToolId()

    self.mToolOption_Value = self.getMToolOption_Value()

    self.documentRoot = self.getDocumentRoot()

    self.mBuildSetting = self.getMBuildSetting()

    self.mConfigIdToMProjectReferenceMap = self.getMConfigIdToMProjectReferenceMap()

    self.mConfigSettings = self.getMConfigSettings()

    self.mConfiguration = self.getMConfiguration()

    self.mContent = self.getMContent()

    self.mConvertedOption = self.getMConvertedOption()

    self.mCustomization = self.getMCustomization()

    self.mEntry = self.getMEntry()

    self.mEntryToMSettingsSiteMap = self.getMEntryToMSettingsSiteMap()

    self.mExclusion = self.getMExclusion()

    self.mFileContent = self.getMFileContent()

    self.mFileEntry = self.getMFileEntry()

    self.mFileReference = self.getMFileReference()

    self.mFolderContent = self.getMFolderContent()

    self.mFolderEntry = self.getMFolderEntry()

    self.mFolderReference = self.getMFolderReference()

    self.mGenericOption = self.getMGenericOption()

    self.mIncludePath = self.getMIncludePath()

    self.mInclusion = self.getMInclusion()

    self.mLibraryFile = self.getMLibraryFile()

    self.mLibraryPath = self.getMLibraryPath()

    self.mMacroDefinition = self.getMMacroDefinition()

    self.mModule = self.getMModule()

    self.mProject = self.getMProject()

    self.mProjectReference = self.getMProjectReference()

    self.mProjectResourceTree = self.getMProjectResourceTree()

    self.mReference = self.getMReference()

    self.mSelectable = self.getMSelectable()

    self.mSettingsSite = self.getMSettingsSite()

    self.mSpecificOption = self.getMSpecificOption()

    self.mToolListOption = self.getMToolListOption()

    self.mToolOption = self.getMToolOption()

    self.eLanguage = self.getELanguage()

    self.eMappingStatus = self.getEMappingStatus()

    self.eValueStatus = self.getEValueStatus()

    self.documentRoot_Project = self.getDocumentRoot_Project()

    self.documentRoot_XMLNSPrefixMap = self.getDocumentRoot_XMLNSPrefixMap()

    self.documentRoot_XSISchemaLocation = self.getDocumentRoot_XSISchemaLocation()

    self.mConfigIdToMProjectReferenceMap_Value = self.getMConfigIdToMProjectReferenceMap_Value()

    self.mConfigSettings_EntrySettings = self.getMConfigSettings_EntrySettings()

    self.mConfigSettings_Modules = self.getMConfigSettings_Modules()

    self.mEntryToMSettingsSiteMap_Key = self.getMEntryToMSettingsSiteMap_Key()

    self.mEntryToMSettingsSiteMap_Value = self.getMEntryToMSettingsSiteMap_Value()

    self.mFileReference_Ref = self.getMFileReference_Ref()

    self.mFolderEntry_Files = self.getMFolderEntry_Files()

    self.mFolderEntry_Folders = self.getMFolderEntry_Folders()

    self.mFolderReference_Files = self.getMFolderReference_Files()

    self.mFolderReference_Folders = self.getMFolderReference_Folders()

    self.mFolderReference_Ref = self.getMFolderReference_Ref()

    self.mGenericOption_SpecificMappings = self.getMGenericOption_SpecificMappings()

    self.mModule_Exclusions = self.getMModule_Exclusions()

    self.mModule_Inclusions = self.getMModule_Inclusions()

    self.mProjectResourceTree_Configurations = self.getMProjectResourceTree_Configurations()

    self.mProject_Configurations = self.getMProject_Configurations()

    self.mProject_ProjectDefinedModules = self.getMProject_ProjectDefinedModules()

    self.mReference_ProvidingModule = self.getMReference_ProvidingModule()

    self.mSettingsSite_ConvertedOptions = self.getMSettingsSite_ConvertedOptions()

    self.mSettingsSite_IncludePaths = self.getMSettingsSite_IncludePaths()

    self.mSettingsSite_LibraryFiles = self.getMSettingsSite_LibraryFiles()

    self.mSettingsSite_LibraryPaths = self.getMSettingsSite_LibraryPaths()

    self.mSettingsSite_MacroDefinitions = self.getMSettingsSite_MacroDefinitions()

    self.mSettingsSite_ToolOptions = self.getMSettingsSite_ToolOptions()

    self.mSpecificOption_GenericMappings = self.getMSpecificOption_GenericMappings()

    self.mSpecificOption_ImportedOption = self.getMSpecificOption_ImportedOption()

    self.mToolOption_ToolListOptions = self.getMToolOption_ToolListOptions()

  DOCUMENT_ROOT = int
  '''
  The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.impl.DocumentRootImpl Document Root}' class.

  @see com.silabs.ss.framework.project.api.core.model.impl.DocumentRootImpl
  @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getDocumentRoot()

  @value 0
  '''

  DOCUMENT_ROOT_FEATURE_COUNT = int
  '''
  The number of structural features of the 'Document Root' class.

  @ordered 

  @value 4
  '''

  DOCUMENT_ROOT__MIXED = int
  '''
  The feature id for the 'Mixed' attribute list.

  @ordered 

  @value 0
  '''

  DOCUMENT_ROOT__PROJECT = int
  '''
  The feature id for the 'Project' containment reference.

  @ordered 

  @value 3
  '''

  DOCUMENT_ROOT__XMLNS_PREFIX_MAP = int
  '''
  The feature id for the 'XMLNS Prefix Map' map.

  @ordered 

  @value 1
  '''

  DOCUMENT_ROOT__XSI_SCHEMA_LOCATION = int
  '''
  The feature id for the 'XSI Schema Location' map.

  @ordered 

  @value 2
  '''

  ELANGUAGE = int
  '''
  The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.ELanguage ELanguage}' enum.

  @see com.silabs.ss.framework.project.api.core.model.ELanguage
  @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getELanguage()

  @value 33
  '''

  EMAPPING_STATUS = int
  '''
  The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.EMappingStatus EMapping Status}' enum.

  @see com.silabs.ss.framework.project.api.core.model.EMappingStatus
  @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getEMappingStatus()

  @value 35
  '''

  EVALUE_STATUS = int
  '''
  The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.EValueStatus EValue Status}' enum.

  @see com.silabs.ss.framework.project.api.core.model.EValueStatus
  @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getEValueStatus()

  @value 34
  '''

  MBUILD_SETTING = int
  '''
  The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.impl.MBuildSettingImpl MBuild Setting}' class.

  @see com.silabs.ss.framework.project.api.core.model.impl.MBuildSettingImpl
  @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getMBuildSetting()

  @value 10
  '''

  MBUILD_SETTING_FEATURE_COUNT = int
  '''
  The number of structural features of the 'MBuild Setting' class.

  @ordered 

  @value MSELECTABLE_FEATURE_COUNT + 1
  '''

  MBUILD_SETTING__BOARD_COMPATIBILITY = int
  '''
  The feature id for the 'Board Compatibility' attribute.

  @ordered 

  @value MSELECTABLE__BOARD_COMPATIBILITY
  '''

  MBUILD_SETTING__BUILTIN = int
  '''
  The feature id for the 'Builtin' attribute.

  @ordered 

  @value MSELECTABLE__BUILTIN
  '''

  MBUILD_SETTING__LANGUAGE_COMPATIBILITY = int
  '''
  The feature id for the 'Language Compatibility' attribute.

  @ordered 

  @value MSELECTABLE_FEATURE_COUNT + 0
  '''

  MBUILD_SETTING__PART_COMPATIBILITY = int
  '''
  The feature id for the 'Part Compatibility' attribute.

  @ordered 

  @value MSELECTABLE__PART_COMPATIBILITY
  '''

  MBUILD_SETTING__SDK_COMPATIBILITY = int
  '''
  The feature id for the 'Sdk Compatibility' attribute.

  @ordered 

  @value MSELECTABLE__SDK_COMPATIBILITY
  '''

  MBUILD_SETTING__TOOLCHAIN_COMPATIBILITY = int
  '''
  The feature id for the 'Toolchain Compatibility' attribute.

  @ordered 

  @value MSELECTABLE__TOOLCHAIN_COMPATIBILITY
  '''

  MCONFIGURATION = int
  '''
  The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.impl.MConfigurationImpl MConfiguration}' class.

  @see com.silabs.ss.framework.project.api.core.model.impl.MConfigurationImpl
  @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getMConfiguration()

  @value 19
  '''

  MCONFIGURATION_FEATURE_COUNT = int
  '''
  The number of structural features of the 'MConfiguration' class.

  @ordered 

  @value StudioModelPackage.MDESCRIPTOR_FEATURE_COUNT + 19
  '''

  MCONFIGURATION__BOARD_COMPATIBILITY = int
  '''
  The feature id for the 'Board Compatibility' attribute.

  @ordered 

  @value StudioModelPackage.MDESCRIPTOR_FEATURE_COUNT + 13
  '''

  MCONFIGURATION__BUILTIN = int
  '''
  The feature id for the 'Builtin' attribute.

  @ordered 

  @value StudioModelPackage.MDESCRIPTOR_FEATURE_COUNT + 17
  '''

  MCONFIGURATION__CONVERTED_OPTIONS = int
  '''
  The feature id for the 'Converted Options' containment reference list.

  @ordered 

  @value StudioModelPackage.MDESCRIPTOR_FEATURE_COUNT + 7
  '''

  MCONFIGURATION__DESCRIPTION = int
  '''
  The feature id for the 'Description' attribute.

  @ordered 

  @value StudioModelPackage.MDESCRIPTOR__DESCRIPTION
  '''

  MCONFIGURATION__ENTRY_SETTINGS = int
  '''
  The feature id for the 'Entry Settings' map.

  @ordered 

  @value StudioModelPackage.MDESCRIPTOR_FEATURE_COUNT + 3
  '''

  MCONFIGURATION__EXCLUDED_PATHS = int
  '''
  The feature id for the 'Excluded Paths' attribute list.

  @ordered 

  @value StudioModelPackage.MDESCRIPTOR_FEATURE_COUNT + 1
  '''

  MCONFIGURATION__ID = int
  '''
  The feature id for the 'Id' attribute.

  @ordered 

  @value StudioModelPackage.MDESCRIPTOR__ID
  '''

  MCONFIGURATION__INCLUDE_PATHS = int
  '''
  The feature id for the 'Include Paths' containment reference list.

  @ordered 

  @value StudioModelPackage.MDESCRIPTOR_FEATURE_COUNT + 8
  '''

  MCONFIGURATION__LABEL = int
  '''
  The feature id for the 'Label' attribute.

  @ordered 

  @value StudioModelPackage.MDESCRIPTOR__LABEL
  '''

  MCONFIGURATION__LIBRARY_FILES = int
  '''
  The feature id for the 'Library Files' containment reference list.

  @ordered 

  @value StudioModelPackage.MDESCRIPTOR_FEATURE_COUNT + 10
  '''

  MCONFIGURATION__LIBRARY_PATHS = int
  '''
  The feature id for the 'Library Paths' containment reference list.

  @ordered 

  @value StudioModelPackage.MDESCRIPTOR_FEATURE_COUNT + 11
  '''

  MCONFIGURATION__MACRO_DEFINITIONS = int
  '''
  The feature id for the 'Macro Definitions' containment reference list.

  @ordered 

  @value StudioModelPackage.MDESCRIPTOR_FEATURE_COUNT + 9
  '''

  MCONFIGURATION__MODULES = int
  '''
  The feature id for the 'Modules' containment reference list.

  @ordered 

  @value StudioModelPackage.MDESCRIPTOR_FEATURE_COUNT + 4
  '''

  MCONFIGURATION__NAME = int
  '''
  The feature id for the 'Name' attribute.

  @ordered 

  @value StudioModelPackage.MDESCRIPTOR__NAME
  '''

  MCONFIGURATION__OUTPUT_FILE_BASE = int
  '''
  The feature id for the 'Output File Base' attribute.

  @ordered 

  @value StudioModelPackage.MDESCRIPTOR_FEATURE_COUNT + 2
  '''

  MCONFIGURATION__PART_COMPATIBILITY = int
  '''
  The feature id for the 'Part Compatibility' attribute.

  @ordered 

  @value StudioModelPackage.MDESCRIPTOR_FEATURE_COUNT + 14
  '''

  MCONFIGURATION__POSTBUILD_STEP = int
  '''
  The feature id for the 'Postbuild Step' attribute.

  @ordered 

  @value StudioModelPackage.MDESCRIPTOR_FEATURE_COUNT + 6
  '''

  MCONFIGURATION__PREBUILD_STEP = int
  '''
  The feature id for the 'Prebuild Step' attribute.

  @ordered 

  @value StudioModelPackage.MDESCRIPTOR_FEATURE_COUNT + 5
  '''

  MCONFIGURATION__PROPERTIES = int
  '''
  The feature id for the 'Properties' map.

  @ordered 

  @value StudioModelPackage.MDESCRIPTOR__PROPERTIES
  '''

  MCONFIGURATION__PROPERTY_SCOPE = int
  '''
  The feature id for the 'Property Scope' attribute.

  @ordered 

  @value StudioModelPackage.MDESCRIPTOR__PROPERTY_SCOPE
  '''

  MCONFIGURATION__SDK_COMPATIBILITY = int
  '''
  The feature id for the 'Sdk Compatibility' attribute.

  @ordered 

  @value StudioModelPackage.MDESCRIPTOR_FEATURE_COUNT + 16
  '''

  MCONFIGURATION__SOURCE_FOLDERS = int
  '''
  The feature id for the 'Source Folders' attribute list.

  @ordered 

  @value StudioModelPackage.MDESCRIPTOR_FEATURE_COUNT + 0
  '''

  MCONFIGURATION__STOCK_CONFIG_COMPATIBILITY = int
  '''
  The feature id for the 'Stock Config Compatibility' attribute.

  @ordered 

  @value StudioModelPackage.MDESCRIPTOR_FEATURE_COUNT + 18
  '''

  MCONFIGURATION__TOOLCHAIN_COMPATIBILITY = int
  '''
  The feature id for the 'Toolchain Compatibility' attribute.

  @ordered 

  @value StudioModelPackage.MDESCRIPTOR_FEATURE_COUNT + 15
  '''

  MCONFIGURATION__TOOL_OPTIONS = int
  '''
  The feature id for the 'Tool Options' containment reference list.

  @ordered 

  @value StudioModelPackage.MDESCRIPTOR_FEATURE_COUNT + 12
  '''

  MCONFIG_ID_TO_MPROJECT_REFERENCE_MAP = int
  '''
  The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.impl.MConfigIdToMProjectReferenceMapImpl MConfig Id To MProject Reference Map}' class.

  @see com.silabs.ss.framework.project.api.core.model.impl.MConfigIdToMProjectReferenceMapImpl
  @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getMConfigIdToMProjectReferenceMap()

  @value 31
  '''

  MCONFIG_ID_TO_MPROJECT_REFERENCE_MAP_FEATURE_COUNT = int
  '''
  The number of structural features of the 'MConfig Id To MProject Reference Map' class.

  @ordered 

  @value 2
  '''

  MCONFIG_ID_TO_MPROJECT_REFERENCE_MAP__KEY = int
  '''
  The feature id for the 'Key' attribute.

  @ordered 

  @value 0
  '''

  MCONFIG_ID_TO_MPROJECT_REFERENCE_MAP__VALUE = int
  '''
  The feature id for the 'Value' containment reference.

  @ordered 

  @value 1
  '''

  MCONFIG_SETTINGS = int
  '''
  The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.impl.MConfigSettingsImpl MConfig Settings}' class.

  @see com.silabs.ss.framework.project.api.core.model.impl.MConfigSettingsImpl
  @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getMConfigSettings()

  @value 20
  '''

  MCONFIG_SETTINGS_FEATURE_COUNT = int
  '''
  The number of structural features of the 'MConfig Settings' class.

  @ordered 

  @value 7
  '''

  MCONFIG_SETTINGS__ENTRY_SETTINGS = int
  '''
  The feature id for the 'Entry Settings' map.

  @ordered 

  @value 3
  '''

  MCONFIG_SETTINGS__EXCLUDED_PATHS = int
  '''
  The feature id for the 'Excluded Paths' attribute list.

  @ordered 

  @value 1
  '''

  MCONFIG_SETTINGS__MODULES = int
  '''
  The feature id for the 'Modules' containment reference list.

  @ordered 

  @value 4
  '''

  MCONFIG_SETTINGS__OUTPUT_FILE_BASE = int
  '''
  The feature id for the 'Output File Base' attribute.

  @ordered 

  @value 2
  '''

  MCONFIG_SETTINGS__POSTBUILD_STEP = int
  '''
  The feature id for the 'Postbuild Step' attribute.

  @ordered 

  @value 6
  '''

  MCONFIG_SETTINGS__PREBUILD_STEP = int
  '''
  The feature id for the 'Prebuild Step' attribute.

  @ordered 

  @value 5
  '''

  MCONFIG_SETTINGS__SOURCE_FOLDERS = int
  '''
  The feature id for the 'Source Folders' attribute list.

  @ordered 

  @value 0
  '''

  MCONTENT = int
  '''
  The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.impl.MContentImpl MContent}' class.

  @see com.silabs.ss.framework.project.api.core.model.impl.MContentImpl
  @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getMContent()

  @value 6
  '''

  MCONTENT_FEATURE_COUNT = int
  '''
  The number of structural features of the 'MContent' class.

  @ordered 

  @value MENTRY_FEATURE_COUNT + 3
  '''

  MCONTENT__BOARD_COMPATIBILITY = int
  '''
  The feature id for the 'Board Compatibility' attribute.

  @ordered 

  @value MENTRY__BOARD_COMPATIBILITY
  '''

  MCONTENT__BUILTIN = int
  '''
  The feature id for the 'Builtin' attribute.

  @ordered 

  @value MENTRY__BUILTIN
  '''

  MCONTENT__CONVERTED_OPTIONS = int
  '''
  The feature id for the 'Converted Options' containment reference list.

  @ordered 

  @value MENTRY__CONVERTED_OPTIONS
  '''

  MCONTENT__DESCRIPTION = int
  '''
  The feature id for the 'Description' attribute.

  @ordered 

  @value MENTRY__DESCRIPTION
  '''

  MCONTENT__ID = int
  '''
  The feature id for the 'Id' attribute.

  @ordered 

  @value MENTRY__ID
  '''

  MCONTENT__INCLUDE_PATHS = int
  '''
  The feature id for the 'Include Paths' containment reference list.

  @ordered 

  @value MENTRY__INCLUDE_PATHS
  '''

  MCONTENT__LABEL = int
  '''
  The feature id for the 'Label' attribute.

  @ordered 

  @value MENTRY__LABEL
  '''

  MCONTENT__LIBRARY_FILES = int
  '''
  The feature id for the 'Library Files' containment reference list.

  @ordered 

  @value MENTRY__LIBRARY_FILES
  '''

  MCONTENT__LIBRARY_PATHS = int
  '''
  The feature id for the 'Library Paths' containment reference list.

  @ordered 

  @value MENTRY__LIBRARY_PATHS
  '''

  MCONTENT__LINKED = int
  '''
  The feature id for the 'Linked' attribute.

  @ordered 

  @value MENTRY_FEATURE_COUNT + 0
  '''

  MCONTENT__MACRO_DEFINITIONS = int
  '''
  The feature id for the 'Macro Definitions' containment reference list.

  @ordered 

  @value MENTRY__MACRO_DEFINITIONS
  '''

  MCONTENT__NAME = int
  '''
  The feature id for the 'Name' attribute.

  @ordered 

  @value MENTRY__NAME
  '''

  MCONTENT__PART_COMPATIBILITY = int
  '''
  The feature id for the 'Part Compatibility' attribute.

  @ordered 

  @value MENTRY__PART_COMPATIBILITY
  '''

  MCONTENT__SDK_COMPATIBILITY = int
  '''
  The feature id for the 'Sdk Compatibility' attribute.

  @ordered 

  @value MENTRY__SDK_COMPATIBILITY
  '''

  MCONTENT__TOOLCHAIN_COMPATIBILITY = int
  '''
  The feature id for the 'Toolchain Compatibility' attribute.

  @ordered 

  @value MENTRY__TOOLCHAIN_COMPATIBILITY
  '''

  MCONTENT__TOOL_OPTIONS = int
  '''
  The feature id for the 'Tool Options' containment reference list.

  @ordered 

  @value MENTRY__TOOL_OPTIONS
  '''

  MCONTENT__URI = int
  '''
  The feature id for the 'Uri' attribute.

  @ordered 

  @value MENTRY_FEATURE_COUNT + 1
  '''

  MCONTENT__VIRTUAL = int
  '''
  The feature id for the 'Virtual' attribute.

  @ordered 

  @value MENTRY_FEATURE_COUNT + 2
  '''

  MCONVERTED_OPTION = int
  '''
  The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.impl.MConvertedOptionImpl MConverted Option}' class.

  @see com.silabs.ss.framework.project.api.core.model.impl.MConvertedOptionImpl
  @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getMConvertedOption()

  @value 15
  '''

  MCONVERTED_OPTION_FEATURE_COUNT = int
  '''
  The number of structural features of the 'MConverted Option' class.

  @ordered 

  @value 4
  '''

  MCONVERTED_OPTION__OPTION_ID = int
  '''
  The feature id for the 'Option Id' attribute.

  @ordered 

  @value 1
  '''

  MCONVERTED_OPTION__TOOL_ID = int
  '''
  The feature id for the 'Tool Id' attribute.

  @ordered 

  @value 0
  '''

  MCONVERTED_OPTION__VALUE = int
  '''
  The feature id for the 'Value' attribute.

  @ordered 

  @value 2
  '''

  MCONVERTED_OPTION__VALUE_STATUS = int
  '''
  The feature id for the 'Value Status' attribute.

  @ordered 

  @value 3
  '''

  MCUSTOMIZATION = int
  '''
  The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.impl.MCustomizationImpl MCustomization}' class.

  @see com.silabs.ss.framework.project.api.core.model.impl.MCustomizationImpl
  @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getMCustomization()

  @value 23
  '''

  MCUSTOMIZATION_FEATURE_COUNT = int
  '''
  The number of structural features of the 'MCustomization' class.

  @ordered 

  @value MSELECTABLE_FEATURE_COUNT + 1
  '''

  MCUSTOMIZATION__BOARD_COMPATIBILITY = int
  '''
  The feature id for the 'Board Compatibility' attribute.

  @ordered 

  @value MSELECTABLE__BOARD_COMPATIBILITY
  '''

  MCUSTOMIZATION__BUILTIN = int
  '''
  The feature id for the 'Builtin' attribute.

  @ordered 

  @value MSELECTABLE__BUILTIN
  '''

  MCUSTOMIZATION__PART_COMPATIBILITY = int
  '''
  The feature id for the 'Part Compatibility' attribute.

  @ordered 

  @value MSELECTABLE__PART_COMPATIBILITY
  '''

  MCUSTOMIZATION__PATTERN = int
  '''
  The feature id for the 'Pattern' attribute.

  @ordered 

  @value MSELECTABLE_FEATURE_COUNT + 0
  '''

  MCUSTOMIZATION__SDK_COMPATIBILITY = int
  '''
  The feature id for the 'Sdk Compatibility' attribute.

  @ordered 

  @value MSELECTABLE__SDK_COMPATIBILITY
  '''

  MCUSTOMIZATION__TOOLCHAIN_COMPATIBILITY = int
  '''
  The feature id for the 'Toolchain Compatibility' attribute.

  @ordered 

  @value MSELECTABLE__TOOLCHAIN_COMPATIBILITY
  '''

  MENTRY = int
  '''
  The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.impl.MEntryImpl MEntry}' class.

  @see com.silabs.ss.framework.project.api.core.model.impl.MEntryImpl
  @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getMEntry()

  @value 3
  '''

  MENTRY_FEATURE_COUNT = int
  '''
  The number of structural features of the 'MEntry' class.

  @ordered 

  @value StudioModelPackage.MDESCRIBABLE_FEATURE_COUNT + 11
  '''

  MENTRY_TO_MSETTINGS_SITE_MAP = int
  '''
  The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.impl.MEntryToMSettingsSiteMapImpl MEntry To MSettings Site Map}' class.

  @see com.silabs.ss.framework.project.api.core.model.impl.MEntryToMSettingsSiteMapImpl
  @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getMEntryToMSettingsSiteMap()

  @value 21
  '''

  MENTRY_TO_MSETTINGS_SITE_MAP_FEATURE_COUNT = int
  '''
  The number of structural features of the 'MEntry To MSettings Site Map' class.

  @ordered 

  @value 2
  '''

  MENTRY_TO_MSETTINGS_SITE_MAP__KEY = int
  '''
  The feature id for the 'Key' reference.

  @ordered 

  @value 0
  '''

  MENTRY_TO_MSETTINGS_SITE_MAP__VALUE = int
  '''
  The feature id for the 'Value' containment reference.

  @ordered 

  @value 1
  '''

  MENTRY__BOARD_COMPATIBILITY = int
  '''
  The feature id for the 'Board Compatibility' attribute.

  @ordered 

  @value StudioModelPackage.MDESCRIBABLE_FEATURE_COUNT + 0
  '''

  MENTRY__BUILTIN = int
  '''
  The feature id for the 'Builtin' attribute.

  @ordered 

  @value StudioModelPackage.MDESCRIBABLE_FEATURE_COUNT + 4
  '''

  MENTRY__CONVERTED_OPTIONS = int
  '''
  The feature id for the 'Converted Options' containment reference list.

  @ordered 

  @value StudioModelPackage.MDESCRIBABLE_FEATURE_COUNT + 5
  '''

  MENTRY__DESCRIPTION = int
  '''
  The feature id for the 'Description' attribute.

  @ordered 

  @value StudioModelPackage.MDESCRIBABLE__DESCRIPTION
  '''

  MENTRY__ID = int
  '''
  The feature id for the 'Id' attribute.

  @ordered 

  @value StudioModelPackage.MDESCRIBABLE__ID
  '''

  MENTRY__INCLUDE_PATHS = int
  '''
  The feature id for the 'Include Paths' containment reference list.

  @ordered 

  @value StudioModelPackage.MDESCRIBABLE_FEATURE_COUNT + 6
  '''

  MENTRY__LABEL = int
  '''
  The feature id for the 'Label' attribute.

  @ordered 

  @value StudioModelPackage.MDESCRIBABLE__LABEL
  '''

  MENTRY__LIBRARY_FILES = int
  '''
  The feature id for the 'Library Files' containment reference list.

  @ordered 

  @value StudioModelPackage.MDESCRIBABLE_FEATURE_COUNT + 8
  '''

  MENTRY__LIBRARY_PATHS = int
  '''
  The feature id for the 'Library Paths' containment reference list.

  @ordered 

  @value StudioModelPackage.MDESCRIBABLE_FEATURE_COUNT + 9
  '''

  MENTRY__MACRO_DEFINITIONS = int
  '''
  The feature id for the 'Macro Definitions' containment reference list.

  @ordered 

  @value StudioModelPackage.MDESCRIBABLE_FEATURE_COUNT + 7
  '''

  MENTRY__NAME = int
  '''
  The feature id for the 'Name' attribute.

  @ordered 

  @value StudioModelPackage.MDESCRIBABLE__NAME
  '''

  MENTRY__PART_COMPATIBILITY = int
  '''
  The feature id for the 'Part Compatibility' attribute.

  @ordered 

  @value StudioModelPackage.MDESCRIBABLE_FEATURE_COUNT + 1
  '''

  MENTRY__SDK_COMPATIBILITY = int
  '''
  The feature id for the 'Sdk Compatibility' attribute.

  @ordered 

  @value StudioModelPackage.MDESCRIBABLE_FEATURE_COUNT + 3
  '''

  MENTRY__TOOLCHAIN_COMPATIBILITY = int
  '''
  The feature id for the 'Toolchain Compatibility' attribute.

  @ordered 

  @value StudioModelPackage.MDESCRIBABLE_FEATURE_COUNT + 2
  '''

  MENTRY__TOOL_OPTIONS = int
  '''
  The feature id for the 'Tool Options' containment reference list.

  @ordered 

  @value StudioModelPackage.MDESCRIBABLE_FEATURE_COUNT + 10
  '''

  MEXCLUSION = int
  '''
  The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.impl.MExclusionImpl MExclusion}' class.

  @see com.silabs.ss.framework.project.api.core.model.impl.MExclusionImpl
  @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getMExclusion()

  @value 24
  '''

  MEXCLUSION_FEATURE_COUNT = int
  '''
  The number of structural features of the 'MExclusion' class.

  @ordered 

  @value MCUSTOMIZATION_FEATURE_COUNT + 0
  '''

  MEXCLUSION__BOARD_COMPATIBILITY = int
  '''
  The feature id for the 'Board Compatibility' attribute.

  @ordered 

  @value MCUSTOMIZATION__BOARD_COMPATIBILITY
  '''

  MEXCLUSION__BUILTIN = int
  '''
  The feature id for the 'Builtin' attribute.

  @ordered 

  @value MCUSTOMIZATION__BUILTIN
  '''

  MEXCLUSION__PART_COMPATIBILITY = int
  '''
  The feature id for the 'Part Compatibility' attribute.

  @ordered 

  @value MCUSTOMIZATION__PART_COMPATIBILITY
  '''

  MEXCLUSION__PATTERN = int
  '''
  The feature id for the 'Pattern' attribute.

  @ordered 

  @value MCUSTOMIZATION__PATTERN
  '''

  MEXCLUSION__SDK_COMPATIBILITY = int
  '''
  The feature id for the 'Sdk Compatibility' attribute.

  @ordered 

  @value MCUSTOMIZATION__SDK_COMPATIBILITY
  '''

  MEXCLUSION__TOOLCHAIN_COMPATIBILITY = int
  '''
  The feature id for the 'Toolchain Compatibility' attribute.

  @ordered 

  @value MCUSTOMIZATION__TOOLCHAIN_COMPATIBILITY
  '''

  MFILE_CONTENT = int
  '''
  The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.impl.MFileContentImpl MFile Content}' class.

  @see com.silabs.ss.framework.project.api.core.model.impl.MFileContentImpl
  @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getMFileContent()

  @value 7
  '''

  MFILE_CONTENT_FEATURE_COUNT = int
  '''
  The number of structural features of the 'MFile Content' class.

  @ordered 

  @value MFILE_ENTRY_FEATURE_COUNT + 3
  '''

  MFILE_CONTENT__BOARD_COMPATIBILITY = int
  '''
  The feature id for the 'Board Compatibility' attribute.

  @ordered 

  @value MFILE_ENTRY__BOARD_COMPATIBILITY
  '''

  MFILE_CONTENT__BUILTIN = int
  '''
  The feature id for the 'Builtin' attribute.

  @ordered 

  @value MFILE_ENTRY__BUILTIN
  '''

  MFILE_CONTENT__CONVERTED_OPTIONS = int
  '''
  The feature id for the 'Converted Options' containment reference list.

  @ordered 

  @value MFILE_ENTRY__CONVERTED_OPTIONS
  '''

  MFILE_CONTENT__DESCRIPTION = int
  '''
  The feature id for the 'Description' attribute.

  @ordered 

  @value MFILE_ENTRY__DESCRIPTION
  '''

  MFILE_CONTENT__ID = int
  '''
  The feature id for the 'Id' attribute.

  @ordered 

  @value MFILE_ENTRY__ID
  '''

  MFILE_CONTENT__INCLUDE_PATHS = int
  '''
  The feature id for the 'Include Paths' containment reference list.

  @ordered 

  @value MFILE_ENTRY__INCLUDE_PATHS
  '''

  MFILE_CONTENT__LABEL = int
  '''
  The feature id for the 'Label' attribute.

  @ordered 

  @value MFILE_ENTRY__LABEL
  '''

  MFILE_CONTENT__LIBRARY_FILES = int
  '''
  The feature id for the 'Library Files' containment reference list.

  @ordered 

  @value MFILE_ENTRY__LIBRARY_FILES
  '''

  MFILE_CONTENT__LIBRARY_PATHS = int
  '''
  The feature id for the 'Library Paths' containment reference list.

  @ordered 

  @value MFILE_ENTRY__LIBRARY_PATHS
  '''

  MFILE_CONTENT__LINKED = int
  '''
  The feature id for the 'Linked' attribute.

  @ordered 

  @value MFILE_ENTRY_FEATURE_COUNT + 0
  '''

  MFILE_CONTENT__MACRO_DEFINITIONS = int
  '''
  The feature id for the 'Macro Definitions' containment reference list.

  @ordered 

  @value MFILE_ENTRY__MACRO_DEFINITIONS
  '''

  MFILE_CONTENT__NAME = int
  '''
  The feature id for the 'Name' attribute.

  @ordered 

  @value MFILE_ENTRY__NAME
  '''

  MFILE_CONTENT__PART_COMPATIBILITY = int
  '''
  The feature id for the 'Part Compatibility' attribute.

  @ordered 

  @value MFILE_ENTRY__PART_COMPATIBILITY
  '''

  MFILE_CONTENT__SDK_COMPATIBILITY = int
  '''
  The feature id for the 'Sdk Compatibility' attribute.

  @ordered 

  @value MFILE_ENTRY__SDK_COMPATIBILITY
  '''

  MFILE_CONTENT__TOOLCHAIN_COMPATIBILITY = int
  '''
  The feature id for the 'Toolchain Compatibility' attribute.

  @ordered 

  @value MFILE_ENTRY__TOOLCHAIN_COMPATIBILITY
  '''

  MFILE_CONTENT__TOOL_OPTIONS = int
  '''
  The feature id for the 'Tool Options' containment reference list.

  @ordered 

  @value MFILE_ENTRY__TOOL_OPTIONS
  '''

  MFILE_CONTENT__URI = int
  '''
  The feature id for the 'Uri' attribute.

  @ordered 

  @value MFILE_ENTRY_FEATURE_COUNT + 1
  '''

  MFILE_CONTENT__VIRTUAL = int
  '''
  The feature id for the 'Virtual' attribute.

  @ordered 

  @value MFILE_ENTRY_FEATURE_COUNT + 2
  '''

  MFILE_ENTRY = int
  '''
  The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.impl.MFileEntryImpl MFile Entry}' class.

  @see com.silabs.ss.framework.project.api.core.model.impl.MFileEntryImpl
  @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getMFileEntry()

  @value 4
  '''

  MFILE_ENTRY_FEATURE_COUNT = int
  '''
  The number of structural features of the 'MFile Entry' class.

  @ordered 

  @value MENTRY_FEATURE_COUNT + 0
  '''

  MFILE_ENTRY__BOARD_COMPATIBILITY = int
  '''
  The feature id for the 'Board Compatibility' attribute.

  @ordered 

  @value MENTRY__BOARD_COMPATIBILITY
  '''

  MFILE_ENTRY__BUILTIN = int
  '''
  The feature id for the 'Builtin' attribute.

  @ordered 

  @value MENTRY__BUILTIN
  '''

  MFILE_ENTRY__CONVERTED_OPTIONS = int
  '''
  The feature id for the 'Converted Options' containment reference list.

  @ordered 

  @value MENTRY__CONVERTED_OPTIONS
  '''

  MFILE_ENTRY__DESCRIPTION = int
  '''
  The feature id for the 'Description' attribute.

  @ordered 

  @value MENTRY__DESCRIPTION
  '''

  MFILE_ENTRY__ID = int
  '''
  The feature id for the 'Id' attribute.

  @ordered 

  @value MENTRY__ID
  '''

  MFILE_ENTRY__INCLUDE_PATHS = int
  '''
  The feature id for the 'Include Paths' containment reference list.

  @ordered 

  @value MENTRY__INCLUDE_PATHS
  '''

  MFILE_ENTRY__LABEL = int
  '''
  The feature id for the 'Label' attribute.

  @ordered 

  @value MENTRY__LABEL
  '''

  MFILE_ENTRY__LIBRARY_FILES = int
  '''
  The feature id for the 'Library Files' containment reference list.

  @ordered 

  @value MENTRY__LIBRARY_FILES
  '''

  MFILE_ENTRY__LIBRARY_PATHS = int
  '''
  The feature id for the 'Library Paths' containment reference list.

  @ordered 

  @value MENTRY__LIBRARY_PATHS
  '''

  MFILE_ENTRY__MACRO_DEFINITIONS = int
  '''
  The feature id for the 'Macro Definitions' containment reference list.

  @ordered 

  @value MENTRY__MACRO_DEFINITIONS
  '''

  MFILE_ENTRY__NAME = int
  '''
  The feature id for the 'Name' attribute.

  @ordered 

  @value MENTRY__NAME
  '''

  MFILE_ENTRY__PART_COMPATIBILITY = int
  '''
  The feature id for the 'Part Compatibility' attribute.

  @ordered 

  @value MENTRY__PART_COMPATIBILITY
  '''

  MFILE_ENTRY__SDK_COMPATIBILITY = int
  '''
  The feature id for the 'Sdk Compatibility' attribute.

  @ordered 

  @value MENTRY__SDK_COMPATIBILITY
  '''

  MFILE_ENTRY__TOOLCHAIN_COMPATIBILITY = int
  '''
  The feature id for the 'Toolchain Compatibility' attribute.

  @ordered 

  @value MENTRY__TOOLCHAIN_COMPATIBILITY
  '''

  MFILE_ENTRY__TOOL_OPTIONS = int
  '''
  The feature id for the 'Tool Options' containment reference list.

  @ordered 

  @value MENTRY__TOOL_OPTIONS
  '''

  MFILE_REFERENCE = int
  '''
  The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.impl.MFileReferenceImpl MFile Reference}' class.

  @see com.silabs.ss.framework.project.api.core.model.impl.MFileReferenceImpl
  @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getMFileReference()

  @value 28
  '''

  MFILE_REFERENCE_FEATURE_COUNT = int
  '''
  The number of structural features of the 'MFile Reference' class.

  @ordered 

  @value MREFERENCE_FEATURE_COUNT + 1
  '''

  MFILE_REFERENCE__BUILTIN = int
  '''
  The feature id for the 'Builtin' attribute.

  @ordered 

  @value MREFERENCE__BUILTIN
  '''

  MFILE_REFERENCE__EXCLUDED = int
  '''
  The feature id for the 'Excluded' attribute.

  @ordered 

  @value MREFERENCE__EXCLUDED
  '''

  MFILE_REFERENCE__PROVIDING_MODULE = int
  '''
  The feature id for the 'Providing Module' reference.

  @ordered 

  @value MREFERENCE__PROVIDING_MODULE
  '''

  MFILE_REFERENCE__REF = int
  '''
  The feature id for the 'Ref' reference.

  @ordered 

  @value MREFERENCE_FEATURE_COUNT + 0
  '''

  MFILE_REFERENCE__REMOVE = int
  '''
  The feature id for the 'Remove' attribute.

  @ordered 

  @value MREFERENCE__REMOVE
  '''

  MFOLDER_CONTENT = int
  '''
  The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.impl.MFolderContentImpl MFolder Content}' class.

  @see com.silabs.ss.framework.project.api.core.model.impl.MFolderContentImpl
  @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getMFolderContent()

  @value 8
  '''

  MFOLDER_CONTENT_FEATURE_COUNT = int
  '''
  The number of structural features of the 'MFolder Content' class.

  @ordered 

  @value MCONTENT_FEATURE_COUNT + 4
  '''

  MFOLDER_CONTENT__BOARD_COMPATIBILITY = int
  '''
  The feature id for the 'Board Compatibility' attribute.

  @ordered 

  @value MCONTENT__BOARD_COMPATIBILITY
  '''

  MFOLDER_CONTENT__BUILTIN = int
  '''
  The feature id for the 'Builtin' attribute.

  @ordered 

  @value MCONTENT__BUILTIN
  '''

  MFOLDER_CONTENT__CONVERTED_OPTIONS = int
  '''
  The feature id for the 'Converted Options' containment reference list.

  @ordered 

  @value MCONTENT__CONVERTED_OPTIONS
  '''

  MFOLDER_CONTENT__DESCRIPTION = int
  '''
  The feature id for the 'Description' attribute.

  @ordered 

  @value MCONTENT__DESCRIPTION
  '''

  MFOLDER_CONTENT__FILES = int
  '''
  The feature id for the 'Files' containment reference list.

  @ordered 

  @value MCONTENT_FEATURE_COUNT + 1
  '''

  MFOLDER_CONTENT__FOLDERS = int
  '''
  The feature id for the 'Folders' containment reference list.

  @ordered 

  @value MCONTENT_FEATURE_COUNT + 0
  '''

  MFOLDER_CONTENT__ID = int
  '''
  The feature id for the 'Id' attribute.

  @ordered 

  @value MCONTENT__ID
  '''

  MFOLDER_CONTENT__INCLUDE_ALL_FILES = int
  '''
  The feature id for the 'Include All Files' attribute.

  @ordered 

  @value MCONTENT_FEATURE_COUNT + 2
  '''

  MFOLDER_CONTENT__INCLUDE_ALL_FOLDERS = int
  '''
  The feature id for the 'Include All Folders' attribute.

  @ordered 

  @value MCONTENT_FEATURE_COUNT + 3
  '''

  MFOLDER_CONTENT__INCLUDE_PATHS = int
  '''
  The feature id for the 'Include Paths' containment reference list.

  @ordered 

  @value MCONTENT__INCLUDE_PATHS
  '''

  MFOLDER_CONTENT__LABEL = int
  '''
  The feature id for the 'Label' attribute.

  @ordered 

  @value MCONTENT__LABEL
  '''

  MFOLDER_CONTENT__LIBRARY_FILES = int
  '''
  The feature id for the 'Library Files' containment reference list.

  @ordered 

  @value MCONTENT__LIBRARY_FILES
  '''

  MFOLDER_CONTENT__LIBRARY_PATHS = int
  '''
  The feature id for the 'Library Paths' containment reference list.

  @ordered 

  @value MCONTENT__LIBRARY_PATHS
  '''

  MFOLDER_CONTENT__LINKED = int
  '''
  The feature id for the 'Linked' attribute.

  @ordered 

  @value MCONTENT__LINKED
  '''

  MFOLDER_CONTENT__MACRO_DEFINITIONS = int
  '''
  The feature id for the 'Macro Definitions' containment reference list.

  @ordered 

  @value MCONTENT__MACRO_DEFINITIONS
  '''

  MFOLDER_CONTENT__NAME = int
  '''
  The feature id for the 'Name' attribute.

  @ordered 

  @value MCONTENT__NAME
  '''

  MFOLDER_CONTENT__PART_COMPATIBILITY = int
  '''
  The feature id for the 'Part Compatibility' attribute.

  @ordered 

  @value MCONTENT__PART_COMPATIBILITY
  '''

  MFOLDER_CONTENT__SDK_COMPATIBILITY = int
  '''
  The feature id for the 'Sdk Compatibility' attribute.

  @ordered 

  @value MCONTENT__SDK_COMPATIBILITY
  '''

  MFOLDER_CONTENT__TOOLCHAIN_COMPATIBILITY = int
  '''
  The feature id for the 'Toolchain Compatibility' attribute.

  @ordered 

  @value MCONTENT__TOOLCHAIN_COMPATIBILITY
  '''

  MFOLDER_CONTENT__TOOL_OPTIONS = int
  '''
  The feature id for the 'Tool Options' containment reference list.

  @ordered 

  @value MCONTENT__TOOL_OPTIONS
  '''

  MFOLDER_CONTENT__URI = int
  '''
  The feature id for the 'Uri' attribute.

  @ordered 

  @value MCONTENT__URI
  '''

  MFOLDER_CONTENT__VIRTUAL = int
  '''
  The feature id for the 'Virtual' attribute.

  @ordered 

  @value MCONTENT__VIRTUAL
  '''

  MFOLDER_ENTRY = int
  '''
  The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.impl.MFolderEntryImpl MFolder Entry}' class.

  @see com.silabs.ss.framework.project.api.core.model.impl.MFolderEntryImpl
  @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getMFolderEntry()

  @value 5
  '''

  MFOLDER_ENTRY_FEATURE_COUNT = int
  '''
  The number of structural features of the 'MFolder Entry' class.

  @ordered 

  @value MENTRY_FEATURE_COUNT + 2
  '''

  MFOLDER_ENTRY__BOARD_COMPATIBILITY = int
  '''
  The feature id for the 'Board Compatibility' attribute.

  @ordered 

  @value MENTRY__BOARD_COMPATIBILITY
  '''

  MFOLDER_ENTRY__BUILTIN = int
  '''
  The feature id for the 'Builtin' attribute.

  @ordered 

  @value MENTRY__BUILTIN
  '''

  MFOLDER_ENTRY__CONVERTED_OPTIONS = int
  '''
  The feature id for the 'Converted Options' containment reference list.

  @ordered 

  @value MENTRY__CONVERTED_OPTIONS
  '''

  MFOLDER_ENTRY__DESCRIPTION = int
  '''
  The feature id for the 'Description' attribute.

  @ordered 

  @value MENTRY__DESCRIPTION
  '''

  MFOLDER_ENTRY__FILES = int
  '''
  The feature id for the 'Files' containment reference list.

  @ordered 

  @value MENTRY_FEATURE_COUNT + 1
  '''

  MFOLDER_ENTRY__FOLDERS = int
  '''
  The feature id for the 'Folders' containment reference list.

  @ordered 

  @value MENTRY_FEATURE_COUNT + 0
  '''

  MFOLDER_ENTRY__ID = int
  '''
  The feature id for the 'Id' attribute.

  @ordered 

  @value MENTRY__ID
  '''

  MFOLDER_ENTRY__INCLUDE_PATHS = int
  '''
  The feature id for the 'Include Paths' containment reference list.

  @ordered 

  @value MENTRY__INCLUDE_PATHS
  '''

  MFOLDER_ENTRY__LABEL = int
  '''
  The feature id for the 'Label' attribute.

  @ordered 

  @value MENTRY__LABEL
  '''

  MFOLDER_ENTRY__LIBRARY_FILES = int
  '''
  The feature id for the 'Library Files' containment reference list.

  @ordered 

  @value MENTRY__LIBRARY_FILES
  '''

  MFOLDER_ENTRY__LIBRARY_PATHS = int
  '''
  The feature id for the 'Library Paths' containment reference list.

  @ordered 

  @value MENTRY__LIBRARY_PATHS
  '''

  MFOLDER_ENTRY__MACRO_DEFINITIONS = int
  '''
  The feature id for the 'Macro Definitions' containment reference list.

  @ordered 

  @value MENTRY__MACRO_DEFINITIONS
  '''

  MFOLDER_ENTRY__NAME = int
  '''
  The feature id for the 'Name' attribute.

  @ordered 

  @value MENTRY__NAME
  '''

  MFOLDER_ENTRY__PART_COMPATIBILITY = int
  '''
  The feature id for the 'Part Compatibility' attribute.

  @ordered 

  @value MENTRY__PART_COMPATIBILITY
  '''

  MFOLDER_ENTRY__SDK_COMPATIBILITY = int
  '''
  The feature id for the 'Sdk Compatibility' attribute.

  @ordered 

  @value MENTRY__SDK_COMPATIBILITY
  '''

  MFOLDER_ENTRY__TOOLCHAIN_COMPATIBILITY = int
  '''
  The feature id for the 'Toolchain Compatibility' attribute.

  @ordered 

  @value MENTRY__TOOLCHAIN_COMPATIBILITY
  '''

  MFOLDER_ENTRY__TOOL_OPTIONS = int
  '''
  The feature id for the 'Tool Options' containment reference list.

  @ordered 

  @value MENTRY__TOOL_OPTIONS
  '''

  MFOLDER_REFERENCE = int
  '''
  The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.impl.MFolderReferenceImpl MFolder Reference}' class.

  @see com.silabs.ss.framework.project.api.core.model.impl.MFolderReferenceImpl
  @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getMFolderReference()

  @value 27
  '''

  MFOLDER_REFERENCE_FEATURE_COUNT = int
  '''
  The number of structural features of the 'MFolder Reference' class.

  @ordered 

  @value MREFERENCE_FEATURE_COUNT + 3
  '''

  MFOLDER_REFERENCE__BUILTIN = int
  '''
  The feature id for the 'Builtin' attribute.

  @ordered 

  @value MREFERENCE__BUILTIN
  '''

  MFOLDER_REFERENCE__EXCLUDED = int
  '''
  The feature id for the 'Excluded' attribute.

  @ordered 

  @value MREFERENCE__EXCLUDED
  '''

  MFOLDER_REFERENCE__FILES = int
  '''
  The feature id for the 'Files' containment reference list.

  @ordered 

  @value MREFERENCE_FEATURE_COUNT + 1
  '''

  MFOLDER_REFERENCE__FOLDERS = int
  '''
  The feature id for the 'Folders' containment reference list.

  @ordered 

  @value MREFERENCE_FEATURE_COUNT + 2
  '''

  MFOLDER_REFERENCE__PROVIDING_MODULE = int
  '''
  The feature id for the 'Providing Module' reference.

  @ordered 

  @value MREFERENCE__PROVIDING_MODULE
  '''

  MFOLDER_REFERENCE__REF = int
  '''
  The feature id for the 'Ref' reference.

  @ordered 

  @value MREFERENCE_FEATURE_COUNT + 0
  '''

  MFOLDER_REFERENCE__REMOVE = int
  '''
  The feature id for the 'Remove' attribute.

  @ordered 

  @value MREFERENCE__REMOVE
  '''

  MGENERIC_OPTION = int
  '''
  The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.impl.MGenericOptionImpl MGeneric Option}' class.

  @see com.silabs.ss.framework.project.api.core.model.impl.MGenericOptionImpl
  @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getMGenericOption()

  @value 17
  '''

  MGENERIC_OPTION_FEATURE_COUNT = int
  '''
  The number of structural features of the 'MGeneric Option' class.

  @ordered 

  @value MCONVERTED_OPTION_FEATURE_COUNT + 1
  '''

  MGENERIC_OPTION__OPTION_ID = int
  '''
  The feature id for the 'Option Id' attribute.

  @ordered 

  @value MCONVERTED_OPTION__OPTION_ID
  '''

  MGENERIC_OPTION__SPECIFIC_MAPPINGS = int
  '''
  The feature id for the 'Specific Mappings' reference list.

  @ordered 

  @value MCONVERTED_OPTION_FEATURE_COUNT + 0
  '''

  MGENERIC_OPTION__TOOL_ID = int
  '''
  The feature id for the 'Tool Id' attribute.

  @ordered 

  @value MCONVERTED_OPTION__TOOL_ID
  '''

  MGENERIC_OPTION__VALUE = int
  '''
  The feature id for the 'Value' attribute.

  @ordered 

  @value MCONVERTED_OPTION__VALUE
  '''

  MGENERIC_OPTION__VALUE_STATUS = int
  '''
  The feature id for the 'Value Status' attribute.

  @ordered 

  @value MCONVERTED_OPTION__VALUE_STATUS
  '''

  MINCLUDE_PATH = int
  '''
  The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.impl.MIncludePathImpl MInclude Path}' class.

  @see com.silabs.ss.framework.project.api.core.model.impl.MIncludePathImpl
  @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getMIncludePath()

  @value 11
  '''

  MINCLUDE_PATH_FEATURE_COUNT = int
  '''
  The number of structural features of the 'MInclude Path' class.

  @ordered 

  @value MBUILD_SETTING_FEATURE_COUNT + 2
  '''

  MINCLUDE_PATH__BOARD_COMPATIBILITY = int
  '''
  The feature id for the 'Board Compatibility' attribute.

  @ordered 

  @value MBUILD_SETTING__BOARD_COMPATIBILITY
  '''

  MINCLUDE_PATH__BUILTIN = int
  '''
  The feature id for the 'Builtin' attribute.

  @ordered 

  @value MBUILD_SETTING__BUILTIN
  '''

  MINCLUDE_PATH__LANGUAGE_COMPATIBILITY = int
  '''
  The feature id for the 'Language Compatibility' attribute.

  @ordered 

  @value MBUILD_SETTING__LANGUAGE_COMPATIBILITY
  '''

  MINCLUDE_PATH__PART_COMPATIBILITY = int
  '''
  The feature id for the 'Part Compatibility' attribute.

  @ordered 

  @value MBUILD_SETTING__PART_COMPATIBILITY
  '''

  MINCLUDE_PATH__SDK_COMPATIBILITY = int
  '''
  The feature id for the 'Sdk Compatibility' attribute.

  @ordered 

  @value MBUILD_SETTING__SDK_COMPATIBILITY
  '''

  MINCLUDE_PATH__TOOLCHAIN_COMPATIBILITY = int
  '''
  The feature id for the 'Toolchain Compatibility' attribute.

  @ordered 

  @value MBUILD_SETTING__TOOLCHAIN_COMPATIBILITY
  '''

  MINCLUDE_PATH__URI = int
  '''
  The feature id for the 'Uri' attribute.

  @ordered 

  @value MBUILD_SETTING_FEATURE_COUNT + 0
  '''

  MINCLUDE_PATH__USER = int
  '''
  The feature id for the 'User' attribute.

  @ordered 

  @value MBUILD_SETTING_FEATURE_COUNT + 1
  '''

  MINCLUSION = int
  '''
  The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.impl.MInclusionImpl MInclusion}' class.

  @see com.silabs.ss.framework.project.api.core.model.impl.MInclusionImpl
  @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getMInclusion()

  @value 25
  '''

  MINCLUSION_FEATURE_COUNT = int
  '''
  The number of structural features of the 'MInclusion' class.

  @ordered 

  @value MCUSTOMIZATION_FEATURE_COUNT + 1
  '''

  MINCLUSION__BOARD_COMPATIBILITY = int
  '''
  The feature id for the 'Board Compatibility' attribute.

  @ordered 

  @value MCUSTOMIZATION__BOARD_COMPATIBILITY
  '''

  MINCLUSION__BUILTIN = int
  '''
  The feature id for the 'Builtin' attribute.

  @ordered 

  @value MCUSTOMIZATION__BUILTIN
  '''

  MINCLUSION__PART_COMPATIBILITY = int
  '''
  The feature id for the 'Part Compatibility' attribute.

  @ordered 

  @value MCUSTOMIZATION__PART_COMPATIBILITY
  '''

  MINCLUSION__PATTERN = int
  '''
  The feature id for the 'Pattern' attribute.

  @ordered 

  @value MCUSTOMIZATION__PATTERN
  '''

  MINCLUSION__REPLACEMENT = int
  '''
  The feature id for the 'Replacement' attribute.

  @ordered 

  @value MCUSTOMIZATION_FEATURE_COUNT + 0
  '''

  MINCLUSION__SDK_COMPATIBILITY = int
  '''
  The feature id for the 'Sdk Compatibility' attribute.

  @ordered 

  @value MCUSTOMIZATION__SDK_COMPATIBILITY
  '''

  MINCLUSION__TOOLCHAIN_COMPATIBILITY = int
  '''
  The feature id for the 'Toolchain Compatibility' attribute.

  @ordered 

  @value MCUSTOMIZATION__TOOLCHAIN_COMPATIBILITY
  '''

  MLIBRARY_FILE = int
  '''
  The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.impl.MLibraryFileImpl MLibrary File}' class.

  @see com.silabs.ss.framework.project.api.core.model.impl.MLibraryFileImpl
  @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getMLibraryFile()

  @value 14
  '''

  MLIBRARY_FILE_FEATURE_COUNT = int
  '''
  The number of structural features of the 'MLibrary File' class.

  @ordered 

  @value MBUILD_SETTING_FEATURE_COUNT + 2
  '''

  MLIBRARY_FILE__BOARD_COMPATIBILITY = int
  '''
  The feature id for the 'Board Compatibility' attribute.

  @ordered 

  @value MBUILD_SETTING__BOARD_COMPATIBILITY
  '''

  MLIBRARY_FILE__BUILTIN = int
  '''
  The feature id for the 'Builtin' attribute.

  @ordered 

  @value MBUILD_SETTING__BUILTIN
  '''

  MLIBRARY_FILE__LANGUAGE_COMPATIBILITY = int
  '''
  The feature id for the 'Language Compatibility' attribute.

  @ordered 

  @value MBUILD_SETTING__LANGUAGE_COMPATIBILITY
  '''

  MLIBRARY_FILE__NAME = int
  '''
  The feature id for the 'Name' attribute.

  @ordered 

  @value MBUILD_SETTING_FEATURE_COUNT + 1
  '''

  MLIBRARY_FILE__PART_COMPATIBILITY = int
  '''
  The feature id for the 'Part Compatibility' attribute.

  @ordered 

  @value MBUILD_SETTING__PART_COMPATIBILITY
  '''

  MLIBRARY_FILE__SDK_COMPATIBILITY = int
  '''
  The feature id for the 'Sdk Compatibility' attribute.

  @ordered 

  @value MBUILD_SETTING__SDK_COMPATIBILITY
  '''

  MLIBRARY_FILE__TOOLCHAIN_COMPATIBILITY = int
  '''
  The feature id for the 'Toolchain Compatibility' attribute.

  @ordered 

  @value MBUILD_SETTING__TOOLCHAIN_COMPATIBILITY
  '''

  MLIBRARY_FILE__URI = int
  '''
  The feature id for the 'Uri' attribute.

  @ordered 

  @value MBUILD_SETTING_FEATURE_COUNT + 0
  '''

  MLIBRARY_PATH = int
  '''
  The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.impl.MLibraryPathImpl MLibrary Path}' class.

  @see com.silabs.ss.framework.project.api.core.model.impl.MLibraryPathImpl
  @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getMLibraryPath()

  @value 13
  '''

  MLIBRARY_PATH_FEATURE_COUNT = int
  '''
  The number of structural features of the 'MLibrary Path' class.

  @ordered 

  @value MBUILD_SETTING_FEATURE_COUNT + 1
  '''

  MLIBRARY_PATH__BOARD_COMPATIBILITY = int
  '''
  The feature id for the 'Board Compatibility' attribute.

  @ordered 

  @value MBUILD_SETTING__BOARD_COMPATIBILITY
  '''

  MLIBRARY_PATH__BUILTIN = int
  '''
  The feature id for the 'Builtin' attribute.

  @ordered 

  @value MBUILD_SETTING__BUILTIN
  '''

  MLIBRARY_PATH__LANGUAGE_COMPATIBILITY = int
  '''
  The feature id for the 'Language Compatibility' attribute.

  @ordered 

  @value MBUILD_SETTING__LANGUAGE_COMPATIBILITY
  '''

  MLIBRARY_PATH__PART_COMPATIBILITY = int
  '''
  The feature id for the 'Part Compatibility' attribute.

  @ordered 

  @value MBUILD_SETTING__PART_COMPATIBILITY
  '''

  MLIBRARY_PATH__SDK_COMPATIBILITY = int
  '''
  The feature id for the 'Sdk Compatibility' attribute.

  @ordered 

  @value MBUILD_SETTING__SDK_COMPATIBILITY
  '''

  MLIBRARY_PATH__TOOLCHAIN_COMPATIBILITY = int
  '''
  The feature id for the 'Toolchain Compatibility' attribute.

  @ordered 

  @value MBUILD_SETTING__TOOLCHAIN_COMPATIBILITY
  '''

  MLIBRARY_PATH__URI = int
  '''
  The feature id for the 'Uri' attribute.

  @ordered 

  @value MBUILD_SETTING_FEATURE_COUNT + 0
  '''

  MMACRO_DEFINITION = int
  '''
  The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.impl.MMacroDefinitionImpl MMacro Definition}' class.

  @see com.silabs.ss.framework.project.api.core.model.impl.MMacroDefinitionImpl
  @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getMMacroDefinition()

  @value 12
  '''

  MMACRO_DEFINITION_FEATURE_COUNT = int
  '''
  The number of structural features of the 'MMacro Definition' class.

  @ordered 

  @value MBUILD_SETTING_FEATURE_COUNT + 2
  '''

  MMACRO_DEFINITION__BOARD_COMPATIBILITY = int
  '''
  The feature id for the 'Board Compatibility' attribute.

  @ordered 

  @value MBUILD_SETTING__BOARD_COMPATIBILITY
  '''

  MMACRO_DEFINITION__BUILTIN = int
  '''
  The feature id for the 'Builtin' attribute.

  @ordered 

  @value MBUILD_SETTING__BUILTIN
  '''

  MMACRO_DEFINITION__LANGUAGE_COMPATIBILITY = int
  '''
  The feature id for the 'Language Compatibility' attribute.

  @ordered 

  @value MBUILD_SETTING__LANGUAGE_COMPATIBILITY
  '''

  MMACRO_DEFINITION__NAME = int
  '''
  The feature id for the 'Name' attribute.

  @ordered 

  @value MBUILD_SETTING_FEATURE_COUNT + 0
  '''

  MMACRO_DEFINITION__PART_COMPATIBILITY = int
  '''
  The feature id for the 'Part Compatibility' attribute.

  @ordered 

  @value MBUILD_SETTING__PART_COMPATIBILITY
  '''

  MMACRO_DEFINITION__SDK_COMPATIBILITY = int
  '''
  The feature id for the 'Sdk Compatibility' attribute.

  @ordered 

  @value MBUILD_SETTING__SDK_COMPATIBILITY
  '''

  MMACRO_DEFINITION__TOOLCHAIN_COMPATIBILITY = int
  '''
  The feature id for the 'Toolchain Compatibility' attribute.

  @ordered 

  @value MBUILD_SETTING__TOOLCHAIN_COMPATIBILITY
  '''

  MMACRO_DEFINITION__VALUE = int
  '''
  The feature id for the 'Value' attribute.

  @ordered 

  @value MBUILD_SETTING_FEATURE_COUNT + 1
  '''

  MMODULE = int
  '''
  The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.impl.MModuleImpl MModule}' class.

  @see com.silabs.ss.framework.project.api.core.model.impl.MModuleImpl
  @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getMModule()

  @value 22
  '''

  MMODULE_FEATURE_COUNT = int
  '''
  The number of structural features of the 'MModule' class.

  @ordered 

  @value MSELECTABLE_FEATURE_COUNT + 5
  '''

  MMODULE__BOARD_COMPATIBILITY = int
  '''
  The feature id for the 'Board Compatibility' attribute.

  @ordered 

  @value MSELECTABLE__BOARD_COMPATIBILITY
  '''

  MMODULE__BUILTIN = int
  '''
  The feature id for the 'Builtin' attribute.

  @ordered 

  @value MSELECTABLE__BUILTIN
  '''

  MMODULE__CUSTOMIZATIONS_GROUP = int
  '''
  The feature id for the 'Customizations Group' attribute list.

  @ordered 

  @value MSELECTABLE_FEATURE_COUNT + 1
  '''

  MMODULE__EXCLUSIONS = int
  '''
  The feature id for the 'Exclusions' containment reference list.

  @ordered 

  @value MSELECTABLE_FEATURE_COUNT + 2
  '''

  MMODULE__ID = int
  '''
  The feature id for the 'Id' attribute.

  @ordered 

  @value MSELECTABLE_FEATURE_COUNT + 0
  '''

  MMODULE__INCLUSIONS = int
  '''
  The feature id for the 'Inclusions' containment reference list.

  @ordered 

  @value MSELECTABLE_FEATURE_COUNT + 3
  '''

  MMODULE__PART_COMPATIBILITY = int
  '''
  The feature id for the 'Part Compatibility' attribute.

  @ordered 

  @value MSELECTABLE__PART_COMPATIBILITY
  '''

  MMODULE__PDM = int
  '''
  The feature id for the 'Pdm' attribute.

  @ordered 

  @value MSELECTABLE_FEATURE_COUNT + 4
  '''

  MMODULE__SDK_COMPATIBILITY = int
  '''
  The feature id for the 'Sdk Compatibility' attribute.

  @ordered 

  @value MSELECTABLE__SDK_COMPATIBILITY
  '''

  MMODULE__TOOLCHAIN_COMPATIBILITY = int
  '''
  The feature id for the 'Toolchain Compatibility' attribute.

  @ordered 

  @value MSELECTABLE__TOOLCHAIN_COMPATIBILITY
  '''

  MPROJECT = int
  '''
  The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.impl.MProjectImpl MProject}' class.

  @see com.silabs.ss.framework.project.api.core.model.impl.MProjectImpl
  @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getMProject()

  @value 1
  '''

  MPROJECT_FEATURE_COUNT = int
  '''
  The number of structural features of the 'MProject' class.

  @ordered 

  @value MFOLDER_ENTRY_FEATURE_COUNT + 12
  '''

  MPROJECT_REFERENCE = int
  '''
  The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.impl.MProjectReferenceImpl MProject Reference}' class.

  @see com.silabs.ss.framework.project.api.core.model.impl.MProjectReferenceImpl
  @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getMProjectReference()

  @value 29
  '''

  MPROJECT_REFERENCE_FEATURE_COUNT = int
  '''
  The number of structural features of the 'MProject Reference' class.

  @ordered 

  @value MFOLDER_REFERENCE_FEATURE_COUNT + 0
  '''

  MPROJECT_REFERENCE__BUILTIN = int
  '''
  The feature id for the 'Builtin' attribute.

  @ordered 

  @value MFOLDER_REFERENCE__BUILTIN
  '''

  MPROJECT_REFERENCE__EXCLUDED = int
  '''
  The feature id for the 'Excluded' attribute.

  @ordered 

  @value MFOLDER_REFERENCE__EXCLUDED
  '''

  MPROJECT_REFERENCE__FILES = int
  '''
  The feature id for the 'Files' containment reference list.

  @ordered 

  @value MFOLDER_REFERENCE__FILES
  '''

  MPROJECT_REFERENCE__FOLDERS = int
  '''
  The feature id for the 'Folders' containment reference list.

  @ordered 

  @value MFOLDER_REFERENCE__FOLDERS
  '''

  MPROJECT_REFERENCE__PROVIDING_MODULE = int
  '''
  The feature id for the 'Providing Module' reference.

  @ordered 

  @value MFOLDER_REFERENCE__PROVIDING_MODULE
  '''

  MPROJECT_REFERENCE__REF = int
  '''
  The feature id for the 'Ref' reference.

  @ordered 

  @value MFOLDER_REFERENCE__REF
  '''

  MPROJECT_REFERENCE__REMOVE = int
  '''
  The feature id for the 'Remove' attribute.

  @ordered 

  @value MFOLDER_REFERENCE__REMOVE
  '''

  MPROJECT_RESOURCE_TREE = int
  '''
  The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.impl.MProjectResourceTreeImpl MProject Resource Tree}' class.

  @see com.silabs.ss.framework.project.api.core.model.impl.MProjectResourceTreeImpl
  @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getMProjectResourceTree()

  @value 30
  '''

  MPROJECT_RESOURCE_TREE_FEATURE_COUNT = int
  '''
  The number of structural features of the 'MProject Resource Tree' class.

  @ordered 

  @value 1
  '''

  MPROJECT_RESOURCE_TREE__CONFIGURATIONS = int
  '''
  The feature id for the 'Configurations' map.

  @ordered 

  @value 0
  '''

  MPROJECT__BOARD_COMPATIBILITY = int
  '''
  The feature id for the 'Board Compatibility' attribute.

  @ordered 

  @value MFOLDER_ENTRY__BOARD_COMPATIBILITY
  '''

  MPROJECT__BUILTIN = int
  '''
  The feature id for the 'Builtin' attribute.

  @ordered 

  @value MFOLDER_ENTRY__BUILTIN
  '''

  MPROJECT__CONFIGURATIONS = int
  '''
  The feature id for the 'Configurations' containment reference list.

  @ordered 

  @value MFOLDER_ENTRY_FEATURE_COUNT + 10
  '''

  MPROJECT__CONTENT_ROOT = int
  '''
  The feature id for the 'Content Root' attribute.

  @ordered 

  @value MFOLDER_ENTRY_FEATURE_COUNT + 9
  '''

  MPROJECT__CONVERTED_OPTIONS = int
  '''
  The feature id for the 'Converted Options' containment reference list.

  @ordered 

  @value MFOLDER_ENTRY__CONVERTED_OPTIONS
  '''

  MPROJECT__DESCRIPTION = int
  '''
  The feature id for the 'Description' attribute.

  @ordered 

  @value MFOLDER_ENTRY__DESCRIPTION
  '''

  MPROJECT__ENTRY_SETTINGS = int
  '''
  The feature id for the 'Entry Settings' map.

  @ordered 

  @value MFOLDER_ENTRY_FEATURE_COUNT + 3
  '''

  MPROJECT__EXCLUDED_PATHS = int
  '''
  The feature id for the 'Excluded Paths' attribute list.

  @ordered 

  @value MFOLDER_ENTRY_FEATURE_COUNT + 1
  '''

  MPROJECT__FILES = int
  '''
  The feature id for the 'Files' containment reference list.

  @ordered 

  @value MFOLDER_ENTRY__FILES
  '''

  MPROJECT__FOLDERS = int
  '''
  The feature id for the 'Folders' containment reference list.

  @ordered 

  @value MFOLDER_ENTRY__FOLDERS
  '''

  MPROJECT__ID = int
  '''
  The feature id for the 'Id' attribute.

  @ordered 

  @value MFOLDER_ENTRY__ID
  '''

  MPROJECT__INCLUDE_PATHS = int
  '''
  The feature id for the 'Include Paths' containment reference list.

  @ordered 

  @value MFOLDER_ENTRY__INCLUDE_PATHS
  '''

  MPROJECT__LABEL = int
  '''
  The feature id for the 'Label' attribute.

  @ordered 

  @value MFOLDER_ENTRY__LABEL
  '''

  MPROJECT__LIBRARY_FILES = int
  '''
  The feature id for the 'Library Files' containment reference list.

  @ordered 

  @value MFOLDER_ENTRY__LIBRARY_FILES
  '''

  MPROJECT__LIBRARY_PATHS = int
  '''
  The feature id for the 'Library Paths' containment reference list.

  @ordered 

  @value MFOLDER_ENTRY__LIBRARY_PATHS
  '''

  MPROJECT__MACRO_DEFINITIONS = int
  '''
  The feature id for the 'Macro Definitions' containment reference list.

  @ordered 

  @value MFOLDER_ENTRY__MACRO_DEFINITIONS
  '''

  MPROJECT__MODULES = int
  '''
  The feature id for the 'Modules' containment reference list.

  @ordered 

  @value MFOLDER_ENTRY_FEATURE_COUNT + 4
  '''

  MPROJECT__NAME = int
  '''
  The feature id for the 'Name' attribute.

  @ordered 

  @value MFOLDER_ENTRY__NAME
  '''

  MPROJECT__OUTPUT_FILE_BASE = int
  '''
  The feature id for the 'Output File Base' attribute.

  @ordered 

  @value MFOLDER_ENTRY_FEATURE_COUNT + 2
  '''

  MPROJECT__PART_COMPATIBILITY = int
  '''
  The feature id for the 'Part Compatibility' attribute.

  @ordered 

  @value MFOLDER_ENTRY__PART_COMPATIBILITY
  '''

  MPROJECT__POSTBUILD_STEP = int
  '''
  The feature id for the 'Postbuild Step' attribute.

  @ordered 

  @value MFOLDER_ENTRY_FEATURE_COUNT + 6
  '''

  MPROJECT__PREBUILD_STEP = int
  '''
  The feature id for the 'Prebuild Step' attribute.

  @ordered 

  @value MFOLDER_ENTRY_FEATURE_COUNT + 5
  '''

  MPROJECT__PROJECT_DEFINED_MODULES = int
  '''
  The feature id for the 'Project Defined Modules' containment reference list.

  @ordered 

  @value MFOLDER_ENTRY_FEATURE_COUNT + 11
  '''

  MPROJECT__PROPERTIES = int
  '''
  The feature id for the 'Properties' map.

  @ordered 

  @value MFOLDER_ENTRY_FEATURE_COUNT + 7
  '''

  MPROJECT__PROPERTY_SCOPE = int
  '''
  The feature id for the 'Property Scope' attribute.

  @ordered 

  @value MFOLDER_ENTRY_FEATURE_COUNT + 8
  '''

  MPROJECT__SDK_COMPATIBILITY = int
  '''
  The feature id for the 'Sdk Compatibility' attribute.

  @ordered 

  @value MFOLDER_ENTRY__SDK_COMPATIBILITY
  '''

  MPROJECT__SOURCE_FOLDERS = int
  '''
  The feature id for the 'Source Folders' attribute list.

  @ordered 

  @value MFOLDER_ENTRY_FEATURE_COUNT + 0
  '''

  MPROJECT__TOOLCHAIN_COMPATIBILITY = int
  '''
  The feature id for the 'Toolchain Compatibility' attribute.

  @ordered 

  @value MFOLDER_ENTRY__TOOLCHAIN_COMPATIBILITY
  '''

  MPROJECT__TOOL_OPTIONS = int
  '''
  The feature id for the 'Tool Options' containment reference list.

  @ordered 

  @value MFOLDER_ENTRY__TOOL_OPTIONS
  '''

  MREFERENCE = int
  '''
  The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.impl.MReferenceImpl MReference}' class.

  @see com.silabs.ss.framework.project.api.core.model.impl.MReferenceImpl
  @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getMReference()

  @value 26
  '''

  MREFERENCE_FEATURE_COUNT = int
  '''
  The number of structural features of the 'MReference' class.

  @ordered 

  @value 4
  '''

  MREFERENCE__BUILTIN = int
  '''
  The feature id for the 'Builtin' attribute.

  @ordered 

  @value 0
  '''

  MREFERENCE__EXCLUDED = int
  '''
  The feature id for the 'Excluded' attribute.

  @ordered 

  @value 1
  '''

  MREFERENCE__PROVIDING_MODULE = int
  '''
  The feature id for the 'Providing Module' reference.

  @ordered 

  @value 2
  '''

  MREFERENCE__REMOVE = int
  '''
  The feature id for the 'Remove' attribute.

  @ordered 

  @value 3
  '''

  MSELECTABLE = int
  '''
  The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.impl.MSelectableImpl MSelectable}' class.

  @see com.silabs.ss.framework.project.api.core.model.impl.MSelectableImpl
  @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getMSelectable()

  @value 2
  '''

  MSELECTABLE_FEATURE_COUNT = int
  '''
  The number of structural features of the 'MSelectable' class.

  @ordered 

  @value 5
  '''

  MSELECTABLE__BOARD_COMPATIBILITY = int
  '''
  The feature id for the 'Board Compatibility' attribute.

  @ordered 

  @value 0
  '''

  MSELECTABLE__BUILTIN = int
  '''
  The feature id for the 'Builtin' attribute.

  @ordered 

  @value 4
  '''

  MSELECTABLE__PART_COMPATIBILITY = int
  '''
  The feature id for the 'Part Compatibility' attribute.

  @ordered 

  @value 1
  '''

  MSELECTABLE__SDK_COMPATIBILITY = int
  '''
  The feature id for the 'Sdk Compatibility' attribute.

  @ordered 

  @value 3
  '''

  MSELECTABLE__TOOLCHAIN_COMPATIBILITY = int
  '''
  The feature id for the 'Toolchain Compatibility' attribute.

  @ordered 

  @value 2
  '''

  MSETTINGS_SITE = int
  '''
  The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.impl.MSettingsSiteImpl MSettings Site}' class.

  @see com.silabs.ss.framework.project.api.core.model.impl.MSettingsSiteImpl
  @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getMSettingsSite()

  @value 9
  '''

  MSETTINGS_SITE_FEATURE_COUNT = int
  '''
  The number of structural features of the 'MSettings Site' class.

  @ordered 

  @value 6
  '''

  MSETTINGS_SITE__CONVERTED_OPTIONS = int
  '''
  The feature id for the 'Converted Options' containment reference list.

  @ordered 

  @value 0
  '''

  MSETTINGS_SITE__INCLUDE_PATHS = int
  '''
  The feature id for the 'Include Paths' containment reference list.

  @ordered 

  @value 1
  '''

  MSETTINGS_SITE__LIBRARY_FILES = int
  '''
  The feature id for the 'Library Files' containment reference list.

  @ordered 

  @value 3
  '''

  MSETTINGS_SITE__LIBRARY_PATHS = int
  '''
  The feature id for the 'Library Paths' containment reference list.

  @ordered 

  @value 4
  '''

  MSETTINGS_SITE__MACRO_DEFINITIONS = int
  '''
  The feature id for the 'Macro Definitions' containment reference list.

  @ordered 

  @value 2
  '''

  MSETTINGS_SITE__TOOL_OPTIONS = int
  '''
  The feature id for the 'Tool Options' containment reference list.

  @ordered 

  @value 5
  '''

  MSPECIFIC_OPTION = int
  '''
  The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.impl.MSpecificOptionImpl MSpecific Option}' class.

  @see com.silabs.ss.framework.project.api.core.model.impl.MSpecificOptionImpl
  @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getMSpecificOption()

  @value 18
  '''

  MSPECIFIC_OPTION_FEATURE_COUNT = int
  '''
  The number of structural features of the 'MSpecific Option' class.

  @ordered 

  @value MCONVERTED_OPTION_FEATURE_COUNT + 3
  '''

  MSPECIFIC_OPTION__GENERIC_MAPPINGS = int
  '''
  The feature id for the 'Generic Mappings' reference list.

  @ordered 

  @value MCONVERTED_OPTION_FEATURE_COUNT + 0
  '''

  MSPECIFIC_OPTION__IMPORTED_OPTION = int
  '''
  The feature id for the 'Imported Option' reference.

  @ordered 

  @value MCONVERTED_OPTION_FEATURE_COUNT + 2
  '''

  MSPECIFIC_OPTION__MAPPING_STATUS = int
  '''
  The feature id for the 'Mapping Status' attribute.

  @ordered 

  @value MCONVERTED_OPTION_FEATURE_COUNT + 1
  '''

  MSPECIFIC_OPTION__OPTION_ID = int
  '''
  The feature id for the 'Option Id' attribute.

  @ordered 

  @value MCONVERTED_OPTION__OPTION_ID
  '''

  MSPECIFIC_OPTION__TOOL_ID = int
  '''
  The feature id for the 'Tool Id' attribute.

  @ordered 

  @value MCONVERTED_OPTION__TOOL_ID
  '''

  MSPECIFIC_OPTION__VALUE = int
  '''
  The feature id for the 'Value' attribute.

  @ordered 

  @value MCONVERTED_OPTION__VALUE
  '''

  MSPECIFIC_OPTION__VALUE_STATUS = int
  '''
  The feature id for the 'Value Status' attribute.

  @ordered 

  @value MCONVERTED_OPTION__VALUE_STATUS
  '''

  MTOOL_LIST_OPTION = int
  '''
  The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.impl.MToolListOptionImpl MTool List Option}' class.

  @see com.silabs.ss.framework.project.api.core.model.impl.MToolListOptionImpl
  @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getMToolListOption()

  @value 32
  '''

  MTOOL_LIST_OPTION_FEATURE_COUNT = int
  '''
  The number of structural features of the 'MTool List Option' class.

  @ordered 

  @value MBUILD_SETTING_FEATURE_COUNT + 1
  '''

  MTOOL_LIST_OPTION__BOARD_COMPATIBILITY = int
  '''
  The feature id for the 'Board Compatibility' attribute.

  @ordered 

  @value MBUILD_SETTING__BOARD_COMPATIBILITY
  '''

  MTOOL_LIST_OPTION__BUILTIN = int
  '''
  The feature id for the 'Builtin' attribute.

  @ordered 

  @value MBUILD_SETTING__BUILTIN
  '''

  MTOOL_LIST_OPTION__LANGUAGE_COMPATIBILITY = int
  '''
  The feature id for the 'Language Compatibility' attribute.

  @ordered 

  @value MBUILD_SETTING__LANGUAGE_COMPATIBILITY
  '''

  MTOOL_LIST_OPTION__PART_COMPATIBILITY = int
  '''
  The feature id for the 'Part Compatibility' attribute.

  @ordered 

  @value MBUILD_SETTING__PART_COMPATIBILITY
  '''

  MTOOL_LIST_OPTION__SDK_COMPATIBILITY = int
  '''
  The feature id for the 'Sdk Compatibility' attribute.

  @ordered 

  @value MBUILD_SETTING__SDK_COMPATIBILITY
  '''

  MTOOL_LIST_OPTION__TOOLCHAIN_COMPATIBILITY = int
  '''
  The feature id for the 'Toolchain Compatibility' attribute.

  @ordered 

  @value MBUILD_SETTING__TOOLCHAIN_COMPATIBILITY
  '''

  MTOOL_LIST_OPTION__VALUE = int
  '''
  The feature id for the 'Value' attribute.

  @ordered 

  @value MBUILD_SETTING_FEATURE_COUNT + 0
  '''

  MTOOL_OPTION = int
  '''
  The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.impl.MToolOptionImpl MTool Option}' class.

  @see com.silabs.ss.framework.project.api.core.model.impl.MToolOptionImpl
  @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getMToolOption()

  @value 16
  '''

  MTOOL_OPTION_FEATURE_COUNT = int
  '''
  The number of structural features of the 'MTool Option' class.

  @ordered 

  @value MBUILD_SETTING_FEATURE_COUNT + 4
  '''

  MTOOL_OPTION__BOARD_COMPATIBILITY = int
  '''
  The feature id for the 'Board Compatibility' attribute.

  @ordered 

  @value MBUILD_SETTING__BOARD_COMPATIBILITY
  '''

  MTOOL_OPTION__BUILTIN = int
  '''
  The feature id for the 'Builtin' attribute.

  @ordered 

  @value MBUILD_SETTING__BUILTIN
  '''

  MTOOL_OPTION__LANGUAGE_COMPATIBILITY = int
  '''
  The feature id for the 'Language Compatibility' attribute.

  @ordered 

  @value MBUILD_SETTING__LANGUAGE_COMPATIBILITY
  '''

  MTOOL_OPTION__OPTION_ID = int
  '''
  The feature id for the 'Option Id' attribute.

  @ordered 

  @value MBUILD_SETTING_FEATURE_COUNT + 1
  '''

  MTOOL_OPTION__PART_COMPATIBILITY = int
  '''
  The feature id for the 'Part Compatibility' attribute.

  @ordered 

  @value MBUILD_SETTING__PART_COMPATIBILITY
  '''

  MTOOL_OPTION__SDK_COMPATIBILITY = int
  '''
  The feature id for the 'Sdk Compatibility' attribute.

  @ordered 

  @value MBUILD_SETTING__SDK_COMPATIBILITY
  '''

  MTOOL_OPTION__TOOLCHAIN_COMPATIBILITY = int
  '''
  The feature id for the 'Toolchain Compatibility' attribute.

  @ordered 

  @value MBUILD_SETTING__TOOLCHAIN_COMPATIBILITY
  '''

  MTOOL_OPTION__TOOL_ID = int
  '''
  The feature id for the 'Tool Id' attribute.

  @ordered 

  @value MBUILD_SETTING_FEATURE_COUNT + 0
  '''

  MTOOL_OPTION__TOOL_LIST_OPTIONS = int
  '''
  The feature id for the 'Tool List Options' containment reference list.

  @ordered 

  @value MBUILD_SETTING_FEATURE_COUNT + 3
  '''

  MTOOL_OPTION__VALUE = int
  '''
  The feature id for the 'Value' attribute.

  @ordered 

  @value MBUILD_SETTING_FEATURE_COUNT + 2
  '''

  class Literals(object):
    '''
    Defines literals for the meta objects that represent

    	each class,

    	each feature of each class,

    	each enum,

    	and each data type
    '''
    DOCUMENT_ROOT = org_eclipse_emf_ecore_EClass
    '''
    The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.impl.DocumentRootImpl Document Root}' class.

    @see com.silabs.ss.framework.project.api.core.model.impl.DocumentRootImpl
    @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getDocumentRoot()

    @value 0
    '''

    DOCUMENT_ROOT__MIXED = org_eclipse_emf_ecore_EAttribute
    '''
    The feature id for the 'Mixed' attribute list.

    @ordered 

    @value 0
    '''

    DOCUMENT_ROOT__PROJECT = org_eclipse_emf_ecore_EReference
    '''
    The feature id for the 'Project' containment reference.

    @ordered 

    @value 3
    '''

    DOCUMENT_ROOT__XMLNS_PREFIX_MAP = org_eclipse_emf_ecore_EReference
    '''
    The feature id for the 'XMLNS Prefix Map' map.

    @ordered 

    @value 1
    '''

    DOCUMENT_ROOT__XSI_SCHEMA_LOCATION = org_eclipse_emf_ecore_EReference
    '''
    The feature id for the 'XSI Schema Location' map.

    @ordered 

    @value 2
    '''

    ELANGUAGE = org_eclipse_emf_ecore_EEnum
    '''
    The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.ELanguage ELanguage}' enum.

    @see com.silabs.ss.framework.project.api.core.model.ELanguage
    @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getELanguage()

    @value 33
    '''

    EMAPPING_STATUS = org_eclipse_emf_ecore_EEnum
    '''
    The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.EMappingStatus EMapping Status}' enum.

    @see com.silabs.ss.framework.project.api.core.model.EMappingStatus
    @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getEMappingStatus()

    @value 35
    '''

    EVALUE_STATUS = org_eclipse_emf_ecore_EEnum
    '''
    The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.EValueStatus EValue Status}' enum.

    @see com.silabs.ss.framework.project.api.core.model.EValueStatus
    @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getEValueStatus()

    @value 34
    '''

    MBUILD_SETTING = org_eclipse_emf_ecore_EClass
    '''
    The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.impl.MBuildSettingImpl MBuild Setting}' class.

    @see com.silabs.ss.framework.project.api.core.model.impl.MBuildSettingImpl
    @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getMBuildSetting()

    @value 10
    '''

    MBUILD_SETTING__LANGUAGE_COMPATIBILITY = org_eclipse_emf_ecore_EAttribute
    '''
    The feature id for the 'Language Compatibility' attribute.

    @ordered 

    @value MSELECTABLE_FEATURE_COUNT + 0
    '''

    MCONFIGURATION = org_eclipse_emf_ecore_EClass
    '''
    The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.impl.MConfigurationImpl MConfiguration}' class.

    @see com.silabs.ss.framework.project.api.core.model.impl.MConfigurationImpl
    @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getMConfiguration()

    @value 19
    '''

    MCONFIGURATION__STOCK_CONFIG_COMPATIBILITY = org_eclipse_emf_ecore_EAttribute
    '''
    The feature id for the 'Stock Config Compatibility' attribute.

    @ordered 

    @value StudioModelPackage.MDESCRIPTOR_FEATURE_COUNT + 18
    '''

    MCONFIG_ID_TO_MPROJECT_REFERENCE_MAP = org_eclipse_emf_ecore_EClass
    '''
    The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.impl.MConfigIdToMProjectReferenceMapImpl MConfig Id To MProject Reference Map}' class.

    @see com.silabs.ss.framework.project.api.core.model.impl.MConfigIdToMProjectReferenceMapImpl
    @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getMConfigIdToMProjectReferenceMap()

    @value 31
    '''

    MCONFIG_ID_TO_MPROJECT_REFERENCE_MAP__KEY = org_eclipse_emf_ecore_EAttribute
    '''
    The feature id for the 'Key' attribute.

    @ordered 

    @value 0
    '''

    MCONFIG_ID_TO_MPROJECT_REFERENCE_MAP__VALUE = org_eclipse_emf_ecore_EReference
    '''
    The feature id for the 'Value' containment reference.

    @ordered 

    @value 1
    '''

    MCONFIG_SETTINGS = org_eclipse_emf_ecore_EClass
    '''
    The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.impl.MConfigSettingsImpl MConfig Settings}' class.

    @see com.silabs.ss.framework.project.api.core.model.impl.MConfigSettingsImpl
    @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getMConfigSettings()

    @value 20
    '''

    MCONFIG_SETTINGS__ENTRY_SETTINGS = org_eclipse_emf_ecore_EReference
    '''
    The feature id for the 'Entry Settings' map.

    @ordered 

    @value 3
    '''

    MCONFIG_SETTINGS__EXCLUDED_PATHS = org_eclipse_emf_ecore_EAttribute
    '''
    The feature id for the 'Excluded Paths' attribute list.

    @ordered 

    @value 1
    '''

    MCONFIG_SETTINGS__MODULES = org_eclipse_emf_ecore_EReference
    '''
    The feature id for the 'Modules' containment reference list.

    @ordered 

    @value 4
    '''

    MCONFIG_SETTINGS__OUTPUT_FILE_BASE = org_eclipse_emf_ecore_EAttribute
    '''
    The feature id for the 'Output File Base' attribute.

    @ordered 

    @value 2
    '''

    MCONFIG_SETTINGS__POSTBUILD_STEP = org_eclipse_emf_ecore_EAttribute
    '''
    The feature id for the 'Postbuild Step' attribute.

    @ordered 

    @value 6
    '''

    MCONFIG_SETTINGS__PREBUILD_STEP = org_eclipse_emf_ecore_EAttribute
    '''
    The feature id for the 'Prebuild Step' attribute.

    @ordered 

    @value 5
    '''

    MCONFIG_SETTINGS__SOURCE_FOLDERS = org_eclipse_emf_ecore_EAttribute
    '''
    The feature id for the 'Source Folders' attribute list.

    @ordered 

    @value 0
    '''

    MCONTENT = org_eclipse_emf_ecore_EClass
    '''
    The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.impl.MContentImpl MContent}' class.

    @see com.silabs.ss.framework.project.api.core.model.impl.MContentImpl
    @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getMContent()

    @value 6
    '''

    MCONTENT__LINKED = org_eclipse_emf_ecore_EAttribute
    '''
    The feature id for the 'Linked' attribute.

    @ordered 

    @value MENTRY_FEATURE_COUNT + 0
    '''

    MCONTENT__URI = org_eclipse_emf_ecore_EAttribute
    '''
    The feature id for the 'Uri' attribute.

    @ordered 

    @value MENTRY_FEATURE_COUNT + 1
    '''

    MCONTENT__VIRTUAL = org_eclipse_emf_ecore_EAttribute
    '''
    The feature id for the 'Virtual' attribute.

    @ordered 

    @value MENTRY_FEATURE_COUNT + 2
    '''

    MCONVERTED_OPTION = org_eclipse_emf_ecore_EClass
    '''
    The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.impl.MConvertedOptionImpl MConverted Option}' class.

    @see com.silabs.ss.framework.project.api.core.model.impl.MConvertedOptionImpl
    @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getMConvertedOption()

    @value 15
    '''

    MCONVERTED_OPTION__OPTION_ID = org_eclipse_emf_ecore_EAttribute
    '''
    The feature id for the 'Option Id' attribute.

    @ordered 

    @value 1
    '''

    MCONVERTED_OPTION__TOOL_ID = org_eclipse_emf_ecore_EAttribute
    '''
    The feature id for the 'Tool Id' attribute.

    @ordered 

    @value 0
    '''

    MCONVERTED_OPTION__VALUE = org_eclipse_emf_ecore_EAttribute
    '''
    The feature id for the 'Value' attribute.

    @ordered 

    @value 2
    '''

    MCONVERTED_OPTION__VALUE_STATUS = org_eclipse_emf_ecore_EAttribute
    '''
    The feature id for the 'Value Status' attribute.

    @ordered 

    @value 3
    '''

    MCUSTOMIZATION = org_eclipse_emf_ecore_EClass
    '''
    The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.impl.MCustomizationImpl MCustomization}' class.

    @see com.silabs.ss.framework.project.api.core.model.impl.MCustomizationImpl
    @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getMCustomization()

    @value 23
    '''

    MCUSTOMIZATION__PATTERN = org_eclipse_emf_ecore_EAttribute
    '''
    The feature id for the 'Pattern' attribute.

    @ordered 

    @value MSELECTABLE_FEATURE_COUNT + 0
    '''

    MENTRY = org_eclipse_emf_ecore_EClass
    '''
    The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.impl.MEntryImpl MEntry}' class.

    @see com.silabs.ss.framework.project.api.core.model.impl.MEntryImpl
    @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getMEntry()

    @value 3
    '''

    MENTRY_TO_MSETTINGS_SITE_MAP = org_eclipse_emf_ecore_EClass
    '''
    The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.impl.MEntryToMSettingsSiteMapImpl MEntry To MSettings Site Map}' class.

    @see com.silabs.ss.framework.project.api.core.model.impl.MEntryToMSettingsSiteMapImpl
    @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getMEntryToMSettingsSiteMap()

    @value 21
    '''

    MENTRY_TO_MSETTINGS_SITE_MAP__KEY = org_eclipse_emf_ecore_EReference
    '''
    The feature id for the 'Key' reference.

    @ordered 

    @value 0
    '''

    MENTRY_TO_MSETTINGS_SITE_MAP__VALUE = org_eclipse_emf_ecore_EReference
    '''
    The feature id for the 'Value' containment reference.

    @ordered 

    @value 1
    '''

    MEXCLUSION = org_eclipse_emf_ecore_EClass
    '''
    The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.impl.MExclusionImpl MExclusion}' class.

    @see com.silabs.ss.framework.project.api.core.model.impl.MExclusionImpl
    @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getMExclusion()

    @value 24
    '''

    MFILE_CONTENT = org_eclipse_emf_ecore_EClass
    '''
    The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.impl.MFileContentImpl MFile Content}' class.

    @see com.silabs.ss.framework.project.api.core.model.impl.MFileContentImpl
    @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getMFileContent()

    @value 7
    '''

    MFILE_ENTRY = org_eclipse_emf_ecore_EClass
    '''
    The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.impl.MFileEntryImpl MFile Entry}' class.

    @see com.silabs.ss.framework.project.api.core.model.impl.MFileEntryImpl
    @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getMFileEntry()

    @value 4
    '''

    MFILE_REFERENCE = org_eclipse_emf_ecore_EClass
    '''
    The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.impl.MFileReferenceImpl MFile Reference}' class.

    @see com.silabs.ss.framework.project.api.core.model.impl.MFileReferenceImpl
    @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getMFileReference()

    @value 28
    '''

    MFILE_REFERENCE__REF = org_eclipse_emf_ecore_EReference
    '''
    The feature id for the 'Ref' reference.

    @ordered 

    @value MREFERENCE_FEATURE_COUNT + 0
    '''

    MFOLDER_CONTENT = org_eclipse_emf_ecore_EClass
    '''
    The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.impl.MFolderContentImpl MFolder Content}' class.

    @see com.silabs.ss.framework.project.api.core.model.impl.MFolderContentImpl
    @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getMFolderContent()

    @value 8
    '''

    MFOLDER_CONTENT__INCLUDE_ALL_FILES = org_eclipse_emf_ecore_EAttribute
    '''
    The feature id for the 'Include All Files' attribute.

    @ordered 

    @value MCONTENT_FEATURE_COUNT + 2
    '''

    MFOLDER_CONTENT__INCLUDE_ALL_FOLDERS = org_eclipse_emf_ecore_EAttribute
    '''
    The feature id for the 'Include All Folders' attribute.

    @ordered 

    @value MCONTENT_FEATURE_COUNT + 3
    '''

    MFOLDER_ENTRY = org_eclipse_emf_ecore_EClass
    '''
    The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.impl.MFolderEntryImpl MFolder Entry}' class.

    @see com.silabs.ss.framework.project.api.core.model.impl.MFolderEntryImpl
    @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getMFolderEntry()

    @value 5
    '''

    MFOLDER_ENTRY__FILES = org_eclipse_emf_ecore_EReference
    '''
    The feature id for the 'Files' containment reference list.

    @ordered 

    @value MENTRY_FEATURE_COUNT + 1
    '''

    MFOLDER_ENTRY__FOLDERS = org_eclipse_emf_ecore_EReference
    '''
    The feature id for the 'Folders' containment reference list.

    @ordered 

    @value MENTRY_FEATURE_COUNT + 0
    '''

    MFOLDER_REFERENCE = org_eclipse_emf_ecore_EClass
    '''
    The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.impl.MFolderReferenceImpl MFolder Reference}' class.

    @see com.silabs.ss.framework.project.api.core.model.impl.MFolderReferenceImpl
    @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getMFolderReference()

    @value 27
    '''

    MFOLDER_REFERENCE__FILES = org_eclipse_emf_ecore_EReference
    '''
    The feature id for the 'Files' containment reference list.

    @ordered 

    @value MREFERENCE_FEATURE_COUNT + 1
    '''

    MFOLDER_REFERENCE__FOLDERS = org_eclipse_emf_ecore_EReference
    '''
    The feature id for the 'Folders' containment reference list.

    @ordered 

    @value MREFERENCE_FEATURE_COUNT + 2
    '''

    MFOLDER_REFERENCE__REF = org_eclipse_emf_ecore_EReference
    '''
    The feature id for the 'Ref' reference.

    @ordered 

    @value MREFERENCE_FEATURE_COUNT + 0
    '''

    MGENERIC_OPTION = org_eclipse_emf_ecore_EClass
    '''
    The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.impl.MGenericOptionImpl MGeneric Option}' class.

    @see com.silabs.ss.framework.project.api.core.model.impl.MGenericOptionImpl
    @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getMGenericOption()

    @value 17
    '''

    MGENERIC_OPTION__SPECIFIC_MAPPINGS = org_eclipse_emf_ecore_EReference
    '''
    The feature id for the 'Specific Mappings' reference list.

    @ordered 

    @value MCONVERTED_OPTION_FEATURE_COUNT + 0
    '''

    MINCLUDE_PATH = org_eclipse_emf_ecore_EClass
    '''
    The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.impl.MIncludePathImpl MInclude Path}' class.

    @see com.silabs.ss.framework.project.api.core.model.impl.MIncludePathImpl
    @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getMIncludePath()

    @value 11
    '''

    MINCLUDE_PATH__URI = org_eclipse_emf_ecore_EAttribute
    '''
    The feature id for the 'Uri' attribute.

    @ordered 

    @value MBUILD_SETTING_FEATURE_COUNT + 0
    '''

    MINCLUDE_PATH__USER = org_eclipse_emf_ecore_EAttribute
    '''
    The feature id for the 'User' attribute.

    @ordered 

    @value MBUILD_SETTING_FEATURE_COUNT + 1
    '''

    MINCLUSION = org_eclipse_emf_ecore_EClass
    '''
    The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.impl.MInclusionImpl MInclusion}' class.

    @see com.silabs.ss.framework.project.api.core.model.impl.MInclusionImpl
    @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getMInclusion()

    @value 25
    '''

    MINCLUSION__REPLACEMENT = org_eclipse_emf_ecore_EAttribute
    '''
    The feature id for the 'Replacement' attribute.

    @ordered 

    @value MCUSTOMIZATION_FEATURE_COUNT + 0
    '''

    MLIBRARY_FILE = org_eclipse_emf_ecore_EClass
    '''
    The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.impl.MLibraryFileImpl MLibrary File}' class.

    @see com.silabs.ss.framework.project.api.core.model.impl.MLibraryFileImpl
    @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getMLibraryFile()

    @value 14
    '''

    MLIBRARY_FILE__NAME = org_eclipse_emf_ecore_EAttribute
    '''
    The feature id for the 'Name' attribute.

    @ordered 

    @value MBUILD_SETTING_FEATURE_COUNT + 1
    '''

    MLIBRARY_FILE__URI = org_eclipse_emf_ecore_EAttribute
    '''
    The feature id for the 'Uri' attribute.

    @ordered 

    @value MBUILD_SETTING_FEATURE_COUNT + 0
    '''

    MLIBRARY_PATH = org_eclipse_emf_ecore_EClass
    '''
    The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.impl.MLibraryPathImpl MLibrary Path}' class.

    @see com.silabs.ss.framework.project.api.core.model.impl.MLibraryPathImpl
    @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getMLibraryPath()

    @value 13
    '''

    MLIBRARY_PATH__URI = org_eclipse_emf_ecore_EAttribute
    '''
    The feature id for the 'Uri' attribute.

    @ordered 

    @value MBUILD_SETTING_FEATURE_COUNT + 0
    '''

    MMACRO_DEFINITION = org_eclipse_emf_ecore_EClass
    '''
    The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.impl.MMacroDefinitionImpl MMacro Definition}' class.

    @see com.silabs.ss.framework.project.api.core.model.impl.MMacroDefinitionImpl
    @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getMMacroDefinition()

    @value 12
    '''

    MMACRO_DEFINITION__NAME = org_eclipse_emf_ecore_EAttribute
    '''
    The feature id for the 'Name' attribute.

    @ordered 

    @value MBUILD_SETTING_FEATURE_COUNT + 0
    '''

    MMACRO_DEFINITION__VALUE = org_eclipse_emf_ecore_EAttribute
    '''
    The feature id for the 'Value' attribute.

    @ordered 

    @value MBUILD_SETTING_FEATURE_COUNT + 1
    '''

    MMODULE = org_eclipse_emf_ecore_EClass
    '''
    The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.impl.MModuleImpl MModule}' class.

    @see com.silabs.ss.framework.project.api.core.model.impl.MModuleImpl
    @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getMModule()

    @value 22
    '''

    MMODULE__CUSTOMIZATIONS_GROUP = org_eclipse_emf_ecore_EAttribute
    '''
    The feature id for the 'Customizations Group' attribute list.

    @ordered 

    @value MSELECTABLE_FEATURE_COUNT + 1
    '''

    MMODULE__EXCLUSIONS = org_eclipse_emf_ecore_EReference
    '''
    The feature id for the 'Exclusions' containment reference list.

    @ordered 

    @value MSELECTABLE_FEATURE_COUNT + 2
    '''

    MMODULE__ID = org_eclipse_emf_ecore_EAttribute
    '''
    The feature id for the 'Id' attribute.

    @ordered 

    @value MSELECTABLE_FEATURE_COUNT + 0
    '''

    MMODULE__INCLUSIONS = org_eclipse_emf_ecore_EReference
    '''
    The feature id for the 'Inclusions' containment reference list.

    @ordered 

    @value MSELECTABLE_FEATURE_COUNT + 3
    '''

    MMODULE__PDM = org_eclipse_emf_ecore_EAttribute
    '''
    The feature id for the 'Pdm' attribute.

    @ordered 

    @value MSELECTABLE_FEATURE_COUNT + 4
    '''

    MPROJECT = org_eclipse_emf_ecore_EClass
    '''
    The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.impl.MProjectImpl MProject}' class.

    @see com.silabs.ss.framework.project.api.core.model.impl.MProjectImpl
    @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getMProject()

    @value 1
    '''

    MPROJECT_REFERENCE = org_eclipse_emf_ecore_EClass
    '''
    The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.impl.MProjectReferenceImpl MProject Reference}' class.

    @see com.silabs.ss.framework.project.api.core.model.impl.MProjectReferenceImpl
    @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getMProjectReference()

    @value 29
    '''

    MPROJECT_RESOURCE_TREE = org_eclipse_emf_ecore_EClass
    '''
    The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.impl.MProjectResourceTreeImpl MProject Resource Tree}' class.

    @see com.silabs.ss.framework.project.api.core.model.impl.MProjectResourceTreeImpl
    @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getMProjectResourceTree()

    @value 30
    '''

    MPROJECT_RESOURCE_TREE__CONFIGURATIONS = org_eclipse_emf_ecore_EReference
    '''
    The feature id for the 'Configurations' map.

    @ordered 

    @value 0
    '''

    MPROJECT__CONFIGURATIONS = org_eclipse_emf_ecore_EReference
    '''
    The feature id for the 'Configurations' containment reference list.

    @ordered 

    @value MFOLDER_ENTRY_FEATURE_COUNT + 10
    '''

    MPROJECT__CONTENT_ROOT = org_eclipse_emf_ecore_EAttribute
    '''
    The feature id for the 'Content Root' attribute.

    @ordered 

    @value MFOLDER_ENTRY_FEATURE_COUNT + 9
    '''

    MPROJECT__PROJECT_DEFINED_MODULES = org_eclipse_emf_ecore_EReference
    '''
    The feature id for the 'Project Defined Modules' containment reference list.

    @ordered 

    @value MFOLDER_ENTRY_FEATURE_COUNT + 11
    '''

    MREFERENCE = org_eclipse_emf_ecore_EClass
    '''
    The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.impl.MReferenceImpl MReference}' class.

    @see com.silabs.ss.framework.project.api.core.model.impl.MReferenceImpl
    @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getMReference()

    @value 26
    '''

    MREFERENCE__BUILTIN = org_eclipse_emf_ecore_EAttribute
    '''
    The feature id for the 'Builtin' attribute.

    @ordered 

    @value 0
    '''

    MREFERENCE__EXCLUDED = org_eclipse_emf_ecore_EAttribute
    '''
    The feature id for the 'Excluded' attribute.

    @ordered 

    @value 1
    '''

    MREFERENCE__PROVIDING_MODULE = org_eclipse_emf_ecore_EReference
    '''
    The feature id for the 'Providing Module' reference.

    @ordered 

    @value 2
    '''

    MREFERENCE__REMOVE = org_eclipse_emf_ecore_EAttribute
    '''
    The feature id for the 'Remove' attribute.

    @ordered 

    @value 3
    '''

    MSELECTABLE = org_eclipse_emf_ecore_EClass
    '''
    The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.impl.MSelectableImpl MSelectable}' class.

    @see com.silabs.ss.framework.project.api.core.model.impl.MSelectableImpl
    @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getMSelectable()

    @value 2
    '''

    MSELECTABLE__BOARD_COMPATIBILITY = org_eclipse_emf_ecore_EAttribute
    '''
    The feature id for the 'Board Compatibility' attribute.

    @ordered 

    @value 0
    '''

    MSELECTABLE__BUILTIN = org_eclipse_emf_ecore_EAttribute
    '''
    The feature id for the 'Builtin' attribute.

    @ordered 

    @value 4
    '''

    MSELECTABLE__PART_COMPATIBILITY = org_eclipse_emf_ecore_EAttribute
    '''
    The feature id for the 'Part Compatibility' attribute.

    @ordered 

    @value 1
    '''

    MSELECTABLE__SDK_COMPATIBILITY = org_eclipse_emf_ecore_EAttribute
    '''
    The feature id for the 'Sdk Compatibility' attribute.

    @ordered 

    @value 3
    '''

    MSELECTABLE__TOOLCHAIN_COMPATIBILITY = org_eclipse_emf_ecore_EAttribute
    '''
    The feature id for the 'Toolchain Compatibility' attribute.

    @ordered 

    @value 2
    '''

    MSETTINGS_SITE = org_eclipse_emf_ecore_EClass
    '''
    The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.impl.MSettingsSiteImpl MSettings Site}' class.

    @see com.silabs.ss.framework.project.api.core.model.impl.MSettingsSiteImpl
    @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getMSettingsSite()

    @value 9
    '''

    MSETTINGS_SITE__CONVERTED_OPTIONS = org_eclipse_emf_ecore_EReference
    '''
    The feature id for the 'Converted Options' containment reference list.

    @ordered 

    @value 0
    '''

    MSETTINGS_SITE__INCLUDE_PATHS = org_eclipse_emf_ecore_EReference
    '''
    The feature id for the 'Include Paths' containment reference list.

    @ordered 

    @value 1
    '''

    MSETTINGS_SITE__LIBRARY_FILES = org_eclipse_emf_ecore_EReference
    '''
    The feature id for the 'Library Files' containment reference list.

    @ordered 

    @value 3
    '''

    MSETTINGS_SITE__LIBRARY_PATHS = org_eclipse_emf_ecore_EReference
    '''
    The feature id for the 'Library Paths' containment reference list.

    @ordered 

    @value 4
    '''

    MSETTINGS_SITE__MACRO_DEFINITIONS = org_eclipse_emf_ecore_EReference
    '''
    The feature id for the 'Macro Definitions' containment reference list.

    @ordered 

    @value 2
    '''

    MSETTINGS_SITE__TOOL_OPTIONS = org_eclipse_emf_ecore_EReference
    '''
    The feature id for the 'Tool Options' containment reference list.

    @ordered 

    @value 5
    '''

    MSPECIFIC_OPTION = org_eclipse_emf_ecore_EClass
    '''
    The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.impl.MSpecificOptionImpl MSpecific Option}' class.

    @see com.silabs.ss.framework.project.api.core.model.impl.MSpecificOptionImpl
    @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getMSpecificOption()

    @value 18
    '''

    MSPECIFIC_OPTION__GENERIC_MAPPINGS = org_eclipse_emf_ecore_EReference
    '''
    The feature id for the 'Generic Mappings' reference list.

    @ordered 

    @value MCONVERTED_OPTION_FEATURE_COUNT + 0
    '''

    MSPECIFIC_OPTION__IMPORTED_OPTION = org_eclipse_emf_ecore_EReference
    '''
    The feature id for the 'Imported Option' reference.

    @ordered 

    @value MCONVERTED_OPTION_FEATURE_COUNT + 2
    '''

    MSPECIFIC_OPTION__MAPPING_STATUS = org_eclipse_emf_ecore_EAttribute
    '''
    The feature id for the 'Mapping Status' attribute.

    @ordered 

    @value MCONVERTED_OPTION_FEATURE_COUNT + 1
    '''

    MTOOL_LIST_OPTION = org_eclipse_emf_ecore_EClass
    '''
    The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.impl.MToolListOptionImpl MTool List Option}' class.

    @see com.silabs.ss.framework.project.api.core.model.impl.MToolListOptionImpl
    @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getMToolListOption()

    @value 32
    '''

    MTOOL_LIST_OPTION__VALUE = org_eclipse_emf_ecore_EAttribute
    '''
    The feature id for the 'Value' attribute.

    @ordered 

    @value MBUILD_SETTING_FEATURE_COUNT + 0
    '''

    MTOOL_OPTION = org_eclipse_emf_ecore_EClass
    '''
    The meta object id for the '{@link com.silabs.ss.framework.project.api.core.model.impl.MToolOptionImpl MTool Option}' class.

    @see com.silabs.ss.framework.project.api.core.model.impl.MToolOptionImpl
    @see com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl#getMToolOption()

    @value 16
    '''

    MTOOL_OPTION__OPTION_ID = org_eclipse_emf_ecore_EAttribute
    '''
    The feature id for the 'Option Id' attribute.

    @ordered 

    @value MBUILD_SETTING_FEATURE_COUNT + 1
    '''

    MTOOL_OPTION__TOOL_ID = org_eclipse_emf_ecore_EAttribute
    '''
    The feature id for the 'Tool Id' attribute.

    @ordered 

    @value MBUILD_SETTING_FEATURE_COUNT + 0
    '''

    MTOOL_OPTION__TOOL_LIST_OPTIONS = org_eclipse_emf_ecore_EReference
    '''
    The feature id for the 'Tool List Options' containment reference list.

    @ordered 

    @value MBUILD_SETTING_FEATURE_COUNT + 3
    '''

    MTOOL_OPTION__VALUE = org_eclipse_emf_ecore_EAttribute
    '''
    The feature id for the 'Value' attribute.

    @ordered 

    @value MBUILD_SETTING_FEATURE_COUNT + 2
    '''

  eINSTANCE = com_silabs_ss_framework_project_api_core_model_ProjectModelPackage
  '''
  The singleton instance of the package.

  @value com.silabs.ss.framework.project.api.core.model.impl.ProjectModelPackageImpl.init()
  '''

  eNAME = str
  '''
  The package name.

  @value "model"
  '''

  eNS_PREFIX = str
  '''
  The package namespace name.

  @value "project"
  '''

  eNS_URI = str
  '''
  The package namespace URI.

  @value "http://www.silabs.com/ss/Project.ecore"
  '''

  def getProjectModelFactory(self):
    '''
    Returns the factory that creates the instances of the model.

    @return the factory that creates the instances of the model.
    '''
    return com_silabs_ss_framework_project_api_core_model_ProjectModelFactory()


  def getDocumentRoot_Mixed(self):
    '''
    Returns the meta object for the attribute list '{@link com.silabs.ss.framework.project.api.core.model.DocumentRoot#getMixed Mixed}'.

    @return the meta object for the attribute list 'Mixed'.
    @see com.silabs.ss.framework.project.api.core.model.DocumentRoot#getMixed()
    @see #getDocumentRoot()
    '''
    return org_eclipse_emf_ecore_EAttribute()


  def getMBuildSetting_LanguageCompatibility(self):
    '''
    Returns the meta object for the attribute '{@link com.silabs.ss.framework.project.api.core.model.MBuildSetting#getLanguageCompatibility Language Compatibility}'.

    @return the meta object for the attribute 'Language Compatibility'.
    @see com.silabs.ss.framework.project.api.core.model.MBuildSetting#getLanguageCompatibility()
    @see #getMBuildSetting()
    '''
    return org_eclipse_emf_ecore_EAttribute()


  def getMConfigIdToMProjectReferenceMap_Key(self):
    '''
    Returns the meta object for the attribute '{@link java.util.Map.Entry Key}'.

    @return the meta object for the attribute 'Key'.
    @see java.util.Map.Entry
    @see #getMConfigIdToMProjectReferenceMap()
    '''
    return org_eclipse_emf_ecore_EAttribute()


  def getMConfigSettings_ExcludedPaths(self):
    '''
    Returns the meta object for the attribute list '{@link com.silabs.ss.framework.project.api.core.model.MConfigSettings#getExcludedPaths Excluded Paths}'.

    @return the meta object for the attribute list 'Excluded Paths'.
    @see com.silabs.ss.framework.project.api.core.model.MConfigSettings#getExcludedPaths()
    @see #getMConfigSettings()
    '''
    return org_eclipse_emf_ecore_EAttribute()


  def getMConfigSettings_OutputFileBase(self):
    '''
    Returns the meta object for the attribute '{@link com.silabs.ss.framework.project.api.core.model.MConfigSettings#getOutputFileBase Output File Base}'.

    @return the meta object for the attribute 'Output File Base'.
    @see com.silabs.ss.framework.project.api.core.model.MConfigSettings#getOutputFileBase()
    @see #getMConfigSettings()
    '''
    return org_eclipse_emf_ecore_EAttribute()


  def getMConfigSettings_PostbuildStep(self):
    '''
    Returns the meta object for the attribute '{@link com.silabs.ss.framework.project.api.core.model.MConfigSettings#getPostbuildStep Postbuild Step}'.

    @return the meta object for the attribute 'Postbuild Step'.
    @see com.silabs.ss.framework.project.api.core.model.MConfigSettings#getPostbuildStep()
    @see #getMConfigSettings()
    '''
    return org_eclipse_emf_ecore_EAttribute()


  def getMConfigSettings_PrebuildStep(self):
    '''
    Returns the meta object for the attribute '{@link com.silabs.ss.framework.project.api.core.model.MConfigSettings#getPrebuildStep Prebuild Step}'.

    @return the meta object for the attribute 'Prebuild Step'.
    @see com.silabs.ss.framework.project.api.core.model.MConfigSettings#getPrebuildStep()
    @see #getMConfigSettings()
    '''
    return org_eclipse_emf_ecore_EAttribute()


  def getMConfigSettings_SourceFolders(self):
    '''
    Returns the meta object for the attribute list '{@link com.silabs.ss.framework.project.api.core.model.MConfigSettings#getSourceFolders Source Folders}'.

    @return the meta object for the attribute list 'Source Folders'.
    @see com.silabs.ss.framework.project.api.core.model.MConfigSettings#getSourceFolders()
    @see #getMConfigSettings()
    '''
    return org_eclipse_emf_ecore_EAttribute()


  def getMConfiguration_StockConfigCompatibility(self):
    '''
    Returns the meta object for the attribute '{@link com.silabs.ss.framework.project.api.core.model.MConfiguration#getStockConfigCompatibility Stock Config Compatibility}'.

    @return the meta object for the attribute 'Stock Config Compatibility'.
    @see com.silabs.ss.framework.project.api.core.model.MConfiguration#getStockConfigCompatibility()
    @see #getMConfiguration()
    '''
    return org_eclipse_emf_ecore_EAttribute()


  def getMContent_Linked(self):
    '''
    Returns the meta object for the attribute '{@link com.silabs.ss.framework.project.api.core.model.MContent#getLinked Linked}'.

    @return the meta object for the attribute 'Linked'.
    @see com.silabs.ss.framework.project.api.core.model.MContent#getLinked()
    @see #getMContent()
    '''
    return org_eclipse_emf_ecore_EAttribute()


  def getMContent_Uri(self):
    '''
    Returns the meta object for the attribute '{@link com.silabs.ss.framework.project.api.core.model.MContent#getUri Uri}'.

    @return the meta object for the attribute 'Uri'.
    @see com.silabs.ss.framework.project.api.core.model.MContent#getUri()
    @see #getMContent()
    '''
    return org_eclipse_emf_ecore_EAttribute()


  def getMContent_Virtual(self):
    '''
    Returns the meta object for the attribute '{@link com.silabs.ss.framework.project.api.core.model.MContent#isVirtual Virtual}'.

    @return the meta object for the attribute 'Virtual'.
    @see com.silabs.ss.framework.project.api.core.model.MContent#isVirtual()
    @see #getMContent()
    '''
    return org_eclipse_emf_ecore_EAttribute()


  def getMConvertedOption_OptionId(self):
    '''
    Returns the meta object for the attribute '{@link com.silabs.ss.framework.project.api.core.model.MConvertedOption#getOptionId Option Id}'.

    @return the meta object for the attribute 'Option Id'.
    @see com.silabs.ss.framework.project.api.core.model.MConvertedOption#getOptionId()
    @see #getMConvertedOption()
    '''
    return org_eclipse_emf_ecore_EAttribute()


  def getMConvertedOption_ToolId(self):
    '''
    Returns the meta object for the attribute '{@link com.silabs.ss.framework.project.api.core.model.MConvertedOption#getToolId Tool Id}'.

    @return the meta object for the attribute 'Tool Id'.
    @see com.silabs.ss.framework.project.api.core.model.MConvertedOption#getToolId()
    @see #getMConvertedOption()
    '''
    return org_eclipse_emf_ecore_EAttribute()


  def getMConvertedOption_Value(self):
    '''
    Returns the meta object for the attribute '{@link com.silabs.ss.framework.project.api.core.model.MConvertedOption#getValue Value}'.

    @return the meta object for the attribute 'Value'.
    @see com.silabs.ss.framework.project.api.core.model.MConvertedOption#getValue()
    @see #getMConvertedOption()
    '''
    return org_eclipse_emf_ecore_EAttribute()


  def getMConvertedOption_ValueStatus(self):
    '''
    Returns the meta object for the attribute '{@link com.silabs.ss.framework.project.api.core.model.MConvertedOption#getValueStatus Value Status}'.

    @return the meta object for the attribute 'Value Status'.
    @see com.silabs.ss.framework.project.api.core.model.MConvertedOption#getValueStatus()
    @see #getMConvertedOption()
    '''
    return org_eclipse_emf_ecore_EAttribute()


  def getMCustomization_Pattern(self):
    '''
    Returns the meta object for the attribute '{@link com.silabs.ss.framework.project.api.core.model.MCustomization#getPattern Pattern}'.

    @return the meta object for the attribute 'Pattern'.
    @see com.silabs.ss.framework.project.api.core.model.MCustomization#getPattern()
    @see #getMCustomization()
    '''
    return org_eclipse_emf_ecore_EAttribute()


  def getMFolderContent_IncludeAllFiles(self):
    '''
    Returns the meta object for the attribute '{@link com.silabs.ss.framework.project.api.core.model.MFolderContent#isIncludeAllFiles Include All Files}'.

    @return the meta object for the attribute 'Include All Files'.
    @see com.silabs.ss.framework.project.api.core.model.MFolderContent#isIncludeAllFiles()
    @see #getMFolderContent()
    '''
    return org_eclipse_emf_ecore_EAttribute()


  def getMFolderContent_IncludeAllFolders(self):
    '''
    Returns the meta object for the attribute '{@link com.silabs.ss.framework.project.api.core.model.MFolderContent#isIncludeAllFolders Include All Folders}'.

    @return the meta object for the attribute 'Include All Folders'.
    @see com.silabs.ss.framework.project.api.core.model.MFolderContent#isIncludeAllFolders()
    @see #getMFolderContent()
    '''
    return org_eclipse_emf_ecore_EAttribute()


  def getMIncludePath_Uri(self):
    '''
    Returns the meta object for the attribute '{@link com.silabs.ss.framework.project.api.core.model.MIncludePath#getUri Uri}'.

    @return the meta object for the attribute 'Uri'.
    @see com.silabs.ss.framework.project.api.core.model.MIncludePath#getUri()
    @see #getMIncludePath()
    '''
    return org_eclipse_emf_ecore_EAttribute()


  def getMIncludePath_User(self):
    '''
    Returns the meta object for the attribute '{@link com.silabs.ss.framework.project.api.core.model.MIncludePath#isUser User}'.

    @return the meta object for the attribute 'User'.
    @see com.silabs.ss.framework.project.api.core.model.MIncludePath#isUser()
    @see #getMIncludePath()
    '''
    return org_eclipse_emf_ecore_EAttribute()


  def getMInclusion_Replacement(self):
    '''
    Returns the meta object for the attribute '{@link com.silabs.ss.framework.project.api.core.model.MInclusion#getReplacement Replacement}'.

    @return the meta object for the attribute 'Replacement'.
    @see com.silabs.ss.framework.project.api.core.model.MInclusion#getReplacement()
    @see #getMInclusion()
    '''
    return org_eclipse_emf_ecore_EAttribute()


  def getMLibraryFile_Name(self):
    '''
    Returns the meta object for the attribute '{@link com.silabs.ss.framework.project.api.core.model.MLibraryFile#getName Name}'.

    @return the meta object for the attribute 'Name'.
    @see com.silabs.ss.framework.project.api.core.model.MLibraryFile#getName()
    @see #getMLibraryFile()
    '''
    return org_eclipse_emf_ecore_EAttribute()


  def getMLibraryFile_Uri(self):
    '''
    Returns the meta object for the attribute '{@link com.silabs.ss.framework.project.api.core.model.MLibraryFile#getUri Uri}'.

    @return the meta object for the attribute 'Uri'.
    @see com.silabs.ss.framework.project.api.core.model.MLibraryFile#getUri()
    @see #getMLibraryFile()
    '''
    return org_eclipse_emf_ecore_EAttribute()


  def getMLibraryPath_Uri(self):
    '''
    Returns the meta object for the attribute '{@link com.silabs.ss.framework.project.api.core.model.MLibraryPath#getUri Uri}'.

    @return the meta object for the attribute 'Uri'.
    @see com.silabs.ss.framework.project.api.core.model.MLibraryPath#getUri()
    @see #getMLibraryPath()
    '''
    return org_eclipse_emf_ecore_EAttribute()


  def getMMacroDefinition_Name(self):
    '''
    Returns the meta object for the attribute '{@link com.silabs.ss.framework.project.api.core.model.MMacroDefinition#getName Name}'.

    @return the meta object for the attribute 'Name'.
    @see com.silabs.ss.framework.project.api.core.model.MMacroDefinition#getName()
    @see #getMMacroDefinition()
    '''
    return org_eclipse_emf_ecore_EAttribute()


  def getMMacroDefinition_Value(self):
    '''
    Returns the meta object for the attribute '{@link com.silabs.ss.framework.project.api.core.model.MMacroDefinition#getValue Value}'.

    @return the meta object for the attribute 'Value'.
    @see com.silabs.ss.framework.project.api.core.model.MMacroDefinition#getValue()
    @see #getMMacroDefinition()
    '''
    return org_eclipse_emf_ecore_EAttribute()


  def getMModule_CustomizationsGroup(self):
    '''
    Returns the meta object for the attribute list '{@link com.silabs.ss.framework.project.api.core.model.MModule#getCustomizationsGroup Customizations Group}'.

    @return the meta object for the attribute list 'Customizations Group'.
    @see com.silabs.ss.framework.project.api.core.model.MModule#getCustomizationsGroup()
    @see #getMModule()
    '''
    return org_eclipse_emf_ecore_EAttribute()


  def getMModule_Id(self):
    '''
    Returns the meta object for the attribute '{@link com.silabs.ss.framework.project.api.core.model.MModule#getId Id}'.

    @return the meta object for the attribute 'Id'.
    @see com.silabs.ss.framework.project.api.core.model.MModule#getId()
    @see #getMModule()
    '''
    return org_eclipse_emf_ecore_EAttribute()


  def getMModule_Pdm(self):
    '''
    Returns the meta object for the attribute '{@link com.silabs.ss.framework.project.api.core.model.MModule#isPdm Pdm}'.

    @return the meta object for the attribute 'Pdm'.
    @see com.silabs.ss.framework.project.api.core.model.MModule#isPdm()
    @see #getMModule()
    '''
    return org_eclipse_emf_ecore_EAttribute()


  def getMProject_ContentRoot(self):
    '''
    Returns the meta object for the attribute '{@link com.silabs.ss.framework.project.api.core.model.MProject#getContentRoot Content Root}'.

    @return the meta object for the attribute 'Content Root'.
    @see com.silabs.ss.framework.project.api.core.model.MProject#getContentRoot()
    @see #getMProject()
    '''
    return org_eclipse_emf_ecore_EAttribute()


  def getMReference_Builtin(self):
    '''
    Returns the meta object for the attribute '{@link com.silabs.ss.framework.project.api.core.model.MReference#isBuiltin Builtin}'.

    @return the meta object for the attribute 'Builtin'.
    @see com.silabs.ss.framework.project.api.core.model.MReference#isBuiltin()
    @see #getMReference()
    '''
    return org_eclipse_emf_ecore_EAttribute()


  def getMReference_Excluded(self):
    '''
    Returns the meta object for the attribute '{@link com.silabs.ss.framework.project.api.core.model.MReference#isExcluded Excluded}'.

    @return the meta object for the attribute 'Excluded'.
    @see com.silabs.ss.framework.project.api.core.model.MReference#isExcluded()
    @see #getMReference()
    '''
    return org_eclipse_emf_ecore_EAttribute()


  def getMReference_Remove(self):
    '''
    Returns the meta object for the attribute '{@link com.silabs.ss.framework.project.api.core.model.MReference#isRemove Remove}'.

    @return the meta object for the attribute 'Remove'.
    @see com.silabs.ss.framework.project.api.core.model.MReference#isRemove()
    @see #getMReference()
    '''
    return org_eclipse_emf_ecore_EAttribute()


  def getMSelectable_BoardCompatibility(self):
    '''
    Returns the meta object for the attribute '{@link com.silabs.ss.framework.project.api.core.model.MSelectable#getBoardCompatibility Board Compatibility}'.

    @return the meta object for the attribute 'Board Compatibility'.
    @see com.silabs.ss.framework.project.api.core.model.MSelectable#getBoardCompatibility()
    @see #getMSelectable()
    '''
    return org_eclipse_emf_ecore_EAttribute()


  def getMSelectable_Builtin(self):
    '''
    Returns the meta object for the attribute '{@link com.silabs.ss.framework.project.api.core.model.MSelectable#isBuiltin Builtin}'.

    @return the meta object for the attribute 'Builtin'.
    @see com.silabs.ss.framework.project.api.core.model.MSelectable#isBuiltin()
    @see #getMSelectable()
    '''
    return org_eclipse_emf_ecore_EAttribute()


  def getMSelectable_PartCompatibility(self):
    '''
    Returns the meta object for the attribute '{@link com.silabs.ss.framework.project.api.core.model.MSelectable#getPartCompatibility Part Compatibility}'.

    @return the meta object for the attribute 'Part Compatibility'.
    @see com.silabs.ss.framework.project.api.core.model.MSelectable#getPartCompatibility()
    @see #getMSelectable()
    '''
    return org_eclipse_emf_ecore_EAttribute()


  def getMSelectable_SdkCompatibility(self):
    '''
    Returns the meta object for the attribute '{@link com.silabs.ss.framework.project.api.core.model.MSelectable#getSdkCompatibility Sdk Compatibility}'.

    @return the meta object for the attribute 'Sdk Compatibility'.
    @see com.silabs.ss.framework.project.api.core.model.MSelectable#getSdkCompatibility()
    @see #getMSelectable()
    '''
    return org_eclipse_emf_ecore_EAttribute()


  def getMSelectable_ToolchainCompatibility(self):
    '''
    Returns the meta object for the attribute '{@link com.silabs.ss.framework.project.api.core.model.MSelectable#getToolchainCompatibility Toolchain Compatibility}'.

    @return the meta object for the attribute 'Toolchain Compatibility'.
    @see com.silabs.ss.framework.project.api.core.model.MSelectable#getToolchainCompatibility()
    @see #getMSelectable()
    '''
    return org_eclipse_emf_ecore_EAttribute()


  def getMSpecificOption_MappingStatus(self):
    '''
    Returns the meta object for the attribute '{@link com.silabs.ss.framework.project.api.core.model.MSpecificOption#getMappingStatus Mapping Status}'.

    @return the meta object for the attribute 'Mapping Status'.
    @see com.silabs.ss.framework.project.api.core.model.MSpecificOption#getMappingStatus()
    @see #getMSpecificOption()
    '''
    return org_eclipse_emf_ecore_EAttribute()


  def getMToolListOption_Value(self):
    '''
    Returns the meta object for the attribute '{@link com.silabs.ss.framework.project.api.core.model.MToolListOption#getValue Value}'.

    @return the meta object for the attribute 'Value'.
    @see com.silabs.ss.framework.project.api.core.model.MToolListOption#getValue()
    @see #getMToolListOption()
    '''
    return org_eclipse_emf_ecore_EAttribute()


  def getMToolOption_OptionId(self):
    '''
    Returns the meta object for the attribute '{@link com.silabs.ss.framework.project.api.core.model.MToolOption#getOptionId Option Id}'.

    @return the meta object for the attribute 'Option Id'.
    @see com.silabs.ss.framework.project.api.core.model.MToolOption#getOptionId()
    @see #getMToolOption()
    '''
    return org_eclipse_emf_ecore_EAttribute()


  def getMToolOption_ToolId(self):
    '''
    Returns the meta object for the attribute '{@link com.silabs.ss.framework.project.api.core.model.MToolOption#getToolId Tool Id}'.

    @return the meta object for the attribute 'Tool Id'.
    @see com.silabs.ss.framework.project.api.core.model.MToolOption#getToolId()
    @see #getMToolOption()
    '''
    return org_eclipse_emf_ecore_EAttribute()


  def getMToolOption_Value(self):
    '''
    Returns the meta object for the attribute '{@link com.silabs.ss.framework.project.api.core.model.MToolOption#getValue Value}'.

    @return the meta object for the attribute 'Value'.
    @see com.silabs.ss.framework.project.api.core.model.MToolOption#getValue()
    @see #getMToolOption()
    '''
    return org_eclipse_emf_ecore_EAttribute()


  def getDocumentRoot(self):
    '''
    Returns the meta object for class '{@link com.silabs.ss.framework.project.api.core.model.DocumentRoot Document Root}'.

    @return the meta object for class 'Document Root'.
    @see com.silabs.ss.framework.project.api.core.model.DocumentRoot
    '''
    return org_eclipse_emf_ecore_EClass()


  def getMBuildSetting(self):
    '''
    Returns the meta object for class '{@link com.silabs.ss.framework.project.api.core.model.MBuildSetting MBuild Setting}'.

    @return the meta object for class 'MBuild Setting'.
    @see com.silabs.ss.framework.project.api.core.model.MBuildSetting
    '''
    return org_eclipse_emf_ecore_EClass()


  def getMConfigIdToMProjectReferenceMap(self):
    '''
    Returns the meta object for class '{@link java.util.Map.Entry MConfig Id To MProject Reference Map}'.

    @return the meta object for class 'MConfig Id To MProject Reference Map'.
    @see java.util.Map.Entry
    @model keyDataType="org.eclipse.emf.ecore.Estr"
    valueType="com.silabs.ss.framework.project.api.core.model.MProjectReference" valueContainment="True"
    '''
    return org_eclipse_emf_ecore_EClass()


  def getMConfigSettings(self):
    '''
    Returns the meta object for class '{@link com.silabs.ss.framework.project.api.core.model.MConfigSettings MConfig Settings}'.

    @return the meta object for class 'MConfig Settings'.
    @see com.silabs.ss.framework.project.api.core.model.MConfigSettings
    '''
    return org_eclipse_emf_ecore_EClass()


  def getMConfiguration(self):
    '''
    Returns the meta object for class '{@link com.silabs.ss.framework.project.api.core.model.MConfiguration MConfiguration}'.

    @return the meta object for class 'MConfiguration'.
    @see com.silabs.ss.framework.project.api.core.model.MConfiguration
    '''
    return org_eclipse_emf_ecore_EClass()


  def getMContent(self):
    '''
    Returns the meta object for class '{@link com.silabs.ss.framework.project.api.core.model.MContent MContent}'.

    @return the meta object for class 'MContent'.
    @see com.silabs.ss.framework.project.api.core.model.MContent
    '''
    return org_eclipse_emf_ecore_EClass()


  def getMConvertedOption(self):
    '''
    Returns the meta object for class '{@link com.silabs.ss.framework.project.api.core.model.MConvertedOption MConverted Option}'.

    @return the meta object for class 'MConverted Option'.
    @see com.silabs.ss.framework.project.api.core.model.MConvertedOption
    '''
    return org_eclipse_emf_ecore_EClass()


  def getMCustomization(self):
    '''
    Returns the meta object for class '{@link com.silabs.ss.framework.project.api.core.model.MCustomization MCustomization}'.

    @return the meta object for class 'MCustomization'.
    @see com.silabs.ss.framework.project.api.core.model.MCustomization
    '''
    return org_eclipse_emf_ecore_EClass()


  def getMEntry(self):
    '''
    Returns the meta object for class '{@link com.silabs.ss.framework.project.api.core.model.MEntry MEntry}'.

    @return the meta object for class 'MEntry'.
    @see com.silabs.ss.framework.project.api.core.model.MEntry
    '''
    return org_eclipse_emf_ecore_EClass()


  def getMEntryToMSettingsSiteMap(self):
    '''
    Returns the meta object for class '{@link java.util.Map.Entry MEntry To MSettings Site Map}'.

    @return the meta object for class 'MEntry To MSettings Site Map'.
    @see java.util.Map.Entry
    @model keyType="com.silabs.ss.framework.project.api.core.model.MEntry"
    valueType="com.silabs.ss.framework.project.api.core.model.MSettingsSite" valueContainment="True"
    '''
    return org_eclipse_emf_ecore_EClass()


  def getMExclusion(self):
    '''
    Returns the meta object for class '{@link com.silabs.ss.framework.project.api.core.model.MExclusion MExclusion}'.

    @return the meta object for class 'MExclusion'.
    @see com.silabs.ss.framework.project.api.core.model.MExclusion
    '''
    return org_eclipse_emf_ecore_EClass()


  def getMFileContent(self):
    '''
    Returns the meta object for class '{@link com.silabs.ss.framework.project.api.core.model.MFileContent MFile Content}'.

    @return the meta object for class 'MFile Content'.
    @see com.silabs.ss.framework.project.api.core.model.MFileContent
    '''
    return org_eclipse_emf_ecore_EClass()


  def getMFileEntry(self):
    '''
    Returns the meta object for class '{@link com.silabs.ss.framework.project.api.core.model.MFileEntry MFile Entry}'.

    @return the meta object for class 'MFile Entry'.
    @see com.silabs.ss.framework.project.api.core.model.MFileEntry
    '''
    return org_eclipse_emf_ecore_EClass()


  def getMFileReference(self):
    '''
    Returns the meta object for class '{@link com.silabs.ss.framework.project.api.core.model.MFileReference MFile Reference}'.

    @return the meta object for class 'MFile Reference'.
    @see com.silabs.ss.framework.project.api.core.model.MFileReference
    '''
    return org_eclipse_emf_ecore_EClass()


  def getMFolderContent(self):
    '''
    Returns the meta object for class '{@link com.silabs.ss.framework.project.api.core.model.MFolderContent MFolder Content}'.

    @return the meta object for class 'MFolder Content'.
    @see com.silabs.ss.framework.project.api.core.model.MFolderContent
    '''
    return org_eclipse_emf_ecore_EClass()


  def getMFolderEntry(self):
    '''
    Returns the meta object for class '{@link com.silabs.ss.framework.project.api.core.model.MFolderEntry MFolder Entry}'.

    @return the meta object for class 'MFolder Entry'.
    @see com.silabs.ss.framework.project.api.core.model.MFolderEntry
    '''
    return org_eclipse_emf_ecore_EClass()


  def getMFolderReference(self):
    '''
    Returns the meta object for class '{@link com.silabs.ss.framework.project.api.core.model.MFolderReference MFolder Reference}'.

    @return the meta object for class 'MFolder Reference'.
    @see com.silabs.ss.framework.project.api.core.model.MFolderReference
    '''
    return org_eclipse_emf_ecore_EClass()


  def getMGenericOption(self):
    '''
    Returns the meta object for class '{@link com.silabs.ss.framework.project.api.core.model.MGenericOption MGeneric Option}'.

    @return the meta object for class 'MGeneric Option'.
    @see com.silabs.ss.framework.project.api.core.model.MGenericOption
    '''
    return org_eclipse_emf_ecore_EClass()


  def getMIncludePath(self):
    '''
    Returns the meta object for class '{@link com.silabs.ss.framework.project.api.core.model.MIncludePath MInclude Path}'.

    @return the meta object for class 'MInclude Path'.
    @see com.silabs.ss.framework.project.api.core.model.MIncludePath
    '''
    return org_eclipse_emf_ecore_EClass()


  def getMInclusion(self):
    '''
    Returns the meta object for class '{@link com.silabs.ss.framework.project.api.core.model.MInclusion MInclusion}'.

    @return the meta object for class 'MInclusion'.
    @see com.silabs.ss.framework.project.api.core.model.MInclusion
    '''
    return org_eclipse_emf_ecore_EClass()


  def getMLibraryFile(self):
    '''
    Returns the meta object for class '{@link com.silabs.ss.framework.project.api.core.model.MLibraryFile MLibrary File}'.

    @return the meta object for class 'MLibrary File'.
    @see com.silabs.ss.framework.project.api.core.model.MLibraryFile
    '''
    return org_eclipse_emf_ecore_EClass()


  def getMLibraryPath(self):
    '''
    Returns the meta object for class '{@link com.silabs.ss.framework.project.api.core.model.MLibraryPath MLibrary Path}'.

    @return the meta object for class 'MLibrary Path'.
    @see com.silabs.ss.framework.project.api.core.model.MLibraryPath
    '''
    return org_eclipse_emf_ecore_EClass()


  def getMMacroDefinition(self):
    '''
    Returns the meta object for class '{@link com.silabs.ss.framework.project.api.core.model.MMacroDefinition MMacro Definition}'.

    @return the meta object for class 'MMacro Definition'.
    @see com.silabs.ss.framework.project.api.core.model.MMacroDefinition
    '''
    return org_eclipse_emf_ecore_EClass()


  def getMModule(self):
    '''
    Returns the meta object for class '{@link com.silabs.ss.framework.project.api.core.model.MModule MModule}'.

    @return the meta object for class 'MModule'.
    @see com.silabs.ss.framework.project.api.core.model.MModule
    '''
    return org_eclipse_emf_ecore_EClass()


  def getMProject(self):
    '''
    Returns the meta object for class '{@link com.silabs.ss.framework.project.api.core.model.MProject MProject}'.

    @return the meta object for class 'MProject'.
    @see com.silabs.ss.framework.project.api.core.model.MProject
    '''
    return org_eclipse_emf_ecore_EClass()


  def getMProjectReference(self):
    '''
    Returns the meta object for class '{@link com.silabs.ss.framework.project.api.core.model.MProjectReference MProject Reference}'.

    @return the meta object for class 'MProject Reference'.
    @see com.silabs.ss.framework.project.api.core.model.MProjectReference
    '''
    return org_eclipse_emf_ecore_EClass()


  def getMProjectResourceTree(self):
    '''
    Returns the meta object for class '{@link com.silabs.ss.framework.project.api.core.model.MProjectResourceTree MProject Resource Tree}'.

    @return the meta object for class 'MProject Resource Tree'.
    @see com.silabs.ss.framework.project.api.core.model.MProjectResourceTree
    '''
    return org_eclipse_emf_ecore_EClass()


  def getMReference(self):
    '''
    Returns the meta object for class '{@link com.silabs.ss.framework.project.api.core.model.MReference MReference}'.

    @return the meta object for class 'MReference'.
    @see com.silabs.ss.framework.project.api.core.model.MReference
    '''
    return org_eclipse_emf_ecore_EClass()


  def getMSelectable(self):
    '''
    Returns the meta object for class '{@link com.silabs.ss.framework.project.api.core.model.MSelectable MSelectable}'.

    @return the meta object for class 'MSelectable'.
    @see com.silabs.ss.framework.project.api.core.model.MSelectable
    '''
    return org_eclipse_emf_ecore_EClass()


  def getMSettingsSite(self):
    '''
    Returns the meta object for class '{@link com.silabs.ss.framework.project.api.core.model.MSettingsSite MSettings Site}'.

    @return the meta object for class 'MSettings Site'.
    @see com.silabs.ss.framework.project.api.core.model.MSettingsSite
    '''
    return org_eclipse_emf_ecore_EClass()


  def getMSpecificOption(self):
    '''
    Returns the meta object for class '{@link com.silabs.ss.framework.project.api.core.model.MSpecificOption MSpecific Option}'.

    @return the meta object for class 'MSpecific Option'.
    @see com.silabs.ss.framework.project.api.core.model.MSpecificOption
    '''
    return org_eclipse_emf_ecore_EClass()


  def getMToolListOption(self):
    '''
    Returns the meta object for class '{@link com.silabs.ss.framework.project.api.core.model.MToolListOption MTool List Option}'.

    @return the meta object for class 'MTool List Option'.
    @see com.silabs.ss.framework.project.api.core.model.MToolListOption
    '''
    return org_eclipse_emf_ecore_EClass()


  def getMToolOption(self):
    '''
    Returns the meta object for class '{@link com.silabs.ss.framework.project.api.core.model.MToolOption MTool Option}'.

    @return the meta object for class 'MTool Option'.
    @see com.silabs.ss.framework.project.api.core.model.MToolOption
    '''
    return org_eclipse_emf_ecore_EClass()


  def getELanguage(self):
    '''
    Returns the meta object for enum '{@link com.silabs.ss.framework.project.api.core.model.ELanguage ELanguage}'.

    @return the meta object for enum 'ELanguage'.
    @see com.silabs.ss.framework.project.api.core.model.ELanguage
    '''
    return org_eclipse_emf_ecore_EEnum()


  def getEMappingStatus(self):
    '''
    Returns the meta object for enum '{@link com.silabs.ss.framework.project.api.core.model.EMappingStatus EMapping Status}'.

    @return the meta object for enum 'EMapping Status'.
    @see com.silabs.ss.framework.project.api.core.model.EMappingStatus
    '''
    return org_eclipse_emf_ecore_EEnum()


  def getEValueStatus(self):
    '''
    Returns the meta object for enum '{@link com.silabs.ss.framework.project.api.core.model.EValueStatus EValue Status}'.

    @return the meta object for enum 'EValue Status'.
    @see com.silabs.ss.framework.project.api.core.model.EValueStatus
    '''
    return org_eclipse_emf_ecore_EEnum()


  def getDocumentRoot_Project(self):
    '''
    Returns the meta object for the containment reference '{@link com.silabs.ss.framework.project.api.core.model.DocumentRoot#getProject Project}'.

    @return the meta object for the containment reference 'Project'.
    @see com.silabs.ss.framework.project.api.core.model.DocumentRoot#getProject()
    @see #getDocumentRoot()
    '''
    return org_eclipse_emf_ecore_EReference()


  def getDocumentRoot_XMLNSPrefixMap(self):
    '''
    Returns the meta object for the map '{@link com.silabs.ss.framework.project.api.core.model.DocumentRoot#getXMLNSPrefixMap XMLNS Prefix Map}'.

    @return the meta object for the map 'XMLNS Prefix Map'.
    @see com.silabs.ss.framework.project.api.core.model.DocumentRoot#getXMLNSPrefixMap()
    @see #getDocumentRoot()
    '''
    return org_eclipse_emf_ecore_EReference()


  def getDocumentRoot_XSISchemaLocation(self):
    '''
    Returns the meta object for the map '{@link com.silabs.ss.framework.project.api.core.model.DocumentRoot#getXSISchemaLocation XSI Schema Location}'.

    @return the meta object for the map 'XSI Schema Location'.
    @see com.silabs.ss.framework.project.api.core.model.DocumentRoot#getXSISchemaLocation()
    @see #getDocumentRoot()
    '''
    return org_eclipse_emf_ecore_EReference()


  def getMConfigIdToMProjectReferenceMap_Value(self):
    '''
    Returns the meta object for the containment reference '{@link java.util.Map.Entry Value}'.

    @return the meta object for the containment reference 'Value'.
    @see java.util.Map.Entry
    @see #getMConfigIdToMProjectReferenceMap()
    '''
    return org_eclipse_emf_ecore_EReference()


  def getMConfigSettings_EntrySettings(self):
    '''
    Returns the meta object for the map '{@link com.silabs.ss.framework.project.api.core.model.MConfigSettings#getEntrySettings Entry Settings}'.

    @return the meta object for the map 'Entry Settings'.
    @see com.silabs.ss.framework.project.api.core.model.MConfigSettings#getEntrySettings()
    @see #getMConfigSettings()
    '''
    return org_eclipse_emf_ecore_EReference()


  def getMConfigSettings_Modules(self):
    '''
    Returns the meta object for the containment reference list '{@link com.silabs.ss.framework.project.api.core.model.MConfigSettings#getModules Modules}'.

    @return the meta object for the containment reference list 'Modules'.
    @see com.silabs.ss.framework.project.api.core.model.MConfigSettings#getModules()
    @see #getMConfigSettings()
    '''
    return org_eclipse_emf_ecore_EReference()


  def getMEntryToMSettingsSiteMap_Key(self):
    '''
    Returns the meta object for the reference '{@link java.util.Map.Entry Key}'.

    @return the meta object for the reference 'Key'.
    @see java.util.Map.Entry
    @see #getMEntryToMSettingsSiteMap()
    '''
    return org_eclipse_emf_ecore_EReference()


  def getMEntryToMSettingsSiteMap_Value(self):
    '''
    Returns the meta object for the containment reference '{@link java.util.Map.Entry Value}'.

    @return the meta object for the containment reference 'Value'.
    @see java.util.Map.Entry
    @see #getMEntryToMSettingsSiteMap()
    '''
    return org_eclipse_emf_ecore_EReference()


  def getMFileReference_Ref(self):
    '''
    Returns the meta object for the reference '{@link com.silabs.ss.framework.project.api.core.model.MFileReference#getRef Ref}'.

    @return the meta object for the reference 'Ref'.
    @see com.silabs.ss.framework.project.api.core.model.MFileReference#getRef()
    @see #getMFileReference()
    '''
    return org_eclipse_emf_ecore_EReference()


  def getMFolderEntry_Files(self):
    '''
    Returns the meta object for the containment reference list '{@link com.silabs.ss.framework.project.api.core.model.MFolderEntry#getFiles Files}'.

    @return the meta object for the containment reference list 'Files'.
    @see com.silabs.ss.framework.project.api.core.model.MFolderEntry#getFiles()
    @see #getMFolderEntry()
    '''
    return org_eclipse_emf_ecore_EReference()


  def getMFolderEntry_Folders(self):
    '''
    Returns the meta object for the containment reference list '{@link com.silabs.ss.framework.project.api.core.model.MFolderEntry#getFolders Folders}'.

    @return the meta object for the containment reference list 'Folders'.
    @see com.silabs.ss.framework.project.api.core.model.MFolderEntry#getFolders()
    @see #getMFolderEntry()
    '''
    return org_eclipse_emf_ecore_EReference()


  def getMFolderReference_Files(self):
    '''
    Returns the meta object for the containment reference list '{@link com.silabs.ss.framework.project.api.core.model.MFolderReference#getFiles Files}'.

    @return the meta object for the containment reference list 'Files'.
    @see com.silabs.ss.framework.project.api.core.model.MFolderReference#getFiles()
    @see #getMFolderReference()
    '''
    return org_eclipse_emf_ecore_EReference()


  def getMFolderReference_Folders(self):
    '''
    Returns the meta object for the containment reference list '{@link com.silabs.ss.framework.project.api.core.model.MFolderReference#getFolders Folders}'.

    @return the meta object for the containment reference list 'Folders'.
    @see com.silabs.ss.framework.project.api.core.model.MFolderReference#getFolders()
    @see #getMFolderReference()
    '''
    return org_eclipse_emf_ecore_EReference()


  def getMFolderReference_Ref(self):
    '''
    Returns the meta object for the reference '{@link com.silabs.ss.framework.project.api.core.model.MFolderReference#getRef Ref}'.

    @return the meta object for the reference 'Ref'.
    @see com.silabs.ss.framework.project.api.core.model.MFolderReference#getRef()
    @see #getMFolderReference()
    '''
    return org_eclipse_emf_ecore_EReference()


  def getMGenericOption_SpecificMappings(self):
    '''
    Returns the meta object for the reference list '{@link com.silabs.ss.framework.project.api.core.model.MGenericOption#getSpecificMappings Specific Mappings}'.

    @return the meta object for the reference list 'Specific Mappings'.
    @see com.silabs.ss.framework.project.api.core.model.MGenericOption#getSpecificMappings()
    @see #getMGenericOption()
    '''
    return org_eclipse_emf_ecore_EReference()


  def getMModule_Exclusions(self):
    '''
    Returns the meta object for the containment reference list '{@link com.silabs.ss.framework.project.api.core.model.MModule Exclusions}'.

    @return the meta object for the containment reference list 'Exclusions'.
    @see com.silabs.ss.framework.project.api.core.model.MModule
    @see #getMModule()
    '''
    return org_eclipse_emf_ecore_EReference()


  def getMModule_Inclusions(self):
    '''
    Returns the meta object for the containment reference list '{@link com.silabs.ss.framework.project.api.core.model.MModule Inclusions}'.

    @return the meta object for the containment reference list 'Inclusions'.
    @see com.silabs.ss.framework.project.api.core.model.MModule
    @see #getMModule()
    '''
    return org_eclipse_emf_ecore_EReference()


  def getMProjectResourceTree_Configurations(self):
    '''
    Returns the meta object for the map '{@link com.silabs.ss.framework.project.api.core.model.MProjectResourceTree#getConfigurations Configurations}'.

    @return the meta object for the map 'Configurations'.
    @see com.silabs.ss.framework.project.api.core.model.MProjectResourceTree#getConfigurations()
    @see #getMProjectResourceTree()
    '''
    return org_eclipse_emf_ecore_EReference()


  def getMProject_Configurations(self):
    '''
    Returns the meta object for the containment reference list '{@link com.silabs.ss.framework.project.api.core.model.MProject#getConfigurations Configurations}'.

    @return the meta object for the containment reference list 'Configurations'.
    @see com.silabs.ss.framework.project.api.core.model.MProject#getConfigurations()
    @see #getMProject()
    '''
    return org_eclipse_emf_ecore_EReference()


  def getMProject_ProjectDefinedModules(self):
    '''
    Returns the meta object for the containment reference list '{@link com.silabs.ss.framework.project.api.core.model.MProject#getProjectDefinedModules Project Defined Modules}'.

    @return the meta object for the containment reference list 'Project Defined Modules'.
    @see com.silabs.ss.framework.project.api.core.model.MProject#getProjectDefinedModules()
    @see #getMProject()
    '''
    return org_eclipse_emf_ecore_EReference()


  def getMReference_ProvidingModule(self):
    '''
    Returns the meta object for the reference '{@link com.silabs.ss.framework.project.api.core.model.MReference#getProvidingModule Providing Module}'.

    @return the meta object for the reference 'Providing Module'.
    @see com.silabs.ss.framework.project.api.core.model.MReference#getProvidingModule()
    @see #getMReference()
    '''
    return org_eclipse_emf_ecore_EReference()


  def getMSettingsSite_ConvertedOptions(self):
    '''
    Returns the meta object for the containment reference list '{@link com.silabs.ss.framework.project.api.core.model.MSettingsSite#getConvertedOptions Converted Options}'.

    @return the meta object for the containment reference list 'Converted Options'.
    @see com.silabs.ss.framework.project.api.core.model.MSettingsSite#getConvertedOptions()
    @see #getMSettingsSite()
    '''
    return org_eclipse_emf_ecore_EReference()


  def getMSettingsSite_IncludePaths(self):
    '''
    Returns the meta object for the containment reference list '{@link com.silabs.ss.framework.project.api.core.model.MSettingsSite#getIncludePaths Include Paths}'.

    @return the meta object for the containment reference list 'Include Paths'.
    @see com.silabs.ss.framework.project.api.core.model.MSettingsSite#getIncludePaths()
    @see #getMSettingsSite()
    '''
    return org_eclipse_emf_ecore_EReference()


  def getMSettingsSite_LibraryFiles(self):
    '''
    Returns the meta object for the containment reference list '{@link com.silabs.ss.framework.project.api.core.model.MSettingsSite#getLibraryFiles Library Files}'.

    @return the meta object for the containment reference list 'Library Files'.
    @see com.silabs.ss.framework.project.api.core.model.MSettingsSite#getLibraryFiles()
    @see #getMSettingsSite()
    '''
    return org_eclipse_emf_ecore_EReference()


  def getMSettingsSite_LibraryPaths(self):
    '''
    Returns the meta object for the containment reference list '{@link com.silabs.ss.framework.project.api.core.model.MSettingsSite#getLibraryPaths Library Paths}'.

    @return the meta object for the containment reference list 'Library Paths'.
    @see com.silabs.ss.framework.project.api.core.model.MSettingsSite#getLibraryPaths()
    @see #getMSettingsSite()
    '''
    return org_eclipse_emf_ecore_EReference()


  def getMSettingsSite_MacroDefinitions(self):
    '''
    Returns the meta object for the containment reference list '{@link com.silabs.ss.framework.project.api.core.model.MSettingsSite#getMacroDefinitions Macro Definitions}'.

    @return the meta object for the containment reference list 'Macro Definitions'.
    @see com.silabs.ss.framework.project.api.core.model.MSettingsSite#getMacroDefinitions()
    @see #getMSettingsSite()
    '''
    return org_eclipse_emf_ecore_EReference()


  def getMSettingsSite_ToolOptions(self):
    '''
    Returns the meta object for the containment reference list '{@link com.silabs.ss.framework.project.api.core.model.MSettingsSite#getToolOptions Tool Options}'.

    @return the meta object for the containment reference list 'Tool Options'.
    @see com.silabs.ss.framework.project.api.core.model.MSettingsSite#getToolOptions()
    @see #getMSettingsSite()
    '''
    return org_eclipse_emf_ecore_EReference()


  def getMSpecificOption_GenericMappings(self):
    '''
    Returns the meta object for the reference list '{@link com.silabs.ss.framework.project.api.core.model.MSpecificOption#getGenericMappings Generic Mappings}'.

    @return the meta object for the reference list 'Generic Mappings'.
    @see com.silabs.ss.framework.project.api.core.model.MSpecificOption#getGenericMappings()
    @see #getMSpecificOption()
    '''
    return org_eclipse_emf_ecore_EReference()


  def getMSpecificOption_ImportedOption(self):
    '''
    Returns the meta object for the reference '{@link com.silabs.ss.framework.project.api.core.model.MSpecificOption#getImportedOption Imported Option}'.

    @return the meta object for the reference 'Imported Option'.
    @see com.silabs.ss.framework.project.api.core.model.MSpecificOption#getImportedOption()
    @see #getMSpecificOption()
    '''
    return org_eclipse_emf_ecore_EReference()


  def getMToolOption_ToolListOptions(self):
    '''
    Returns the meta object for the containment reference list '{@link com.silabs.ss.framework.project.api.core.model.MToolOption#getToolListOptions Tool List Options}'.

    @return the meta object for the containment reference list 'Tool List Options'.
    @see com.silabs.ss.framework.project.api.core.model.MToolOption#getToolListOptions()
    @see #getMToolOption()
    '''
    return org_eclipse_emf_ecore_EReference()


class com_silabs_ss_framework_project_api_templates_ITemplateDescriptor(com_silabs_ss_platform_api_content_core_IDescriptor):
  '''
  This is the descriptor for a template, which is an object that describes
  a set of variables and actions used to add content to a project.
  '''
  def init(self):
    self.category = self.getCategory()

    self.namespace = self.getNamespace()

    self.resourceSet = self.getResourceSet()

  def equals(self, _object):
    '''
    Returns True if the {@code obj} has the same class and the same id.
    @see object#equals(object)
    '''
    return bool()


  def isBuiltin(self):
    '''
    Tell whether the descriptor (and entity) are considered built in to the product.
    This may be used to distinguish bundled descriptors vs. ones discovered on
    the user's system.
    @see CoreProperties#BUILTIN
    '''
    return bool()


  def isHidden(self):
    '''
    Tell whether the object is intended to be hidden from UI.
    @see CoreProperties#HIDDEN
    '''
    return bool()


  def copy(self):
    '''
    Deep-copy the receiver
    @return new copy
    '''
    return com_silabs_ss_platform_api_content_core_IDescriptor()


  def getPropertyAccess(self):
    '''
    Get the full property access for the descriptor.
    '''
    return com_silabs_ss_platform_api_content_core_IPropertyAccess()


  def getPropertyMapper(self):
    '''
    Get the property mapper for the descriptor.
    '''
    return com_silabs_ss_platform_api_content_core_IPropertyMapper()


  def getRegistry(self):
    '''
    Get the owning registry.
    @return registry, non-None if descriptor is contained in a registry
    '''
    return com_silabs_ss_platform_api_content_core_registry_IRegistry()


  def hashCode(self):
    '''
    Returns the hash code of the receiver's id.
    @see object#hashCode()
    '''
    return int()


  def getProperty(self, key):
    '''
    Get the value of a property for the receiver, parent chain, or default if not defined in any of them.
    @param key name of a property in receiver's scope or fully qualified property name
    @type key: str
    @return value, in the Java type represented by the property's {@link IType}, or a string if the
    property is not registerted in the property scope.  The value may be the default if not explicitly
    set, or None if no such property is known in the receiver's or parent chain's properties
    @throws IllegalArgumentException if property value does not conform to type
    @see IPropertyAccess#getValue(str)
    '''
    return object()


  def getProperty(self, key, _com_silabs_ss_platform_api_content_core_IType):
    '''
    Get the value of a property for the receiver, parent chain, or default if not defined in any of them.
    @param key name of a property in receiver's scope or fully qualified property name
    @type key: str
    @return value, in the Java type represented by the property's {@link IType}, or a string if the
    property is not registerted in the property scope.  The value may be the default if not explicitly
    set, or None if no such property is known in the receiver's or parent chain's properties
    @throws IllegalArgumentException if property value does not conform to type
    @see IPropertyAccess#getValue(str)
    '''
    return object()


  def getProperty(self, key, _str):
    '''
    Get the value of a property for the receiver, parent chain, or default if not defined in any of them.
    @param key name of a property in receiver's scope or fully qualified property name
    @type key: str
    @return value, in the Java type represented by the property's {@link IType}, or a string if the
    property is not registerted in the property scope.  The value may be the default if not explicitly
    set, or None if no such property is known in the receiver's or parent chain's properties
    @throws IllegalArgumentException if property value does not conform to type
    @see IPropertyAccess#getValue(str)
    '''
    return object()


  def getCategory(self):
    '''
    Get a human-readable string for the category the template belongs to.
    @return str
    '''
    return str()


  def getNamespace(self):
    '''
    Get the name space for this template descriptor. This will control which 
    template type is created.
    @return str
    '''
    return str()


  def getDescription(self):
    '''
    Human-readable description of the value for UI.

    This description is interpreted as HTML.

    @return description, never None (but may be blank)
    '''
    return str()


  def getId(self):
    '''
    The fully qualified identifer for this entity, including the ids of its parents, up to an implementation-defined root.
    '''
    return str()


  def getLabel(self):
    '''
    The label for the item, displayed in UI.
    @return label, never None
    '''
    return str()


  def getName(self):
    '''
    The unique name for this item within its parent.   See {@link #getId()} for the full unique identifier.
    '''
    return str()


  def toString(self):
    '''
    Return the id and label.
    @return str
    '''
    return str()


  def getLabel(self):
    '''
    Label for the value, if it appears in UI.  This label is plain text.

    This may be a derived value, sourced from the wrapped MDescriptor.  If
    that value is None or blank, a label is automatically
    generated from the {@link #getName()}.
    @return label, never None
    '''
    return str()


  def gatherListProperty(self, _str):
    return list()


  def getInstallationPath(self):
    '''
    Get the path where the installation lives on the system.
    @return path
    @throws IOException if path cannot be resolved
    @see CoreProperties#INSTALLATION_PATH
    '''
    return org_eclipse_core_runtime_IPath()


  def getResourceSet(self):
    '''
    Get the EMF ResourceSet that handles the model URIs.
    '''
    return org_eclipse_emf_ecore_resource_ResourceSet()


class com_silabs_ss_framework_project_api_toolchain_core_IToolOption(object):
  '''
  This represents a single option and value for one or more tools.

  An option is flexible in that it may apply to a family of toolchains
  or tools: the owner is interpreted as a regular expression, whose matching
  groups may be replaced in the key and value.
   *
  '''
  def init(self):
    self.optionIdRepl = self.getOptionIdRepl()

    self.toolIdPattern = self.getToolIdPattern()

    self.valueRepl = self.getValueRepl()

    self.listValues = self.getListValues()

  def getOptionIdRepl(self):
    '''
    Get the option id (e.g. a CDT MBS IOption).

    This is interpreted as a regex replacement pattern.  The groups matched
    from {@link #getToolIdPattern()} may be replaced via "$1", "$2", etc.
    @return the option id pattern, suitable for {@link Matcher#replaceAll(str)}
    '''
    return str()


  def getToolIdPattern(self):
    '''
    Get the id (pattern) of the tool (e.g. a CDT MBS ITool).  

    This is interpreted as a regular expression,
    meaning, the receiver may match several tools.  The matching
    groups in the pattern may be referenced in the key and value.
    @return the tool id pattern, suitable for {@link Pattern}
    '''
    return str()


  def getValueRepl(self):
    '''
    Get the option value.

    This is interpreted as a regex replacement pattern.  The groups matched
    from {@link #getToolIdPattern()} may be replaced via "$1", "$2", etc.
    @return the option id pattern, suitable for {@link Matcher#replaceAll(str)}
    '''
    return str()


  def getListValues(self):
    '''
    Get the option list values.

    Each of these is interpreted as a regex replacement pattern.  The groups matched
    from {@link #getToolIdPattern()} may be replaced via "$1", "$2", etc.
    @return the option id pattern, suitable for {@link Matcher#replaceAll(str)}
    '''
    return list()


class com_silabs_ss_framework_sourcegen_api_core_AnchorAtom(com_silabs_ss_framework_sourcegen_api_core_ILocation_SourceAtom):
  '''
  This atom represents the placement of an anchor.
  '''
  def init(self):
    self.name = self.getName()

  def equals(self, _object):
    return bool()


  def hashCode(self):
    return int()


  def getName(self):
    return str()


  def toString(self):
    return str()


class com_silabs_ss_framework_sourcegen_api_core_IContribution(object):
  '''
  A single source contribution.  This represents an unbroken
  string of text which is emitted as a block inside a location
  in source.  Contributions needn't be constant; they can be
  filled in with arguments at runtime via #setFormattedText().

  A contribution is not valid until its location and text are
  set.  A phase is a proxy for a location that a parent fills
  in later.
   *
  '''
  def init(self):
    self.location = self.getLocation()

    self.sourceLanguage = self.getSourceLanguage()

    self.indentDelta = self.getIndentDelta()

    self.indentation = self.getIndentation()

    self.indentString = self.getIndentString()

    self.text = self.getText()

  def isDefining(self):
    '''
    Tell whether the contribution defines its location.
    '''
    return bool()


  def isValid(self):
    '''
    Tell whether the contribution is valid, e.g., whether
    the location and text are set
    '''
    return bool()


  def getLocation(self):
    '''
    Get the location
    '''
    return com_silabs_ss_framework_sourcegen_api_core_ILocation()


  def getSourceLanguage(self):
    '''
    Get the language
    @return language, never None
    @throws IllegalStateException if no language found
    '''
    return com_silabs_ss_framework_sourcegen_api_core_ISourceLanguage()


  def getIndentDelta(self):
    '''
    Get the delta from the indentation level implied by the location.
    @return delta (0 is normal)
    '''
    return int()


  def getIndentation(self):
    '''
    Get the full indentation level (location's level plus delta)
    @return 
    '''
    return int()


  def getIndentString(self):
    '''
    Get the indentation string (if differs from source language)
    @return string for one indent level or None
    '''
    return str()


  def getText(self):
    '''
    Get the literal text (may be None until set)
    '''
    return str()


  def setIndentDelta(self, delta):
    '''
    Set the delta from the indentation level implied by the location.
    @param delta (0 is normal)

    @type delta: int
    '''
    pass


  def setIndentString(self, indentString):
    '''
    Set the indentation string (if differs from source language)
    @param indentstr string for one indent level or None

    @type indentstr: str
    '''
    pass


  def setText(self, _str):
    '''
    Set the literal text (may not be None)
    '''
    pass


class com_silabs_ss_framework_sourcegen_api_core_IDocumentManager(object):
  '''
  Implementations of this interface handle loading and saving {@link IDocument},
  e.g. with direct-to-disk access vs. Eclipse workspace & editor integration.
   *
  '''
  def documentExists(self, _java_net_URI):
    '''
    Tell whether a document with the given URI exists
    '''
    return bool()


  def readDocument(self, uri):
    '''
    Read the document from the URI.
    @param uri
    @type uri: java_net_URI
    @return document, not modified by caller
    @throws CoreException
    '''
    return org_eclipse_jface_text_IDocument()


  def writeDocument(self, uri, _org_eclipse_jface_text_IDocument):
    '''
    Write the document to the URI.
    @param uri
    @type uri: java_net_URI
    @return document, not necessarily the same one from {@link #readDocument(URI)}
    @throws CoreException
    '''
    pass


class com_silabs_ss_framework_sourcegen_api_core_IFileLocation(com_silabs_ss_framework_sourcegen_api_core_IUriLocation):
  '''
  This refers to a location that represents an entire file.
   *
  '''
  def init(self):
    self.sourceLanguage = self.getSourceLanguage()

    self.eOL = self.getEOL()

    self.type = self.getType()

    self.macros = self.getMacros()

    self.document = self.getDocument()

    self.persistedDocument = self.getPersistedDocument()

  def addAnchor(self, name):
    '''
    Add an anchor to the location, which maintains its position
    relative to other locations and contributions.
    @param name
    @type name: str
    @return True if anchor added, False if already defined
    '''
    return bool()


  def isDividerAdded(self):
    '''
    If True, whitespace will be added after the location's text,
    to separate it from the next.
    '''
    return bool()


  def moveToAnchor(self, child, anchor):
    '''
    Place the given child location at this anchor
    @param child child location
    @param anchor or None
    @type child: com_silabs_ss_framework_sourcegen_api_core_ILocation
    @type anchor: str
    @return False for missing anchor
    @throws IllegalArgumentException if the given child is not a child of the receiver
    '''
    return bool()


  def addChildLocation(self, _com_silabs_ss_framework_sourcegen_api_core_ILocationContainer):
    '''
    Add a child location
    @return True if location is new (note: most locations are automatically added to their parents)
    @throws IllegalArgumentException if location has a parent or is already
    in this list
    '''
    return bool()


  def isDefinedInTree(self):
    '''
    @return 
    '''
    return bool()


  def isOwned(self):
    '''
    Tell whether this location is "owned" or not.

    If owned, its contents are cleared before applying contributions. This
    location is the root of the area to clean. This and all its children will
    be removed if existing. When creating the location, its contents are
    emitted surrounded by a comment indicating the user should not modify the
    source.

    Otherwise, if not owned, the location is created and its
    contributions applied only when it doesn't exist.  No comment
    is emitted.
    '''
    return bool()


  def isToDefine(self):
    '''
    Tell whether the location should be defined whether or not
    any contributions appear
    @return 
    '''
    return bool()


  def findAnchor(self, anchor):
    '''
    Find an anchor with the given name.
    @param anchor
    @type anchor: str
    @return anchor or None
    '''
    return com_silabs_ss_framework_sourcegen_api_core_AnchorAtom()


  def getContributions(self):
    '''
    Get any contributions directly attached to this location
    @return array of IContribution (never None)
    '''
    return list()


  def getDefiningContributions(self):
    '''
    Get the contributions that define/instantiate the location
    @return array of IContribution (never None)
    '''
    return list()


  def getFileLocation(self):
    '''
    Get the containing file location
    @return file location, or receiver for instances of {@link IFileLocation}, or None
    for the root location
    '''
    return com_silabs_ss_framework_sourcegen_api_core_IFileLocation()


  def findChild(self, _str):
    '''
    Find a child location by its path segment
    @see #getPathSegment()
    '''
    return com_silabs_ss_framework_sourcegen_api_core_ILocation()


  def getGenerationOrder(self):
    '''
    Get the order in which contributions and locations are (re-)generated.
    @return array, never None
    '''
    return list()


  def findChild(self, _str):
    '''
    Find a child location by its path segment
    @see #getPathSegment()
    '''
    return com_silabs_ss_framework_sourcegen_api_core_ILocationContainer()


  def getSourceLanguage(self):
    '''
    Fetch the language controlling this file.
    @return language, never None
    '''
    return com_silabs_ss_framework_sourcegen_api_core_ISourceLanguage()


  def getContributionCount(self):
    '''
    Get the number of contributions directly attached to this location
    @return count
    '''
    return int()


  def getDefiningContributionCount(self):
    '''
    Get the number of contributions directly attached to this location
    @return count
    '''
    return int()


  def getIndentDelta(self):
    '''
    Get indentation delta
    '''
    return int()


  def getIndentLevel(self):
    '''
    Get the indentation level implied by the location's structural position
    (does not include {@link #getIndentDelta()})
    '''
    return int()


  def getInsertOffset(self):
    '''
    Get the file-relative offset where new contributions should be inserted
    into this location.

    This should only be called if the state is known.
    @return file offset, or 0 if unknown state
    '''
    return int()


  def getParent(self):
    '''
    Get the parent
    @return parent object, or None
    '''
    return object()


  def getEOL(self):
    '''
    Get the end-of-line sequence to use in the file.  This is originally
    detected from a persisted document.  If there is no persisted document,
    the workspace default is used.
    @return one of "\n", "\r\n", or "\r"
    '''
    return str()


  def getType(self):
    '''
    Get the type of file this is, for its language
    @return 
    '''
    return str()


  def getAnchor(self):
    '''
    Get the anchor at which this location lives in its parent
    @return anchor or None
    '''
    return str()


  def getOwnedRegionComment(self, commentPattern, isOpen):
    '''
    Get the comment that allows us to distinguish an owned location.
    @param commentPattern pattern for the comment, with "$(token)" for the location name
    @param isOpen True for the opening comment, False for the closing
    @type commentPattern: str
    @type isOpen: bool
    @return comment text (may be empty)
    '''
    return str()


  def getPath(self):
    '''
    Get the absolute location path (root down to the receiver)
    '''
    return str()


  def getPathSegment(self):
    '''
    Get the path segment for this location relative to its parent.
    @return location name
    '''
    return str()


  def getRelativePathToFile(self):
    '''
    Get the location path relative to its nearest {@link IFileLocation}.
    '''
    return str()


  def getSourceName(self):
    '''
    Get the name of the location as it appears in source
    @return 
    '''
    return str()


  def getLastURISegment(self):
    '''
    Get the final segment of the URI (e.g. directory or file name)
    '''
    return str()


  def getURI(self):
    '''
    Get the URI of the location.  It or its parents
    may not necessarily exist yet.

    This must be an absolute URI in a scheme resolvable
    to 'file', but is expected to be e.g. 'platform:/resource/project/...'
    in practice.  It will be resolved by {@link FileLocator} before
    use.
    @return URI, never None
    '''
    return java_net_URI()


  def getChildren(self):
    '''
    Get child locations contained within this one
    @return collection of ILocation (unmodifiable)
    '''
    return list()


  def getChildren(self):
    '''
    Get child locations contained within this one
    @return collection of ILocation (unmodifiable)
    '''
    return list()


  def getMacros(self):
    '''
    Get any macros defined against this file
    @return the macros map or None if empty
    '''
    return java_util_Map()


  def getDocument(self):
    '''
    Get the current document for the file, as it is being manipulated.
    This will initially reflect the persisted document and will 
    change as contributions are applied.
    @return file contents, or None
    '''
    return org_eclipse_jface_text_IDocument()


  def getPersistedDocument(self):
    '''
    Get the document representing the content of the file
    on disk.  This will return the same text, independent of
    {@link #setState(com.silabs.ss.framework.sourcegen.internal.apiILocation.State)},
    until reset explicitly with #resetPersistedDocument().
    @return file contents, or None
    '''
    return org_eclipse_jface_text_IDocument()


  def resetPersistedDocument(self):
    '''
    Force the location to refetch the document from disk.  This will
    re-sync the current document with the persisted one.
    @see #getPersistedDocument()
    @see #getDocument()
    '''
    pass


  def setEOL(self, eol):
    '''
    Override the end-of-line sequence to use
    @param eol one of "\n", "\r\n", or "\r"

    @type eol: str
    '''
    pass


  def setMacro(self, nameAndParams, expansion
  ):
    '''
    Add a macro to the parsing context of the file
    @param nameAndParams
    @param expansion

    @type nameAndParams: str
    @type expansion
    : str
    '''
    pass


  def addChildLocation(self, _com_silabs_ss_framework_sourcegen_api_core_ILocation):
    '''
    Add a child location
    @throws IllegalArgumentException if location has a parent or is already
    in this list
    '''
    pass


  def addContribution(self, contrib
  ):
    '''
    Add the given contribution to the location, allowing it to appear
    in the source.  Both defining contributions and ordinary contributions
    should be registered with this method.  

    The order in which contributions are added determines the order they
    and their respective locations will appear in generated source when  
    a location is first generated or regenerated.  Nothing will reorder
    existing source.
    @param contrib

    @type contrib
    : com_silabs_ss_framework_sourcegen_api_core_IContribution
    '''
    pass


  def clearContributions(self):
    '''
    Remove all the contributions
    '''
    pass


  def removeContribution(self, contrib):
    '''
    Remove a previously generated contribution.
    @param contrib
    @throws IllegalArgumentException if contribution was not a direct child of this location

    @type contrib: com_silabs_ss_framework_sourcegen_api_core_IContribution
    '''
    pass


  def reorderAtoms(self, atoms):
    '''
    Modify the order in which the given child contributions or locations are (re-)generated.

    The array may be partial: the order of other locations and contributions will not be affected.  

    An example use is to ensure that declarations of identifiers precede their usage.   

    This is a utility method:  see {@link #getGenerationOrder()} and {@link #setGenerationOrder(SourceAtom[])}
    for fully generic reordering.
    @param atoms a subset of child contribution or location atoms in the desired order
    @throws IllegalArgumentException if child locations are not direct children of this location

    @type atoms: list
    '''
    pass


  def reorderContributions(self, contribs):
    '''
    Set the order in which contributions and locations are generated.
      The array
    may be partial: the order of other locations and contributions will not be affected.

    An example use may be to ensure that statements are executed in an expected order, when
    their contributions were generated in a nondeterministic fashion.

    This is a utility method:  see {@link #getGenerationOrder()} and {@link #setGenerationOrder(SourceAtom[])}
    for fully generic reordering.
    @param contribs a subset of contributions in the desired order
    @throws IllegalArgumentException if contributions are children of this location

    @type contribs: list
    '''
    pass


  def reorderLocations(self, locations):
    '''
    Modify the order in which the given child locations are (re-)generated.

    The array may be partial: the order of other locations and contributions will not be affected.  

    An example use is to ensure that declarations of identifiers precede their usage.   

    This is a utility method:  see {@link #getGenerationOrder()} and {@link #setGenerationOrder(SourceAtom[])}
    for fully generic reordering.
    @param locations a subset of child locations in the desired order
    @throws IllegalArgumentException if child locations are not direct children of this location

    @type locations: list
    '''
    pass


  def setAnchor(self, anchor):
    '''
    Set the anchor at which this location lives in its parent
    @param anchor or None

    @type anchor: str
    '''
    pass


  def setDividerAdded(self, addDivider
  ):
    '''
    If True, whitespace will be added after the location's text,
    to separate it from the next.
    @param addDivider

    @type addDivider
    : bool
    '''
    pass


  def setGenerationOrder(self, order):
    '''
    Set the order in which contributions and locations are (re-)generated.
    @param order array of Atoms, never None, whose elements must match
    the original from {@link #getGenerationOrder()}.

    @type order: list
    '''
    pass


  def setIndentDelta(self, _int):
    '''
    Set indentation delta
    '''
    pass


  def accept(self, visitor, inOrder):
    '''
    Visit this location and its children in order.
    @param visitor a visitor for all instances of ILocation
    @param inOrder if True, order nodes in actual source order (leaving new nodes at the end), else, present raw #getChildren() order

    @type visitor: com_silabs_ss_framework_sourcegen_api_core_ILocationVisitor
    @type inOrder: bool
    '''
    pass


  def setOwned(self, _bool):
    '''
    Tell whether this location is "owned" or not.

    If owned, its contents are cleared before applying contributions. This
    location is the root of the area to clean. This and all its children will
    be removed if existing. When creating the location, its contents are
    emitted surrounded by a comment indicating the user should not modify the
    source.

    Otherwise, if not owned, the location is created and its
    contributions applied only when it doesn't exist.  No comment
    is emitted.
    '''
    pass


  def setToDefine(self, _bool):
    pass


  def findChild(self, _str):
    '''
    Find a child location by its path segment
    @see #getPathSegment()
    '''
    return com_silabs_ss_framework_sourcegen_api_core_ILocationContainer()


class com_silabs_ss_framework_sourcegen_api_core_IFunctionCallInfo(object):
  '''
  This represents the in-progress construction of a function call for a given
  mapping scope.
   *
  '''
  def init(self):
    self.name = self.getName()

    self.thisArg = self.getThisArg()

    self.arguments = self.getArguments()

  def getArgument(self, index):
    '''
    Get a particular argument in the call.
    @param index argument index, numbered [0...N)
    @type index: int
    @return argument setting or None if out of range or undefined
    '''
    return str()


  def getName(self):
    '''
    Get the function name
    '''
    return str()


  def getThisArg(self):
    '''
    Get the argument representing "this".  None if "name" is not dereferenced from the current object.
    '''
    return str()


  def getArguments(self):
    '''
    Get the realized list of arguments.
    @return list of arguments set via {@link #setArgument(int, str)}; may contain Nones if the
    appropriate {@link #setArgument(int, str)} calls have not been completed.
    The length of the list corresponds to the maximum index passed to {@link #setArgument(int, str)}.
    '''
    return list()


  def setArgument(self, index, arg):
    '''
    Define a particular argument in the call.
    @param index index, numbered [0...N)
    @param arg the argument value

    @type index: int
    @type arg: str
    '''
    pass


  def setThisArg(self, _str):
    '''
    Set the argument representing "this".  None if "name" is not dereferenced from the current object.
    '''
    pass


class com_silabs_ss_framework_sourcegen_api_core_ILocation(com_silabs_ss_framework_sourcegen_api_core_ILocationContainer):
  '''
  This represents the location of a contribution.  
  It is an instance of a domain-specific class which knows how
  to interpret a location's contents.

  ILocations are stored within a tree to track the
  project-wide state of contributions' locations.

  When it is instantiated
  as an ILocation, necessary changes are made to source in
  accordance with the attributes of this interface to prepare
  for source generation.  
   *
  '''
  def init(self):
    self.contributionFilter = self.getContributionFilter()

    self.contributions = self.getContributions()

    self.definingContributions = self.getDefiningContributions()

    self.generationOrder = self.getGenerationOrder()

    self.state = self.getState()

    self.contributionCount = self.getContributionCount()

    self.definingContributionCount = self.getDefiningContributionCount()

    self.indentDelta = self.getIndentDelta()

    self.indentLevel = self.getIndentLevel()

    self.insertOffset = self.getInsertOffset()

    self.anchor = self.getAnchor()

    self.children = self.getChildren()

    self.region = self.getRegion()

  class ContributionSourceAtom(com_silabs_ss_framework_sourcegen_api_core_ILocation_SourceAtom):
    def init(self):
      self.contribution = self.getContribution()

    def equals(self, _object):
      return bool()


    def getContribution(self):
      return com_silabs_ss_framework_sourcegen_api_core_IContribution()


    def hashCode(self):
      return int()


    def toString(self):
      return str()


  class SourceAtom(object):
    pass
  def addAnchor(self, name):
    '''
    Add an anchor to the location, which maintains its position
    relative to other locations and contributions.
    @param name
    @type name: str
    @return True if anchor added, False if already defined
    '''
    return bool()


  def isDividerAdded(self):
    '''
    If True, whitespace will be added after the location's text,
    to separate it from the next.
    '''
    return bool()


  def moveToAnchor(self, child, anchor):
    '''
    Place the given child location at this anchor
    @param child child location
    @param anchor or None
    @type child: com_silabs_ss_framework_sourcegen_api_core_ILocation
    @type anchor: str
    @return False for missing anchor
    @throws IllegalArgumentException if the given child is not a child of the receiver
    '''
    return bool()


  def addChildLocation(self, _com_silabs_ss_framework_sourcegen_api_core_ILocationContainer):
    '''
    Add a child location
    @return True if location is new (note: most locations are automatically added to their parents)
    @throws IllegalArgumentException if location has a parent or is already
    in this list
    '''
    return bool()


  def isDefinedInTree(self):
    '''
    @return 
    '''
    return bool()


  def isOwned(self):
    '''
    Tell whether this location is "owned" or not.

    If owned, its contents are cleared before applying contributions. This
    location is the root of the area to clean. This and all its children will
    be removed if existing. When creating the location, its contents are
    emitted surrounded by a comment indicating the user should not modify the
    source.

    Otherwise, if not owned, the location is created and its
    contributions applied only when it doesn't exist.  No comment
    is emitted.
    '''
    return bool()


  def isToDefine(self):
    '''
    Tell whether the location should be defined whether or not
    any contributions appear
    @return 
    '''
    return bool()


  def findAnchor(self, anchor):
    '''
    Find an anchor with the given name.
    @param anchor
    @type anchor: str
    @return anchor or None
    '''
    return com_silabs_ss_framework_sourcegen_api_core_AnchorAtom()


  def getContributions(self):
    '''
    Get any contributions directly attached to this location
    @return array of IContribution (never None)
    '''
    return list()


  def getDefiningContributions(self):
    '''
    Get the contributions that define/instantiate the location
    @return array of IContribution (never None)
    '''
    return list()


  def getFileLocation(self):
    '''
    Get the containing file location
    @return file location, or receiver for instances of {@link IFileLocation}, or None
    for the root location
    '''
    return com_silabs_ss_framework_sourcegen_api_core_IFileLocation()


  def findChild(self, _str):
    '''
    Find a child location by its path segment
    @see #getPathSegment()
    '''
    return com_silabs_ss_framework_sourcegen_api_core_ILocation()


  def getGenerationOrder(self):
    '''
    Get the order in which contributions and locations are (re-)generated.
    @return array, never None
    '''
    return list()


  def findChild(self, _str):
    '''
    Find a child location by its path segment
    @see #getPathSegment()
    '''
    return com_silabs_ss_framework_sourcegen_api_core_ILocationContainer()


  def getContributionCount(self):
    '''
    Get the number of contributions directly attached to this location
    @return count
    '''
    return int()


  def getDefiningContributionCount(self):
    '''
    Get the number of contributions directly attached to this location
    @return count
    '''
    return int()


  def getIndentDelta(self):
    '''
    Get indentation delta
    '''
    return int()


  def getIndentLevel(self):
    '''
    Get the indentation level implied by the location's structural position
    (does not include {@link #getIndentDelta()})
    '''
    return int()


  def getInsertOffset(self):
    '''
    Get the file-relative offset where new contributions should be inserted
    into this location.

    This should only be called if the state is known.
    @return file offset, or 0 if unknown state
    '''
    return int()


  def getParent(self):
    '''
    Get the parent
    @return parent object, or None
    '''
    return object()


  def getAnchor(self):
    '''
    Get the anchor at which this location lives in its parent
    @return anchor or None
    '''
    return str()


  def getOwnedRegionComment(self, commentPattern, isOpen):
    '''
    Get the comment that allows us to distinguish an owned location.
    @param commentPattern pattern for the comment, with "$(token)" for the location name
    @param isOpen True for the opening comment, False for the closing
    @type commentPattern: str
    @type isOpen: bool
    @return comment text (may be empty)
    '''
    return str()


  def getPath(self):
    '''
    Get the absolute location path (root down to the receiver)
    '''
    return str()


  def getPathSegment(self):
    '''
    Get the path segment for this location relative to its parent.
    @return location name
    '''
    return str()


  def getRelativePathToFile(self):
    '''
    Get the location path relative to its nearest {@link IFileLocation}.
    '''
    return str()


  def getSourceName(self):
    '''
    Get the name of the location as it appears in source
    @return 
    '''
    return str()


  def getChildren(self):
    '''
    Get child locations contained within this one
    @return collection of ILocation (unmodifiable)
    '''
    return list()


  def getChildren(self):
    '''
    Get child locations contained within this one
    @return collection of ILocation (unmodifiable)
    '''
    return list()


  def addChildLocation(self, _com_silabs_ss_framework_sourcegen_api_core_ILocation):
    '''
    Add a child location
    @throws IllegalArgumentException if location has a parent or is already
    in this list
    '''
    pass


  def addContribution(self, contrib
  ):
    '''
    Add the given contribution to the location, allowing it to appear
    in the source.  Both defining contributions and ordinary contributions
    should be registered with this method.  

    The order in which contributions are added determines the order they
    and their respective locations will appear in generated source when  
    a location is first generated or regenerated.  Nothing will reorder
    existing source.
    @param contrib

    @type contrib
    : com_silabs_ss_framework_sourcegen_api_core_IContribution
    '''
    pass


  def clearContributions(self):
    '''
    Remove all the contributions
    '''
    pass


  def removeContribution(self, contrib):
    '''
    Remove a previously generated contribution.
    @param contrib
    @throws IllegalArgumentException if contribution was not a direct child of this location

    @type contrib: com_silabs_ss_framework_sourcegen_api_core_IContribution
    '''
    pass


  def reorderAtoms(self, atoms):
    '''
    Modify the order in which the given child contributions or locations are (re-)generated.

    The array may be partial: the order of other locations and contributions will not be affected.  

    An example use is to ensure that declarations of identifiers precede their usage.   

    This is a utility method:  see {@link #getGenerationOrder()} and {@link #setGenerationOrder(SourceAtom[])}
    for fully generic reordering.
    @param atoms a subset of child contribution or location atoms in the desired order
    @throws IllegalArgumentException if child locations are not direct children of this location

    @type atoms: list
    '''
    pass


  def reorderContributions(self, contribs):
    '''
    Set the order in which contributions and locations are generated.
      The array
    may be partial: the order of other locations and contributions will not be affected.

    An example use may be to ensure that statements are executed in an expected order, when
    their contributions were generated in a nondeterministic fashion.

    This is a utility method:  see {@link #getGenerationOrder()} and {@link #setGenerationOrder(SourceAtom[])}
    for fully generic reordering.
    @param contribs a subset of contributions in the desired order
    @throws IllegalArgumentException if contributions are children of this location

    @type contribs: list
    '''
    pass


  def reorderLocations(self, locations):
    '''
    Modify the order in which the given child locations are (re-)generated.

    The array may be partial: the order of other locations and contributions will not be affected.  

    An example use is to ensure that declarations of identifiers precede their usage.   

    This is a utility method:  see {@link #getGenerationOrder()} and {@link #setGenerationOrder(SourceAtom[])}
    for fully generic reordering.
    @param locations a subset of child locations in the desired order
    @throws IllegalArgumentException if child locations are not direct children of this location

    @type locations: list
    '''
    pass


  def setAnchor(self, anchor):
    '''
    Set the anchor at which this location lives in its parent
    @param anchor or None

    @type anchor: str
    '''
    pass


  def setDividerAdded(self, addDivider
  ):
    '''
    If True, whitespace will be added after the location's text,
    to separate it from the next.
    @param addDivider

    @type addDivider
    : bool
    '''
    pass


  def setGenerationOrder(self, order):
    '''
    Set the order in which contributions and locations are (re-)generated.
    @param order array of Atoms, never None, whose elements must match
    the original from {@link #getGenerationOrder()}.

    @type order: list
    '''
    pass


  def setIndentDelta(self, _int):
    '''
    Set indentation delta
    '''
    pass


  def accept(self, visitor, inOrder):
    '''
    Visit this location and its children in order.
    @param visitor a visitor for all instances of ILocation
    @param inOrder if True, order nodes in actual source order (leaving new nodes at the end), else, present raw #getChildren() order

    @type visitor: com_silabs_ss_framework_sourcegen_api_core_ILocationVisitor
    @type inOrder: bool
    '''
    pass


  def setOwned(self, _bool):
    '''
    Tell whether this location is "owned" or not.

    If owned, its contents are cleared before applying contributions. This
    location is the root of the area to clean. This and all its children will
    be removed if existing. When creating the location, its contents are
    emitted surrounded by a comment indicating the user should not modify the
    source.

    Otherwise, if not owned, the location is created and its
    contributions applied only when it doesn't exist.  No comment
    is emitted.
    '''
    pass


  def setToDefine(self, _bool):
    pass


  def findChild(self, _str):
    '''
    Find a child location by its path segment
    @see #getPathSegment()
    '''
    return com_silabs_ss_framework_sourcegen_api_core_ILocationContainer()


class com_silabs_ss_framework_sourcegen_api_core_ILocationContainer(com_silabs_ss_platform_api_content_core_IParentable):
  '''
  This is a container of other locations, organized as a 
  hierarchical tree.  Every node in a location has either
  another location as its parent, or None, if it
  is the root.   
   *
  '''
  def init(self):
    self.fileLocation = self.getFileLocation()

    self.path = self.getPath()

    self.pathSegment = self.getPathSegment()

    self.relativePathToFile = self.getRelativePathToFile()

    self.sourceName = self.getSourceName()

    self.children = self.getChildren()

  def addChildLocation(self, _com_silabs_ss_framework_sourcegen_api_core_ILocationContainer):
    '''
    Add a child location
    @return True if location is new (note: most locations are automatically added to their parents)
    @throws IllegalArgumentException if location has a parent or is already
    in this list
    '''
    return bool()


  def isDefinedInTree(self):
    '''
    @return 
    '''
    return bool()


  def isOwned(self):
    '''
    Tell whether this location is "owned" or not.

    If owned, its contents are cleared before applying contributions. This
    location is the root of the area to clean. This and all its children will
    be removed if existing. When creating the location, its contents are
    emitted surrounded by a comment indicating the user should not modify the
    source.

    Otherwise, if not owned, the location is created and its
    contributions applied only when it doesn't exist.  No comment
    is emitted.
    '''
    return bool()


  def isToDefine(self):
    '''
    Tell whether the location should be defined whether or not
    any contributions appear
    @return 
    '''
    return bool()


  def getFileLocation(self):
    '''
    Get the containing file location
    @return file location, or receiver for instances of {@link IFileLocation}, or None
    for the root location
    '''
    return com_silabs_ss_framework_sourcegen_api_core_IFileLocation()


  def findChild(self, _str):
    '''
    Find a child location by its path segment
    @see #getPathSegment()
    '''
    return com_silabs_ss_framework_sourcegen_api_core_ILocationContainer()


  def getParent(self):
    '''
    Get the parent
    @return parent object, or None
    '''
    return object()


  def getPath(self):
    '''
    Get the absolute location path (root down to the receiver)
    '''
    return str()


  def getPathSegment(self):
    '''
    Get the path segment for this location relative to its parent.
    @return location name
    '''
    return str()


  def getRelativePathToFile(self):
    '''
    Get the location path relative to its nearest {@link IFileLocation}.
    '''
    return str()


  def getSourceName(self):
    '''
    Get the name of the location as it appears in source
    @return 
    '''
    return str()


  def getChildren(self):
    '''
    Get child locations contained within this one
    @return collection of ILocation (unmodifiable)
    '''
    return list()


  def accept(self, visitor, inOrder):
    '''
    Visit this location and its children in order.
    @param visitor a visitor for all instances of ILocation
    @param inOrder if True, order nodes in actual source order (leaving new nodes at the end), else, present raw #getChildren() order

    @type visitor: com_silabs_ss_framework_sourcegen_api_core_ILocationVisitor
    @type inOrder: bool
    '''
    pass


  def setOwned(self, _bool):
    '''
    Tell whether this location is "owned" or not.

    If owned, its contents are cleared before applying contributions. This
    location is the root of the area to clean. This and all its children will
    be removed if existing. When creating the location, its contents are
    emitted surrounded by a comment indicating the user should not modify the
    source.

    Otherwise, if not owned, the location is created and its
    contributions applied only when it doesn't exist.  No comment
    is emitted.
    '''
    pass


  def setToDefine(self, _bool):
    pass


class com_silabs_ss_framework_sourcegen_api_core_ILocationProvider(object):
  '''
  Instances of this interface provide {@link ILocation}s for sources of a given
  language, esp. in the context of a source generation session.
  '''
  def init(self):
    self.rootLocation = self.getRootLocation()

    self.session = self.getSession()

    self.sourceRoot = self.getSourceRoot()

  def getFileLocation(self, file, language):
    '''
    Find or create a location for the given file.  The actual
    file or its parents need not exist yet.
    @param file a file
    @param language the source language
    @type file: java_io_File
    @type language: com_silabs_ss_framework_sourcegen_api_core_ISourceLanguage
    @return location
    @throws SourceGenException
    '''
    return com_silabs_ss_framework_sourcegen_api_core_IFileLocation()


  def getFileLocation(self, file, language):
    '''
    Find or create a location for the given file.  The actual
    file or its parents need not exist yet.
    @param file a file
    @param language the source language
    @type file: org_eclipse_core_runtime_IPath
    @type language: com_silabs_ss_framework_sourcegen_api_core_ISourceLanguage
    @return location
    @throws SourceGenException
    '''
    return com_silabs_ss_framework_sourcegen_api_core_IFileLocation()


  def getLocation(self, parent, path):
    '''
    Find or create a location inside the given location.  The location may
    be at an arbitrary depth from the parent.
    @param parent the parent location
    @param path location path relative to parent (zero or more slash-separated segments)
    @type parent: com_silabs_ss_framework_sourcegen_api_core_ILocationContainer
    @type path: str
    @return location
    @throws SourceGenException
    '''
    return com_silabs_ss_framework_sourcegen_api_core_ILocationContainer()


  def getRootLocation(self):
    '''
    @return 
    '''
    return com_silabs_ss_framework_sourcegen_api_core_ILocationContainer()


  def getSession(self):
    '''
    Get the sourcegen session owning this provider.
    '''
    return com_silabs_ss_framework_sourcegen_api_core_ISourceGenSession()


  def getSourceRoot(self):
    '''
    Set the root URI for generated source for dir() or file()
    regions that are not absolute.
    @eeturn sourceRoot
    '''
    return java_net_URI()


  def setSourceRoot(self, sourceRoot
  ):
    '''
    Set the root URI for generated source for dir() or file()
    regions that are not absolute.
    @param sourceRoot

    @type sourceRoot
    : java_net_URI
    '''
    pass


class com_silabs_ss_framework_sourcegen_api_core_ILocationVisitor(object):
  '''
  Visitor for a location tree.

  Call pattern is:

  * #enter(&lt;root&gt;)

  * #visit(child1) ...

  * #visit(child2) ...

  * #exit(&lt;root&gt;)

   *
  '''
  def enter(self, location):
    '''
    Called when entering a location.
    @param location
    @type location: com_silabs_ss_framework_sourcegen_api_core_ILocationContainer
    @return True to descend, False to skip
    '''
    return bool()


  def visit(self, location):
    '''
    Called for each child location.
    @param location
    @type location: com_silabs_ss_framework_sourcegen_api_core_ILocationContainer
    @return True to visit other children, False to stop child scan
    '''
    return bool()


  def exit(self, location
  ):
    '''
    Called when exiting a location.
    @param location

    @type location
    : com_silabs_ss_framework_sourcegen_api_core_ILocationContainer
    '''
    pass


class com_silabs_ss_framework_sourcegen_api_core_ISourceGenManager(object):
  '''
  This interface manages the source generation engine.
   *
  '''
  def init(self):
    self.allSourceLanguages = self.getAllSourceLanguages()

    self.sourceMappingProvider = self.getSourceMappingProvider()

  CPP_LANGUAGE_ID = str
  '''
  '''

  INSTANCE = com_silabs_ss_framework_sourcegen_api_core_ISourceGenManager
  '''
  '''

  def createSourceGenSession(self):
    '''
    Create a session for the manipulation of a set of sources.
    @return new session
    '''
    return com_silabs_ss_framework_sourcegen_api_core_ISourceGenSession()


  def findSourceLanguage(self, id):
    '''
    Find the registered source language with the given ID
    @param id the identifier for the language
    @type id: str
    @return language or None
    '''
    return com_silabs_ss_framework_sourcegen_api_core_ISourceLanguage()


  def getAllSourceLanguages(self):
    '''
    Get all the registered source languages
    @return non-None array of languages
    '''
    return list()


  def createSourceMappingEngine(self, modelProvider, session):
    '''
    Create an engine for using source mapping.
    The engine may be used alongside other changes made directly 
    against the session.
    @param modelProvider provider for name to model mapping
    @param session the sourcegen session in which to operate
    @type modelProvider: com_silabs_ss_framework_sourcegen_api_mapping_IMappingModelProvider
    @type session: com_silabs_ss_framework_sourcegen_api_core_ISourceGenSession
    @return new engine working against a session
    '''
    return com_silabs_ss_framework_sourcegen_api_mapping_IMappingEngine()


  def createSourceMappingProvider(self):
    '''
    Create a transient source mapping provider, which tracks
    loaded source mappings.  When using this, all mappings
    will be reloaded from disk.
    @return provider, never None
    '''
    return com_silabs_ss_framework_sourcegen_api_mapping_IMappingProvider()


  def getSourceMappingProvider(self):
    '''
    Get the global source mapping provider, which tracks
    loaded source mappings.  This caches mappings for
    the duration of the session.
    @return provider, never None
    '''
    return com_silabs_ss_framework_sourcegen_api_mapping_IMappingProvider()


class com_silabs_ss_framework_sourcegen_api_core_ISourceGenSession(object):
  '''
  This interface controls a session where a set of sources may
  be modified in a group.

  The session may be used in a blind manner:  the client can use
  the location provider and #createContribution() to generate the full
  set of contributions that would produce the desired generated
  program.  Then, #generateContributionEdits() will filter out 
  contributions that are not needed (e.g. due to their locations already
  existing and/or being non-owned).

  A client may also perform incremental work by checking the state of
  locations, only adding contributions if they are missing.
   *
  '''
  def init(self):
    self.documentManager = self.getDocumentManager()

    self.rootLocation = self.getRootLocation()

    self.locationProvider = self.getLocationProvider()

    self.indentString = self.getIndentString()

  def createContribution(self, loc):
    '''
    Create a contribution object for the given location.
    The contribution must still be added to the location.

    This is text that is written to a location when it is regenerated.
    Owned locations are always regenerated.
    @param loc the location
    @type loc: com_silabs_ss_framework_sourcegen_api_core_ILocation
    @return new contribution
    '''
    return com_silabs_ss_framework_sourcegen_api_core_IContribution()


  def createDefiningContribution(self, loc):
    '''
    Create a defining contribution object for the given location.
    The contribution must still be added to the location.

    This is text that is written to make a location exist when it
    is missing (for example, the empty body of a function) or
    regenerated (for owned locations).
    @param loc the lcoation
    @type loc: com_silabs_ss_framework_sourcegen_api_core_ILocation
    @return new contribution
    '''
    return com_silabs_ss_framework_sourcegen_api_core_IContribution()


  def getDocumentManager(self):
    '''
    Get the document manager
    '''
    return com_silabs_ss_framework_sourcegen_api_core_IDocumentManager()


  def getRootLocation(self):
    '''
    Get the root location container, aggregating all the files
    in this session.
    @return container, never None
    '''
    return com_silabs_ss_framework_sourcegen_api_core_ILocationContainer()


  def getLocationProvider(self):
    '''
    Get the location provider, which maintains a unified
    tree of locations as they are requested.
    @return provider, never None
    '''
    return com_silabs_ss_framework_sourcegen_api_core_ILocationProvider()


  def createOwnedRegionComment(self, loc, isOpen):
    '''
    Create the comment that demarcates an owned region, using the comments
    set by {@link #setOwnedRegionCommentPattern(str, boolean)}
    @param loc the location
    @param isOpen True for the opening comment, False for the closing comment
    @type loc: com_silabs_ss_framework_sourcegen_api_core_ILocation
    @type isOpen: bool
    @return a string of text
    '''
    return str()


  def getIndentString(self):
    '''
    Get the indentation string which is used to indent
    contributions inside nested locations.  This string
    is multiplied by the indent level.
    @return current indent string
    '''
    return str()


  def getOwnedRegionCommentPattern(self, isOpen):
    '''
    Get the pattern for the region comments
    @param isOpen True for the opening comment, False for the closing comment
    @type isOpen: bool
    @return pattern which includes comment punctuation and '$(token)'
    '''
    return str()


  def generateContributionEdits(self):
    '''
    Generate the edits that would apply the current set of contributions to
    the current persisted content of the file locations under the root.

    The location tree is expected to be populated with the complete set
    of contributions that would take an empty project to its fully generated
    state.  

    	The location tree from {@link #getRootLocation()} down to leaf nodes is 
    compared against the persisted text for each file referenced.

    	If a file does not exist, it is treated as if it were empty.

    	For each file, the locations inside it are located in its contents.

    	If an owned region is deleted but no location defines it any more, 
    its contents and comments are deleted.

    	If a location exists and is owned, then its contents are removed and the
    location is considered not to exist.

    	If a location does not exist, its defining contributions are applied.

    	For each contribution associated with that location, 
    if it is not filtered out by the location ({link ILocation#getContributionFilter()},
    then it is applied in order to the end of the location's current span of text.

    @return a map of files to the {@link TextEdit}s describing the unified set of changes
    to that file
    '''
    return java_util_Map()


  def generateFormattingEdits(self, _java_net_URI, _list):
    '''
    Generate the edits that will format the files for some collection of file locations
    @return a map of files to the {@link TextEdit}s describing the unified set of changes
    to that file
    '''
    return java_util_Map()


  def scanOwnedRegions(self, text):
    '''
    Scan the given text for all the identified owned regions
    @param text
    @type text: str
    @return array of region spans (which may be nested)
    '''
    return list()


  def refreshLocations(self):
    '''
    Refresh locations after backing files are modified.
    '''
    pass


  def saveDocuments(self, sourceRoot, _java_util_Map):
    '''
    Save the source files modified by the edits.
    @param sourceRoot root directory for files (if no absolute path specified)
    @see #generateContributionEdits()

    @type sourceRoot: java_net_URI
    '''
    pass


  def setDocumentManager(self, _com_silabs_ss_framework_sourcegen_api_core_IDocumentManager):
    '''
    Set the document manager
    '''
    pass


  def setIndentString(self, string
  ):
    '''
    Set the indentation string which is used to indent
    contributions inside nested locations.  This string
    is multiplied by the indent level.
    @param string

    @type string
    : str
    '''
    pass


  def setOwnedRegionCommentPattern(self, pattern, isOpen):
    '''
    Set the pattern for the region comments
    @param pattern the pattern which must include comment punctuation and '$(token)'
    @param isOpen True for the opening comment, False for the closing comment

    @type pattern: str
    @type isOpen: bool
    '''
    pass


class com_silabs_ss_framework_sourcegen_api_core_ISourceLanguage(com_silabs_ss_platform_api_content_core_IDescribable):
  '''
  This interface defines the language-specific behavior for certain 
  source generation operations.
   *
  '''
  def init(self):
    self.indentString = self.getIndentString()

  def allowsEmptyDefinition(self, loc):
    '''
    Tell whether the location (type) can be empty
    @param loc
    @type loc: com_silabs_ss_framework_sourcegen_api_core_ILocation
    @return True if empty is allowed
    '''
    return bool()


  def supportsFileType(self, type):
    '''
    Tell whether the language supports the given file type
    @param type type identifier from the file(...:[type]) location
    @type type: str
    @return True if supports
    '''
    return bool()


  def equals(self, _object):
    '''
    Returns True if the {@code obj} has the same class and the same id.
    @see object#equals(object)
    '''
    return bool()


  def hashCode(self):
    '''
    Returns the hash code of the receiver's id.
    @see object#hashCode()
    '''
    return int()


  def bitmaskCombineArguments(self, first, second):
    '''
    Combine two arguments with logical OR
    @param first
    @param second
    @type first: str
    @type second: str
    @return combined first and second
    '''
    return str()


  def decodeFunctionSignaturePath(self, signature):
    '''
    Decode the signature from a full function signature into a location path
    @param signature
    @type signature: str
    @return the location path
    @throws SourceGenException for parse error
    '''
    return str()


  def generateFunctionCall(self, call):
    '''
    Generate a call to the given function
    @param call
    @type call: com_silabs_ss_framework_sourcegen_api_core_IFunctionCallInfo
    @return the source text for the call
    '''
    return str()


  def generateFunctionDefinitionFooter(self, footerComment):
    '''
    Generate the string for the footer of a function (final comment
    and closing syntax)
    @param footerComment
    @type footerComment: str
    @return the source text
    '''
    return str()


  def generateFunctionDefinitionHeader(self, comment, visibility, signature, headerComment):
    '''
    Generate the string for the header of a function (leading comment,
    prototype, body comment)
    @param comment
    @param visibility
    @param signature
    @param headerComment
    @type comment: str
    @type visibility: str
    @type signature: str
    @type headerComment: str
    @return the source text
    '''
    return str()


  def generateFunctionPrototype(self, comment, visibility, signature):
    '''
    Create a prototype (e.g. for &lt;declareFunctionLocation&gt;)
    @param comment
    @param visibility
    @param signature
    @type comment: str
    @type visibility: str
    @type signature: str
    @return the source text
    '''
    return str()


  def generateUpdateBitfield(self, updateInfo):
    '''
    Generate the reset(s)/set(s) for the given bitfields
    @param updateInfo
    @type updateInfo: com_silabs_ss_framework_sourcegen_api_core_IUpdateBitfieldInfo
    @return the source text for the call
    '''
    return str()


  def getIndentString(self):
    '''
    Get the indentation string for the language (according to its settings)
    @return the string (for one indent level)
    '''
    return str()


  def getDescription(self):
    '''
    Human-readable description of the value for UI.

    This description is interpreted as HTML.

    @return description, never None (but may be blank)
    '''
    return str()


  def getId(self):
    '''
    The fully qualified identifer for this entity, including the ids of its parents, up to an implementation-defined root.
    '''
    return str()


  def getLabel(self):
    '''
    The label for the item, displayed in UI.
    @return label, never None
    '''
    return str()


  def getName(self):
    '''
    The unique name for this item within its parent.   See {@link #getId()} for the full unique identifier.
    '''
    return str()


  def toString(self):
    '''
    Return the id and label.
    @return str
    '''
    return str()


  def getSourceCodeFormatEdit(self, sourceRoot, fileLocation):
    '''
    Return a TextEdit for formatting the document at the file location
    @param sourceRoot
    @param fileLocation
    @type sourceRoot: java_net_URI
    @type fileLocation: com_silabs_ss_framework_sourcegen_api_core_IFileLocation
    @return the TextEdit or None
    @throws CoreException for bad locations or formatting errors
    '''
    return org_eclipse_text_edits_TextEdit()


class com_silabs_ss_framework_sourcegen_api_core_ISourceMappingContext(object):
  def init(self):
    self.session = self.getSession()

    self.currentLocation = self.getCurrentLocation()

    self.modelProvider = self.getModelProvider()

    self.scope = self.getScope()

    self.currentObject = self.getCurrentObject()

    self.previousObject = self.getPreviousObject()

  ATTR_ANCHOR = str
  '''
  Specify the anchor on the parent location where this location should be placed.
  This only applies if ATTR_PARENT is already an object. 

  type: string

  see &lt;declareLocation#anchor&gt;
  @see ISourceMappingContext#declareLocation(Map)
  @see ISourceMappingContext#declareFunctionLocation(Map)

  @value "anchor"
  '''

  ATTR_BODY_ANCHOR = str
  '''
  The name of the anchor to place inside the function body.
  This allows you to make new locations there via {@link #ATTR_ANCHOR}.

  As opposed to XML source mapping, there is no way to
  have contributions or locations "contained" in a call to
  #declareFunctionLocation(Map), thus, locations must be
  serially generated.  

  type: string

  see &lt;declareFunctionLocation#prototypeLocation&gt;
  @see ISourceMappingContext#declareFunctionLocation(Map)

  @value "bodyAnchor"
  '''

  ATTR_DEFINE = str
  '''
  Tell whether the location is marked defined or not.

  type: boolean

  see &lt;declareLocation#define&gt;
  @see ISourceMappingContext#declareLocation(Map)
  @see ISourceMappingContext#declareFunctionLocation(Map)

  @value "define"
  '''

  ATTR_INDENT = str
  '''
  Adjust indentation on contributions in the location

  type: int

  see &lt;declareLocation#indent&gt;
  @see ISourceMappingContext#declareLocation(Map)
  @see ISourceMappingContext#declareFunctionLocation(Map)

  @value "indent"
  '''

  ATTR_NAME = str
  '''
  Specify the new location's name.

  type: string

  see &lt;declareLocation#name&gt;
  @see ISourceMappingContext#declareLocation(Map)
  @see ISourceMappingContext#declareFunctionLocation(Map)

  @value "name"
  '''

  ATTR_OWNED = str
  '''
  Tell whether the location is marked owned or not.

  type: boolean

  see &lt;declareLocation#owned&gt;
  @see ISourceMappingContext#declareLocation(Map)
  @see ISourceMappingContext#declareFunctionLocation(Map)

  @value "owned"
  '''

  ATTR_PACKED = str
  '''
  Tell whether the newlines around the contributions are packed or not.

  see &lt;declareLocation#packed&gt;
  @see ISourceMappingContext#declareLocation(Map)
  @see ISourceMappingContext#declareFunctionLocation(Map)

  @value "packed"
  '''

  ATTR_PARENT = str
  '''
  Specify the parent location.
  If a string, it may specify an anchor via the "@anchor" suffix. 

  type: string, ILocation, IMappingLocation

  see &lt;declareLocation#parent&gt;
  @see ISourceMappingContext#declareLocation(Map)

  @value "parent"
  '''

  ATTR_PATH = str
  '''
  Specify the location path relative to the parent location. 

  type: string

  see &lt;declareLocation#path&gt;
  @see ISourceMappingContext#declareLocation(Map)

  @value "path"
  '''

  ATTR_PROTO_LOCATION = str
  '''
  The location for the prototype 

  type: string, ILocation, IMappingLocation

  see &lt;declareFunctionLocation#prototypeLocation&gt;
  @see ISourceMappingContext#declareFunctionLocation(Map)

  @value "protoLocation"
  '''

  ATTR_SCOPE = str
  '''
  Specify the IMappingScope into which the new location will be registered.

  type: IMappingScope; default: scope.parent

  @see ISourceMappingContext#declareLocation(Map)
  @see ISourceMappingContext#declareFunctionLocation(Map)

  @value "scope"
  '''

  ATTR_SIGNATURE = str
  '''
  The function signature (for {@link #declareFunctionLocation(Map)})

  type: string

  see &lt;declareFunctionLocation#signature&gt;
  @see ISourceMappingContext#declareFunctionLocation(Map)

  @value "signature"
  '''

  def addContribution(self, _com_silabs_ss_framework_sourcegen_api_mapping_IMappingLocation, _str):
    '''
    Add a contribution for the given location with the given text.
    This is a convenience for #getSession().createContribution(location.getLocation()) 
    followed by location.getLocation().addContribution(contrib);
    '''
    return com_silabs_ss_framework_sourcegen_api_core_IContribution()


  def addDefiningContribution(self, _com_silabs_ss_framework_sourcegen_api_mapping_IMappingLocation, _str):
    '''
    Add a contribution for the given location with the given text.
    This kind of contribution is only emitted when a location is first created in source.
    This is a convenience for #getSession().createDefiningContribution(location.getLocation()) 
    followed by location.getLocation().addContribution(contrib);
    '''
    return com_silabs_ss_framework_sourcegen_api_core_IContribution()


  def getSession(self):
    '''
    Get the active sourcegen session.  This allows low-level
    access to the sourcegen engine, below the level of mapping.
    @return session
    '''
    return com_silabs_ss_framework_sourcegen_api_core_ISourceGenSession()


  def declareFunctionLocation(self, attrs):
    '''
    Declare a function location (may or may not already exist).

    For a newly created location, the script variant always creates an anchor
    called "body" for use in declaring contained locations inside the function body.
    @param attrs a map of ATTR_... to values
    @type attrs: java_util_Map
    @return existing or newly declared IMappingLocation
    @throws CoreException if location could not be declared
    '''
    return com_silabs_ss_framework_sourcegen_api_mapping_IMappingLocation()


  def declareLocation(self, attrs):
    '''
    Declare a location (may or may not already exist).
    @param attrs a map of ATTR_... to values
    @type attrs: java_util_Map
    @return existing or newly declared IMappingLocation
    @throws CoreException if location could not be declared
    '''
    return com_silabs_ss_framework_sourcegen_api_mapping_IMappingLocation()


  def getCurrentLocation(self):
    '''
    Get the current location
    '''
    return com_silabs_ss_framework_sourcegen_api_mapping_IMappingLocation()


  def getModelProvider(self):
    '''
    Get the mapping model provider, allowing mapping names to
    objects in the model, as well as discovering structure in
    the model.
    @return model provider
    '''
    return com_silabs_ss_framework_sourcegen_api_mapping_IMappingModelProvider()


  def getScope(self):
    '''
    Get the current source mapping scope
    @return current source mapping scope (never None)
    '''
    return com_silabs_ss_framework_sourcegen_api_mapping_IMappingScope()


  def popScope(self):
    '''
    Pop a mapping scope.
    @return the parent mapping scope (now current)
    '''
    return com_silabs_ss_framework_sourcegen_api_mapping_IMappingScope()


  def pushScope(self, variables):
    '''
    Push a new mapping scope.  You must pop this before returning.
    @param variables optional map of new varialbes
    @type variables: java_util_Map
    @return new {@link IMappingScope}
    '''
    return com_silabs_ss_framework_sourcegen_api_mapping_IMappingScope()


  def getCurrentObject(self):
    '''
    Get the current object.

    This comes from the current scope's {@link MappingConstants#VARIABLE_OBJECT}
    and extracts the {@link IobjectReferenceMapping#getobject()} if the object is a reference mapping.
    @return current object, never None
    '''
    return object()


  def getCurrentProperty(self, propName):
    '''
    Get the current value of the given property in the current object.

    This comes from the current scope's {@link MappingConstants#VARIABLE_OBJECT}
    and fetches the given property.
    @param propName property to query
    @type propName: str
    @return property value or None
    '''
    return object()


  def getPreviousObject(self):
    '''
    Get the "previous" object.

    This comes from the current scope's {@link MappingConstants#VARIABLE_OBJECT}
    and extracts the {@link IobjectReferenceMapping#getPreviousobject()} if the object is a reference mapping.
    If the object is not a reference mapping, or the previous value is not set, returns None.
    @return None if the previous state was undefined, or the value in the previous state
    '''
    return object()


  def getPreviousProperty(self, propName):
    '''
    Get the previous value of the given property in the current object, if meaningful.

    This comes from the current scope's {@link MappingConstants#VARIABLE_OBJECT}
    and fetches from {@link IobjectReferenceMapping#getPreviousValue(str)} if the object is a reference mapping.
    @param propName property to query
    @type propName: str
    @return None if the previous state was undefined, or the value in the previous state
    '''
    return object()


  def expandText(self, template):
    '''
    Expand a string with the given map of variables (which may be empty).
    These variables as well as the variables visible from the scope
    will be applied.
    @param template string with "$(...)" references
    @type template: str
    @return expanded string; diagnostics issued as side effect for undefined variables
    '''
    return str()


  def callMappingGroup(self, name):
    '''
    Call a mapping group from script.
    @param name mapping group name, finding the nearest enclosing scope as in &lt;callMappingGroup&gt;

    @type name: str
    '''
    pass


  def callMappingGroup(self, name, _java_util_Map):
    '''
    Call a mapping group from script.
    @param name mapping group name, finding the nearest enclosing scope as in &lt;callMappingGroup&gt;

    @type name: str
    '''
    pass


class com_silabs_ss_framework_sourcegen_api_core_IUpdateBitfieldInfo(object):
  '''
  This represents the in-progress construction of a bitfield modification
  operation for a given mapping scope.
   *
  '''
  def init(self):
    self.target = self.getTarget()

    self.assigns = self.getAssigns()

    self.resets = self.getResets()

    self.sets = self.getSets()

  def getTarget(self):
    '''
    Get the variable, field, etc. that is being modified.
    @return target
    '''
    return str()


  def getAssigns(self):
    return list()


  def getResets(self):
    return list()


  def getSets(self):
    return list()


  def addAssign(self, shiftLeft, value):
    '''
    Add an assign mask (target = value &lt;&lt; shiftCount).
    @param shiftLeft left-shift bit count
    @param value value to set (e.g. "0x52")

    @type shiftLeft: int
    @type value: str
    '''
    pass


  def addReset(self, shiftLeft, value):
    '''
    Add a reset mask (target &= ~value).
    @param shiftLeft left-shift bit count
    @param value value to reset (e.g. "0x50")

    @type shiftLeft: int
    @type value: str
    '''
    pass


  def addSet(self, shiftLeft, value):
    '''
    Add a set mask (target |= value).
    @param shiftLeft left-shift bit count
    @param value value to set (e.g. "0x52")

    @type shiftLeft: int
    @type value: str
    '''
    pass


class com_silabs_ss_framework_sourcegen_api_core_IUriLocation(com_silabs_ss_framework_sourcegen_api_core_ILocationContainer):
  '''
  *
  '''
  def init(self):
    self.lastURISegment = self.getLastURISegment()

    self.uRI = self.getURI()

  def addChildLocation(self, _com_silabs_ss_framework_sourcegen_api_core_ILocationContainer):
    '''
    Add a child location
    @return True if location is new (note: most locations are automatically added to their parents)
    @throws IllegalArgumentException if location has a parent or is already
    in this list
    '''
    return bool()


  def isDefinedInTree(self):
    '''
    @return 
    '''
    return bool()


  def isOwned(self):
    '''
    Tell whether this location is "owned" or not.

    If owned, its contents are cleared before applying contributions. This
    location is the root of the area to clean. This and all its children will
    be removed if existing. When creating the location, its contents are
    emitted surrounded by a comment indicating the user should not modify the
    source.

    Otherwise, if not owned, the location is created and its
    contributions applied only when it doesn't exist.  No comment
    is emitted.
    '''
    return bool()


  def isToDefine(self):
    '''
    Tell whether the location should be defined whether or not
    any contributions appear
    @return 
    '''
    return bool()


  def getFileLocation(self):
    '''
    Get the containing file location
    @return file location, or receiver for instances of {@link IFileLocation}, or None
    for the root location
    '''
    return com_silabs_ss_framework_sourcegen_api_core_IFileLocation()


  def findChild(self, _str):
    '''
    Find a child location by its path segment
    @see #getPathSegment()
    '''
    return com_silabs_ss_framework_sourcegen_api_core_ILocationContainer()


  def getParent(self):
    '''
    Get the parent
    @return parent object, or None
    '''
    return object()


  def getPath(self):
    '''
    Get the absolute location path (root down to the receiver)
    '''
    return str()


  def getPathSegment(self):
    '''
    Get the path segment for this location relative to its parent.
    @return location name
    '''
    return str()


  def getRelativePathToFile(self):
    '''
    Get the location path relative to its nearest {@link IFileLocation}.
    '''
    return str()


  def getSourceName(self):
    '''
    Get the name of the location as it appears in source
    @return 
    '''
    return str()


  def getLastURISegment(self):
    '''
    Get the final segment of the URI (e.g. directory or file name)
    '''
    return str()


  def getURI(self):
    '''
    Get the URI of the location.  It or its parents
    may not necessarily exist yet.

    This must be an absolute URI in a scheme resolvable
    to 'file', but is expected to be e.g. 'platform:/resource/project/...'
    in practice.  It will be resolved by {@link FileLocator} before
    use.
    @return URI, never None
    '''
    return java_net_URI()


  def getChildren(self):
    '''
    Get child locations contained within this one
    @return collection of ILocation (unmodifiable)
    '''
    return list()


  def accept(self, visitor, inOrder):
    '''
    Visit this location and its children in order.
    @param visitor a visitor for all instances of ILocation
    @param inOrder if True, order nodes in actual source order (leaving new nodes at the end), else, present raw #getChildren() order

    @type visitor: com_silabs_ss_framework_sourcegen_api_core_ILocationVisitor
    @type inOrder: bool
    '''
    pass


  def setOwned(self, _bool):
    '''
    Tell whether this location is "owned" or not.

    If owned, its contents are cleared before applying contributions. This
    location is the root of the area to clean. This and all its children will
    be removed if existing. When creating the location, its contents are
    emitted surrounded by a comment indicating the user should not modify the
    source.

    Otherwise, if not owned, the location is created and its
    contributions applied only when it doesn't exist.  No comment
    is emitted.
    '''
    pass


  def setToDefine(self, _bool):
    pass


class com_silabs_ss_framework_sourcegen_api_core_SourceGenException(java_lang_Exception):
  serialVersionUID = int
  '''
  '''

class com_silabs_ss_framework_sourcegen_api_mapping_ICollatingSite(object):
  '''
  This represents a site which collates various mappings into
  one.  It exists during a mapping scope.
   *
  '''
  def init(self):
    self.contribution = self.getContribution()

    self.mapping = self.getMapping()

    self.scope = self.getScope()

  def getContribution(self):
    '''
    Get the contribution into which the site will go.
    @return 
    '''
    return com_silabs_ss_framework_sourcegen_api_core_IContribution()


  def getMapping(self):
    '''
    Get the mapping that triggered this site
    @return 
    '''
    return com_silabs_ss_framework_sourcegen_api_mapping_IMapping()


  def getScope(self):
    '''
    Get the scope owning this site.
    '''
    return com_silabs_ss_framework_sourcegen_api_mapping_IMappingScope()


class com_silabs_ss_framework_sourcegen_api_mapping_IFunctionCallSite(com_silabs_ss_framework_sourcegen_api_mapping_ICollatingSite):
  '''
  This represents a contribution which will eventually contain a 
  function call.  It exists during a mapping scope.
   *
  '''
  def init(self):
    self.callInfo = self.getCallInfo()

  def getContribution(self):
    '''
    Get the contribution into which the site will go.
    @return 
    '''
    return com_silabs_ss_framework_sourcegen_api_core_IContribution()


  def getCallInfo(self):
    '''
    Get the current layout of a function call
    @return 
    '''
    return com_silabs_ss_framework_sourcegen_api_core_IFunctionCallInfo()


  def getMapping(self):
    '''
    Get the mapping that triggered this site
    @return 
    '''
    return com_silabs_ss_framework_sourcegen_api_mapping_IMapping()


  def getScope(self):
    '''
    Get the scope owning this site.
    '''
    return com_silabs_ss_framework_sourcegen_api_mapping_IMappingScope()


class com_silabs_ss_framework_sourcegen_api_mapping_IMapping(org_eclipse_emf_ecore_EObject):
  '''
  This is the basis of a mapping from model to source.
  '''
  def init(self):
    self.summary = self.getSummary()

    self.xMLLocation = self.getXMLLocation()

    self.xMLURI = self.getXMLURI()

  def dump(self, _int):
    '''
    Dump the contents to a formatted string.
    '''
    return str()


  def getSummary(self):
    '''
    Get a summary for debugging
    '''
    return str()


  def getXMLLocation(self):
    '''
    Get the location of the mapping element on disk (human-readable)
    '''
    return str()


  def getXMLURI(self):
    '''
    Get the URI of the XML file containing the mapping element
    '''
    return java_net_URI()


  def setXMLLocation(self, _str):
    '''
    Set the location of the mapping element on disk (human-readable)
    '''
    pass


  def setXMLURI(self, _java_net_URI):
    '''
    Set the URI of the XML file containing the mapping element
    '''
    pass


class com_silabs_ss_framework_sourcegen_api_mapping_IMappingDiagnosticListener(object):
  '''
  Listener interface for diagnostics that occur during source mapping
   *
  '''
  def reportDiagnostic(self, _com_silabs_ss_framework_sourcegen_api_mapping_MappingDiagnostic):
    pass


class com_silabs_ss_framework_sourcegen_api_mapping_IMappingEngine(object):
  '''
  This interface allows using source mapping to drive source generation
  from a user model (tree of properties) to locations and contributions.
   *
  '''
  def init(self):
    self.session = self.getSession()

    self.globalMappingGroups = self.getGlobalMappingGroups()

    self.provider = self.getProvider()

  def getSession(self):
    '''
    Get the associated sourcegen session.
    '''
    return com_silabs_ss_framework_sourcegen_api_core_ISourceGenSession()


  def findGlobalMappingGroup(self, name):
    '''
    Find the registered group with the given name
    @param name group's name
    @type name: str
    @return group or None
    '''
    return com_silabs_ss_framework_sourcegen_api_mapping_IMappingGroup()


  def getGlobalMappingGroups(self):
    '''
    Get all the mapping groups registered
    @return non-None array
    '''
    return list()


  def getProvider(self):
    '''
    Get the associated source mapping provider.
    '''
    return com_silabs_ss_framework_sourcegen_api_mapping_IMappingProvider()


  def invokeMappings(self, group, root, globalObjects):
    '''
    Invoke a mapping group against the given model, applying all its operations,
    and updating the sourcegen session.
    @param group the group to invoke
    @param root the root object or None for the single modelProvider's root
    @param globalobjects initially set objects available to every mapping group (objects
    of type {@link IMappingLocation}, {@link ScriptEngineContext}, {@link DefineFunctionCallPattern}
    are handled specially; all others become variables).
    @type group: com_silabs_ss_framework_sourcegen_api_mapping_IMappingGroup
    @type root: object
    @type globalobjects: java_util_Map
    @return the scope upon return
    '''
    return com_silabs_ss_framework_sourcegen_api_mapping_IMappingScope()


  def newMappingDiagnostic(self, mapping, severity, msg):
    '''
    Create a diagnostic
    @param mapping the offending element
    @param severity one of {@link IStatus#ERROR}, {@link IStatus#WARNING}, {@link IStatus#INFO}
    @param msg text of the message
    @type mapping: com_silabs_ss_framework_sourcegen_api_mapping_IMapping
    @type severity: int
    @type msg: str
    @return new diagnostic
    '''
    return com_silabs_ss_framework_sourcegen_api_mapping_MappingDiagnostic()


  def expandText(self, mapping, value):
    '''
    Expand text from a string in a mapping element using the variables
    available from the current scope. 

    If any variables are not defined, issues diagnostics but leaves 
    the variable unexpanded in the result.
    @param mapping owning element, for diagnostic
    @param value the string to expand
    @type mapping: com_silabs_ss_framework_sourcegen_api_mapping_IMapping
    @type value: str
    @return the expanded string
    '''
    return str()


  def addDiagnosticListener(self, listener):
    '''
    Add a listener for diagnostics reported during mapping
    @param listener the listener, duplicates ignored

    @type listener: com_silabs_ss_framework_sourcegen_api_mapping_IMappingDiagnosticListener
    '''
    pass


  def fireDiagnostic(self, diag
  ):
    '''
    Fire a new diagnostic to registered listeners
    @param diag

    @type diag
    : com_silabs_ss_framework_sourcegen_api_mapping_MappingDiagnostic
    '''
    pass


  def registerGlobalMappingGroup(self, group):
    '''
    Include the mapping group within this engine.
    @param group a MappingGroup element
    @throws CoreException if global names conflict
    @see IMappingProvider#getSourceMapping(java.net.URI)

    @type group: com_silabs_ss_framework_sourcegen_api_mapping_IMappingGroup
    '''
    pass


  def registerGlobalMappingGroups(self, groups):
    '''
    Include the mapping groups within this engine.
    @param groups list of groups
    @throws CoreException if global names conflict
    @see IMappingProvider#getSourceMapping(java.net.URI)

    @type groups: list
    '''
    pass


  def removeDiagnosticListener(self, listener):
    '''
    Remove a listener for diagnostics reported during mapping
    @param listener the listener, missing ignored

    @type listener: com_silabs_ss_framework_sourcegen_api_mapping_IMappingDiagnosticListener
    '''
    pass


class com_silabs_ss_framework_sourcegen_api_mapping_IMappingGroup(object):
  '''
  This is the interface to the &lt;mappingGroup&gt; content in a *.srcmap file.
   *
  '''
  def init(self):
    self.name = self.getName()

  def getName(self):
    '''
    Get the group's name
    @return 
    '''
    return str()


class com_silabs_ss_framework_sourcegen_api_mapping_IMappingLocation(object):
  '''
  This wraps a source generator location for use by mapping, where the
  same physical location may have multiple identities throughout
  the mapping process.
   *
  '''
  def init(self):
    self.location = self.getLocation()

    self.parent = self.getParent()

    self.name = self.getName()

    self.childLocations = self.getChildLocations()

  def getLocation(self):
    '''
    Get the sourcegen location
    @return global location
    '''
    return com_silabs_ss_framework_sourcegen_api_core_ILocationContainer()


  def getParent(self):
    '''
    Get the parent mapping location
    '''
    return com_silabs_ss_framework_sourcegen_api_mapping_IMappingLocation()


  def getName(self):
    '''
    Get the location's name
    @return scoped moniker for location
    '''
    return str()


  def getChildLocations(self):
    '''
    Get the child locations by name
    '''
    return java_util_Map()


class com_silabs_ss_framework_sourcegen_api_mapping_IMappingModelProvider(object):
  def init(self):
    self.operatorHandler = self.getOperatorHandler()

    self.root = self.getRoot()

  CODE_NO_OBJECT = int
  '''
  Code from {@link #getValue(object, Map, Map)} indicating a particular object is undefined
  @value 1
  '''

  CODE_NO_PROPERTY = int
  '''
  Code from {@link #getValue(object, Map, Map)} indicating a particular property is undefined
  @value 2
  '''

  CODE_UNKNOWN_ATTRIBUTE = int
  '''
  Code from {@link #getValue(object, Map, Map)} indicating a particular attribute is undefined
  @value 3
  '''

  KIND_CHILDREN = str
  '''
  A collection kind denoting the children of an element
  @see #getCollection(object, str)
  @see #getChildren(object)

  @value "children"
  '''

  NAME_ROOT = str
  '''
  Stock name of root object
  @value "root"
  '''

  def objectsEqual(self, current, prev):
    '''
    Tell whether two objects from the model are considered equal.
    @param current
    @param prev
    @type current: object
    @type prev: object
    @return True if equal
    '''
    return bool()


  def getOperatorHandler(self):
    '''
    Get the operator handler, providing or extending operations applicable to
    objects in the model.
    '''
    return com_silabs_ss_platform_api_rcp_core_variables_IOperatorHandler()


  def getObject(self, root, name):
    '''
    Get the object with the given name
    @param root root object from which to start searching (optionally);
    should fall back to searching full namespace
    @param name object's name
    @type root: object
    @type name: str
    @return object, or None
    '''
    return object()


  def getRoot(self):
    '''
    Get the root element of the model
    @return root element, never None
    '''
    return object()


  def getValue(self, element, attrs, variables):
    '''
    Evaluate a value (as per the attributes to the 'with' element)
    @param element current object
    @param attrs (input) map of string to string
    @param variables (output) additional variables to define (e.g. a property ID, etc)
    @type element: object
    @type attrs: java_util_Map
    @type variables: java_util_Map
    @return the value
    @throws CoreException for errors encountered during resolution
    (including unrecognized attributes); use CODE_... enums to differentiate
    '''
    return object()


  def getChildren(self, element):
    '''
    Get the children of a given element.

    This is the same as {@link #getCollection(object, str)} with 
    {@value #KIND_CHILDREN} as the kind.
    @param element
    @type element: object
    @return array of children, or None for an element with no children
    '''
    return list()


  def getCollection(self, element, kind):
    '''
    Get the collection elements contained by a given element
    @param element
    @param kind the model-specific identifier for the collection
    @type element: object
    @type kind: str
    @return array of children, or None for an element with no such collection
    '''
    return list()


  def getName(self, _object):
    '''
    Get the name of an object.
    @return the name, for use by $(objectName)
    '''
    return str()


class com_silabs_ss_framework_sourcegen_api_mapping_IMappingProvider(object):
  '''
  This interface manages registration of source mappings for use
  by source mapping sessions.  In other words, it is a cache.
   *
  '''
  def init(self):
    self.globalMappingGroups = self.getGlobalMappingGroups()

  def getGlobalMappingGroups(self):
    '''
    Get the global mapping groups for the currently registered
    source mappings.
    '''
    return list()


  def getSourceMapping(self, srcgenURI):
    '''
    Find or load the source mapping from a *.srcmap file.  

    This fetches a previously loaded and registered instance,
    or loads and registers a new instance from disk.
    @param srcgenURI URI to *.srcmap file (see SourceMapping.xsd)
    @type srcgenURI: java_net_URI
    @return mapping
    @throws CoreException if file cannot be located or has validation errors
    '''
    return com_silabs_ss_framework_sourcegen_api_mapping_ISourceMapping()


  def loadSourceMapping(self, srcgenURI):
    '''
    Load a *.srcmap file.  It is not registered.
    @param srcgenURI URI to *.srcmap file (see SourceMapping.xsd)
    @type srcgenURI: java_net_URI
    @return the loaded mapping
    @throws CoreException if file cannot be located or has validation errors
    '''
    return com_silabs_ss_framework_sourcegen_api_mapping_ISourceMapping()


  def registerSourceMapping(self, srcgenURI, mapping):
    '''
    Register a *.srcmap file with the engine.  

    If the mapping is already registered, this replaces it.
    @param srcgenURI URI to *.srcmap file (see SourceMapping.xsd)
    @param mapping the loaded mapping
    @throws CoreException if file cannot be located or has validation errors

    @type srcgenURI: java_net_URI
    @type mapping: com_silabs_ss_framework_sourcegen_api_mapping_ISourceMapping
    '''
    pass


  def reset(self):
    '''
    Reset the provider, to clear its cache.
    '''
    pass


  def unregisterSourceMapping(self, srcgenURI):
    '''
    Unregister a *.srcmap file from the engine.
    @param srcgenURI URI to *.srcmap file (see SourceMapping.xsd)

    @type srcgenURI: java_net_URI
    '''
    pass


class com_silabs_ss_framework_sourcegen_api_mapping_IMappingScope(com_silabs_ss_platform_api_rcp_core_variables_IWritableVariableScope):
  '''
  This represents a single scope used by e.g. a mappingGroup. 
   *
  '''
  def init(self):
    self.mappingGroup = self.getMappingGroup()

    self.parent = self.getParent()

    self.label = self.getLabel()

    self.summary = self.getSummary()

    self.functionCallMap = self.getFunctionCallMap()

    self.functionCallPatterns = self.getFunctionCallPatterns()

    self.locationMap = self.getLocationMap()

    self.scriptMap = self.getScriptMap()

    self.updateBitfieldMap = self.getUpdateBitfieldMap()

    self.parent = self.getParent()

  def mergeName(self, scope, name, overwrite):
    '''
    Merge the variable or other entity with the given name from the given scope
    @param scope
    @param name
    @param overwrite if True, overwrite existing definitions
    @type scope: com_silabs_ss_framework_sourcegen_api_mapping_IMappingScope
    @type name: str
    @type overwrite: bool
    @return True if object found with this name
    '''
    return bool()


  def findOrCreateFunctionCall(self, location, funcName):
    '''
    Find or create a function call site for the given function call.

    If creating, uses the current function call pattern and defines
    a placeholder contribution.

    The site gathers changes for the given scope
    and are resolved once the scope is popped.
    @param location the location in which to write the function call contribution
    @param funcName name of the function being called

    @type location: com_silabs_ss_framework_sourcegen_api_mapping_IMappingLocation
    @type funcName: str
    '''
    return com_silabs_ss_framework_sourcegen_api_mapping_IFunctionCallSite()


  def getMappingGroup(self):
    '''
    Get the mapping that generated this scope
    @return group, never None
    @see AbstractMappingGroup
    '''
    return com_silabs_ss_framework_sourcegen_api_mapping_IMapping()


  def findLocation(self, name):
    '''
    Find the given named location in scope.
    @param name the location name
    @rturn location or None

    @type name: str
    '''
    return com_silabs_ss_framework_sourcegen_api_mapping_IMappingLocation()


  def getMappingLocation(self, loc):
    '''
    Get the mapping location for the given location in scope
    @param loc a global sourcegen location
    @type loc: com_silabs_ss_framework_sourcegen_api_core_ILocationContainer
    @return the scoped mapping location for that location
    '''
    return com_silabs_ss_framework_sourcegen_api_mapping_IMappingLocation()


  def findLocationsByPath(self, namePath):
    '''
    Find declared location(s) by name by searching, in each scope,
    whether a location at the given path is available in a declared location 
    of that scope.
    @param namePath the location name or name path (e.g. "myFunction/myRegion")
    @rturn non-None array of locations that match (either empty, 1 entry, or more for ambiguity)

    @type namePath: str
    '''
    return list()


  def getParent(self):
    '''
    Get the scope's parent (or None for the root level).
    When the receiver is popped, this value is the new current scope.
    '''
    return com_silabs_ss_framework_sourcegen_api_mapping_IMappingScope()


  def findOrCreateBitmaskApply(self, location, target):
    '''
    Create an update bitfield site. 

    The site gathers set, reset, and assign operations for a given expression
    and generates source text once the scope is popped.
    @param location the location in which to write the bitmask expression
    @param target the expression being modified

    @type location: com_silabs_ss_framework_sourcegen_api_mapping_IMappingLocation
    @type target: str
    '''
    return com_silabs_ss_framework_sourcegen_api_mapping_IUpdateBitfieldSite()


  def expandText(self, value, workingScope):
    '''
    Expand the value of a string
    @param value incoming string
    @param workingScope if not None, a map of variables to apply
    as overrides or additions to those in the receiver's scope
    @type value: str
    @type workingScope: java_util_Map
    @return expanded string
    '''
    return str()


  def getLabel(self):
    '''
    Get the human-readable name for this scope
    @return label describing how this scope was entered
    '''
    return str()


  def getSummary(self):
    '''
    Summarize the scope for a diagnostic
    @return 
    '''
    return str()


  def getFunctionCallMap(self):
    '''
    Get the map of function calls active in this scope
    @return map of function call name to site
    '''
    return java_util_Map()


  def getFunctionCallPatterns(self):
    '''
    Get the map of function call patterns defined in this scope
    @return map of pattern names to patterns
    '''
    return java_util_Map()


  def getLocationMap(self):
    '''
    Get the map of locations declared in this scope
    @return map of location name to container
    '''
    return java_util_Map()


  def getScriptMap(self):
    '''
    Get the scripts defined in this scope
    @return map of script names to loaded scripts
    '''
    return java_util_Map()


  def getUpdateBitfieldMap(self):
    '''
    Get the map of bitmask applications active in this scope
    @return map of target to site
    '''
    return java_util_Map()


  def mergeFrom(self, scope, overwrite):
    '''
    Merge all the definitions from the other scope.
    @param scope
    @param overwrite if True, overwrite existing definitions

    @type scope: com_silabs_ss_framework_sourcegen_api_mapping_IMappingScope
    @type overwrite: bool
    '''
    pass


  def getParent(self):
    '''
    Get the scope's parent (or None for the root level).
    When the receiver is popped, this value is the new current scope.
    '''
    return com_silabs_ss_platform_api_rcp_core_variables_IVariableScope()


class com_silabs_ss_framework_sourcegen_api_mapping_ISourceMapping(object):
  '''
  This is the interface to the document model of the *.srcmap file.
  '''
  def init(self):
    self.groups = self.getGroups()

  def getGroups(self):
    return list()


class com_silabs_ss_framework_sourcegen_api_mapping_IUpdateBitfieldSite(com_silabs_ss_framework_sourcegen_api_mapping_ICollatingSite):
  '''
  This represents a contribution which will eventually contain a reset
  and/or set of a bitmask.  It exists during a mapping scope.
   *
  '''
  def init(self):
    self.updateInfo = self.getUpdateInfo()

  def getContribution(self):
    '''
    Get the contribution into which the site will go.
    @return 
    '''
    return com_silabs_ss_framework_sourcegen_api_core_IContribution()


  def getUpdateInfo(self):
    '''
    Get the current bitmask information
    @return 
    '''
    return com_silabs_ss_framework_sourcegen_api_core_IUpdateBitfieldInfo()


  def getMapping(self):
    '''
    Get the mapping that triggered this site
    @return 
    '''
    return com_silabs_ss_framework_sourcegen_api_mapping_IMapping()


  def getScope(self):
    '''
    Get the scope owning this site.
    '''
    return com_silabs_ss_framework_sourcegen_api_mapping_IMappingScope()


class com_silabs_ss_framework_sourcegen_api_mapping_MappingConstants(object):
  ATTR_META_PROPERTY = str
  '''
  The string attribute that selects a meta-property
  @see IMappingModelProvider#getValue(object, java.util.Map, java.util.Map)
  @value "metaProperty"
  '''

  ATTR_PROPERTY = str
  '''
  The string attribute that selects a property
  @see IMappingModelProvider#getValue(object, java.util.Map, java.util.Map)
  @value "property"
  '''

  LOCATION_ROOT = str
  '''
  Name of the root location
  @see ILocationProvider#getRootLocation()
  @value "root"
  '''

  VARIABLE_DATE = str
  '''
  current date
  @value "date"
  '''

  VARIABLE_DATE_TIME = str
  '''
  current date and time
  @value "dateTime"
  '''

  VARIABLE_ENUM_INDEX = str
  '''
  The index of an enum's value in its property (via {@link TypeProperties#ENUM_VALUES}) value from e.g. &lt;with&gt;;
  -1 for non-enum properties
  @value "enumIndex"
  '''

  VARIABLE_FILE_NAME = str
  '''
  The name of the currently active file (no path)
  @value "fileName"
  '''

  VARIABLE_FUNCTION_CALL_PATTERN = str
  '''
  The current function call pattern (type: {@link IFunctionCallPattern})
  @value "functionCallPattern"
  '''

  VARIABLE_FUNCTION_COMMENT = str
  '''
  The text of a comment preceding a function definition
  @value "functionComment"
  '''

  VARIABLE_FUNCTION_FOOTER_COMMENT = str
  '''
  The text of a comment at the bottom of a function definition (e.g. a TODO)
  @value "functionFooterComment"
  '''

  VARIABLE_FUNCTION_HEADER_COMMENT = str
  '''
  The text of a comment inside a function definition (e.g. a TODO)
  @value "functionHeaderComment"
  '''

  VARIABLE_FUNCTION_VISIBILITY = str
  '''
  The text representing the visibility of a declaration (e.g. 'static' or 'extern' in C)
  @value "functionVisibility"
  '''

  VARIABLE_GENERATED_INCLUDE_DIR = str
  '''
  The generated include directory
  @value "generatedIncludeDir"
  '''

  VARIABLE_GENERATED_SOURCE_DIR = str
  '''
  The generated source directory
  @value "generatedSourceDir"
  '''

  VARIABLE_INCLUDE_DIR = str
  '''
  The (user) include directory
  @value "includeDir"
  '''

  VARIABLE_INDENT_STRING = str
  '''
  The indentation string (e.g. "\t" or "   ")
  @value "indentstr"
  '''

  VARIABLE_LOCATION = str
  '''
  The current ILocation
  @value "location"
  '''

  VARIABLE_LOCATION_NAME = str
  '''
  The name of the currently active location  (via &lt;declareLocation&gt; or &lt;mappingGroup;&gt; or &lt;contribution&gt; with a location)
  @value "locationName"
  '''

  VARIABLE_LOCATION_SOURCE_NAME = str
  '''
  The name of the currently active location's "source" name (i.e. identifier)
  @value "locationSourceName"
  '''

  VARIABLE_META_PROPERTY_ID = str
  '''
  The name of a meta-property of the the current propertyId  (via &lt;with&gt;)
  @value "metaPropertyId"
  '''

  VARIABLE_META_PROPERTY_VALUE = str
  '''
  The value of the meta-property identified by {@link #VARIABLE_META_PROPERTY_ID}
  @value "metaPropertyValue"
  '''

  VARIABLE_OBJECT = str
  '''
  The current document model object (implicitly set at start and when &lt;with&gt; called)
  @value "object"
  '''

  VARIABLE_OBJECT_NAME = str
  '''
  The name of the current document model object
  @value "objectName"
  '''

  VARIABLE_PREVIOUS_ENUM_INDEX = str
  '''
  The index of an enum's value in its reference; None for no reference, -1 for non-enum properties
  @value "previousEnumIndex"
  '''

  VARIABLE_PREVIOUS_OBJECT = str
  '''
  The reference name of the object identified by {@link #VARIABLE_OBJECT}, or None if no reference is used
  @value "previousobject"
  '''

  VARIABLE_PREVIOUS_OBJECT_NAME = str
  '''
  The reference name of the object identified by {@link #VARIABLE_OBJECT_NAME}, or None if no reference is used;
  this is usually identical to the objectName except in special cases
  @value "previousobjectName"
  '''

  VARIABLE_PREVIOUS_PROPERTY_VALUE = str
  '''
  The reference value of the property identified by {@link #VARIABLE_PROPERTY_ID}, or None if no reference is used
  @value "previousPropertyValue"
  '''

  VARIABLE_PREVIOUS_VALUE = str
  '''
  The value in the reference from e.g. &lt;with&gt; None for no reference
  @value "previousValue"
  '''

  VARIABLE_PRODUCT_NAME = str
  '''
  The name of the product (e.g. for generating a comment like 'Generated by ...')
  @value "productName"
  '''

  VARIABLE_PROJECT_FILE_PATH = str
  '''
  The name of the currently active file's project location (relative to source root or absolute)
  @value "projectFilePath"
  '''

  VARIABLE_PROJECT_NAME = str
  '''
  The name of the currently active file's project (if in a project, else name of source root's folder)
  @value "projectName"
  '''

  VARIABLE_PROPERTY_ID = str
  '''
  The name of the current document model object's property ID (via &lt;with&gt;)
  @value "propertyId"
  '''

  VARIABLE_PROPERTY_PREFIX = str
  '''
  The prefix for a reference to a property visible from the current object
  @value "property."
  '''

  VARIABLE_PROPERTY_VALUE = str
  '''
  The value of the property identified by {@link #VARIABLE_PROPERTY_ID}
  @value "propertyValue"
  '''

  VARIABLE_SOURCE_DIR = str
  '''
  The (user) source directory
  @value "sourceDir"
  '''

  VARIABLE_TIME = str
  '''
  current time
  @value "time"
  '''

  VARIABLE_VALUE = str
  '''
  The current value from e.g. &lt;with&gt; -- note, this is the default name used in the text-based elements
  @value "value"
  '''

  VARIABLE_YEAR = str
  '''
  current year
  @value "year"
  '''

class com_silabs_ss_framework_sourcegen_api_mapping_MappingDiagnostic(object):
  '''
  *
  '''
  def init(self):
    self.site = self.getSite()

    self.status = self.getStatus()

  def equals(self, _object):
    return bool()


  def getSite(self):
    '''
    @return the site
    '''
    return com_silabs_ss_framework_sourcegen_api_mapping_MappingSite()


  def hashCode(self):
    return int()


  def toString(self):
    return str()


  def getStatus(self):
    '''
    @return the status
    '''
    return org_eclipse_core_runtime_IStatus()


class com_silabs_ss_framework_sourcegen_api_mapping_MappingSite(object):
  '''
  This is the site, located in source mapping, where something happened.
   *
  '''
  def init(self):
    self.mappingElement = self.getMappingElement()

    self.scope = self.getScope()

  def equals(self, _object):
    return bool()


  def getMappingElement(self):
    '''
    Get the source mapping element
    @return the mappingElement, never None
    '''
    return com_silabs_ss_framework_sourcegen_api_mapping_IMapping()


  def getScope(self):
    '''
    @return the scope
    '''
    return com_silabs_ss_framework_sourcegen_api_mapping_IMappingScope()


  def hashCode(self):
    return int()


  def toString(self):
    return str()


class com_silabs_ss_framework_sourcegen_internal_api_mapping_model_AbstractMapping(org_eclipse_emf_ecore_EObject):
  '''
  A representation of the model object 'Abstract Mapping'.

   *

  This is the basis of a mapping from model to source.

   *
   *
  @see com.silabs.ss.framework.sourcegen.internal.api.mapping.model.SourceMappingPackage#getAbstractMapping()
  @model abstract="True" superTypes="com.silabs.ss.framework.sourcegen.internal.api.mapping.model.IMapping"
  extendedMetaData="name='AbstractMapping' kind='empty'"
  '''
  pass
class com_silabs_ss_framework_sourcegen_internal_api_mapping_model_AbstractMappingGroup(com_silabs_ss_framework_sourcegen_internal_api_mapping_model_AbstractMapping):
  '''
  A representation of the model object 'Abstract Mapping Group'.

   *

  This is a serial list of mappings, applied in order, when mapping a model to source.

   *
   *
  @see com.silabs.ss.framework.sourcegen.internal.api.mapping.model.SourceMappingPackage#getAbstractMappingGroup()
  @model abstract="True"
  extendedMetaData="name='AbstractMappingGroup' kind='empty'"
  '''
  def init(self):
    self.mappings = self.getMappings()

  def getMappings(self):
    '''
    Get the linear list of mappings.  The returned object does not track changes to this object.
    @see #getGroup()
    @return list of mapping objects
    '''
    return list()


class com_silabs_ss_framework_sourcegen_internal_api_mapping_model_DefineFunctionCallPattern(com_silabs_ss_framework_sourcegen_internal_api_mapping_model_AbstractMappingGroup):
  '''
  A representation of the model object 'Define Function Call Pattern'.

   *

  This element defines a pattern for pre-populating various aspects of a functionCall or functionCallArgument
  element, to avoid repetition.

   *

  The following features are supported:

  	{@link com.silabs.ss.framework.sourcegen.internal.api.mapping.model.DefineFunctionCallPattern#getGroup Group}

  	{@link com.silabs.ss.framework.sourcegen.internal.api.mapping.model.DefineFunctionCallPattern#getName Name}

   *
  @see com.silabs.ss.framework.sourcegen.internal.api.mapping.model.SourceMappingPackage#getDefineFunctionCallPattern()
  @model features="argument defineVariable"
  argumentType="com.silabs.ss.framework.sourcegen.internal.api.mapping.model.FunctionCallPatternArgument" argumentContainment="True" argumentMany="True" argumentTransient="True" argumentVolatile="True" argumentDerived="True" argumentSuppressedGetVisibility="True" argumentSuppressedSetVisibility="True"
  argumentExtendedMetaData="kind='element' name='argument' group='#group:0'"
  defineVariableType="com.silabs.ss.framework.sourcegen.internal.api.mapping.model.DefineVariable" defineVariableContainment="True" defineVariableMany="True" defineVariableTransient="True" defineVariableVolatile="True" defineVariableDerived="True" defineVariableSuppressedGetVisibility="True" defineVariableSuppressedSetVisibility="True"
  defineVariableExtendedMetaData="kind='element' name='defineVariable' group='#group:0'"
  extendedMetaData="name='DefineFunctionCallPattern' kind='elementOnly'"
  '''
  def init(self):
    self.name = self.getName()

    self.group = self.getGroup()

  def definesArgument(self, index):
    '''
    Tell if the pattern defines the given argument
    @param index
    @type index: int
    @return 
    '''
    return bool()


  def getName(self):
    '''
    Returns the value of the 'Name' attribute.

    This is the name of the pattern, for future reference by e.g. useFunctionCallPattern.

    @return the value of the 'Name' attribute.
    @see #setName(str)
    @see com.silabs.ss.framework.sourcegen.internal.api.mapping.model.SourceMappingPackage#getDefineFunctionCallPattern_Name()
    @model extendedMetaData="kind='attribute' name='name'"
    '''
    return str()


  def getGroup(self):
    '''
    Returns the value of the 'Group' attribute list.
    The list contents are of type {@link org.eclipse.emf.ecore.util.FeatureMap.Entry}.

    If the meaning of the 'Group' attribute list isn't clear,
    there really should be more of a description here...

    @return the value of the 'Group' attribute list.
    @see com.silabs.ss.framework.sourcegen.internal.api.mapping.model.SourceMappingPackage#getDefineFunctionCallPattern_Group()
    @model unique="False" dataType="org.eclipse.emf.ecore.EFeatureMapEntry" many="True"
    extendedMetaData="kind='group' name='group:0'"
    '''
    return list()


  def setName(self, value):
    '''
    Sets the value of the '{@link com.silabs.ss.framework.sourcegen.internal.api.mapping.model.DefineFunctionCallPattern#getName Name}' attribute.

    @param value the new value of the 'Name' attribute.
    @see #getName()

    @type value: str
    '''
    pass


class com_silabs_ss_platform_api_capability_ICapability(object):
  '''
  Describes a capability of a piece of hardware.
  Implementations of this object need to be controled via the
  extension points. The idea is that each hardware object implementation
  can have multiple capabilities and this framework is what the
  capabilities are reported through. Each object that has capabilities
  may return an array of ICapability object.
   *
  Created on Apr 24, 2006
   *
  '''
  def enabled(self, _com_silabs_ss_platform_api_capability_ICapable):
    '''
    This method provides the opportunity to the capability
    to check whether the object is at this point capable of
    performing it.
    '''
    return bool()


  def internalOnly(self):
    '''
    Is this a capability that should be exposed externally, i.e. can
    be initiated by the user. Capabilities which return True can be
    run directly from the UI
    '''
    return bool()


  def isRedoable(self):
    '''
    Is this capability something that can be redone. For instance, bootload
    can be redone, but power off cannot - since once something is powered off,
    it cannot logically be so again.
    '''
    return bool()


  def id(self):
    '''
    Unique identifier for this capability. These need to be controlled.
    '''
    return str()


  def shortName(self):
    '''
    Provides the short name. This is what menu items and log files will show.
    '''
    return str()


  def activate(self, _com_silabs_ss_platform_api_capability_ICapable, _object, _com_silabs_ss_platform_api_capability_ICapabilityFeedback):
    '''
    Method to activate the capability.
    '''
    pass


class com_silabs_ss_platform_api_capability_ICapabilityFeedback(object):
  '''
  This interface is used by the capabilities to report feedback on
  their progress to whoever is interested.
   *
  Created on Apr 26, 2006
  '''
  DUMMY = com_silabs_ss_platform_api_capability_ICapabilityFeedback
  '''
  '''

  def cancelRequest(self):
    '''
    The implementation should return True if the capability has been
    requested to cancel. This is the communication from the
    caller TO capability.
    '''
    return bool()


  def progress(self, _int):
    '''
    Reports progress done in percentage terms.
    If percentage is a negative number, it is considered
    that the capability does not know how much more work it has,
    but it is alive. It is ok for the capability to not report on that
    if it simply doesn't know. It is beneficial to the GUI if it does
    however. This is a commnication from capability TO caller.
    '''
    pass


  def showError(self, , _java_lang_Throwable):
    '''
    Shows the error.
       *
       *
    @param 
    @returns void

    @type : str
    '''
    pass


class com_silabs_ss_platform_api_capability_ICapable(object):
  '''
  Our hardware models are essentially very sparse and several
  operations on them may not be available.
  Therefore, rather than having a lot of methods that are not implemented,
  or having separate per-implementation methods not visible through interface
  we are implementing the capabilities concept.
   *
  Created on Apr 24, 2006
  '''
  def can(self, _str):
    return bool()


  def isReady(self):
    return bool()


  def target(self, _java_lang_Class):
    return com_silabs_ss_platform_api_capability_ICapable()


  def capabilities(self):
    return list()


  def run(self, _str):
    pass


class com_silabs_ss_platform_api_capability_ICapableListener(object):
  '''
  If you are interested in capability activation on a capable object,
  then you will implement this interface and register yourself as a
  listener to the capable object.
   *
  Note that there is no assumptions on transactionality here.
  You could hear 4 starts for different capabilities before hearing stop
  of any one.
   *
  Created on Apr 26, 2006
  '''
  def shouldCancel(self, _com_silabs_ss_platform_api_capability_ICapable, _str):
    '''
    Capability can ask the listener whether it should cancel operation.
    This is the way for the caller to affect the capability. If caller has no
    interntion to cancel this capability, return False.
    '''
    return bool()


  def exception(self, _com_silabs_ss_platform_api_capability_ICapable, _str, _object, _java_lang_Throwable):
    '''
    Report that the exception happened with running this capability.
    Once this happens, no other callbacks should be called on this
    capability activation.
    '''
    pass


  def remaining(self, _com_silabs_ss_platform_api_capability_ICapable, _str, _int):
    '''
    Report percentage remaining for the capability to run.
    '''
    pass


  def start(self, _com_silabs_ss_platform_api_capability_ICapable, _str, _object):
    '''
    Report that a capability has started activation.
    '''
    pass


  def stop(self, _com_silabs_ss_platform_api_capability_ICapable, _str, _object):
    '''
    Report that a capability has stopped being active.
    '''
    pass


class com_silabs_ss_platform_api_capability_ICapableWithFeedback(com_silabs_ss_platform_api_capability_ICapable):
  '''
  object that implements this interface is a capable object and at
  the same time accepts listeners which listen to the capabilities.
  If you have a capable object that has a clear GUI representation, 
  you will use this class.
  Created on Apr 27, 2006
  '''
  def capabilityListeners(self):
    '''
    Returns an array of all listeners.
    '''
    return list()


  def addCapabilityListener(self, _com_silabs_ss_platform_api_capability_ICapableListener):
    '''
    Adds the capability listener.
    '''
    pass


  def removeCapabilityListener(self, _com_silabs_ss_platform_api_capability_ICapableListener):
    '''
    Removes the capability listener.
    '''
    pass


class com_silabs_ss_platform_api_content_board_core_IBoardDescriptor(com_silabs_ss_platform_api_content_core_IVersionedDescriptor):
  '''
  This represents a board, which is a collection of parts,
  a memory layout, set of peripherals, etc.
   *
  '''
  def init(self):
    self.module = self.getModule()

    self.allowedPartCompatibility = self.getAllowedPartCompatibility()

    self.categoryLabel = self.getCategoryLabel()

    self.partNumber = self.getPartNumber()

    self.revision = self.getRevision()

    self.shortLabel = self.getShortLabel()

    self.variant = self.getVariant()

    self.allowedPartIds = self.getAllowedPartIds()

    self.allowedPartOPNs = self.getAllowedPartOPNs()

  def equals(self, _object):
    '''
    Returns True if the {@code obj} has the same class and the same id.
    @see object#equals(object)
    '''
    return bool()


  def isBuiltin(self):
    '''
    Tell whether the descriptor (and entity) are considered built in to the product.
    This may be used to distinguish bundled descriptors vs. ones discovered on
    the user's system.
    @see CoreProperties#BUILTIN
    '''
    return bool()


  def isHidden(self):
    '''
    Tell whether the object is intended to be hidden from UI.
    @see CoreProperties#HIDDEN
    '''
    return bool()


  def getModule(self):
    '''
    Get the module defined for this board
    @return module or None
    '''
    return com_silabs_ss_platform_api_content_board_core_IModule()


  def copy(self):
    '''
    Deep-copy the receiver
    @return new copy
    '''
    return com_silabs_ss_platform_api_content_core_IDescriptor()


  def getPropertyAccess(self):
    '''
    Get the full property access for the descriptor.
    '''
    return com_silabs_ss_platform_api_content_core_IPropertyAccess()


  def getPropertyMapper(self):
    '''
    Get the property mapper for the descriptor.
    '''
    return com_silabs_ss_platform_api_content_core_IPropertyMapper()


  def getRegistry(self):
    '''
    Get the owning registry.
    @return registry, non-None if descriptor is contained in a registry
    '''
    return com_silabs_ss_platform_api_content_core_registry_IRegistry()


  def hashCode(self):
    '''
    Returns the hash code of the receiver's id.
    @see object#hashCode()
    '''
    return int()


  def getProperty(self, key):
    '''
    Get the value of a property for the receiver, parent chain, or default if not defined in any of them.
    @param key name of a property in receiver's scope or fully qualified property name
    @type key: str
    @return value, in the Java type represented by the property's {@link IType}, or a string if the
    property is not registerted in the property scope.  The value may be the default if not explicitly
    set, or None if no such property is known in the receiver's or parent chain's properties
    @throws IllegalArgumentException if property value does not conform to type
    @see IPropertyAccess#getValue(str)
    '''
    return object()


  def getProperty(self, key, _com_silabs_ss_platform_api_content_core_IType):
    '''
    Get the value of a property for the receiver, parent chain, or default if not defined in any of them.
    @param key name of a property in receiver's scope or fully qualified property name
    @type key: str
    @return value, in the Java type represented by the property's {@link IType}, or a string if the
    property is not registerted in the property scope.  The value may be the default if not explicitly
    set, or None if no such property is known in the receiver's or parent chain's properties
    @throws IllegalArgumentException if property value does not conform to type
    @see IPropertyAccess#getValue(str)
    '''
    return object()


  def getProperty(self, key, _str):
    '''
    Get the value of a property for the receiver, parent chain, or default if not defined in any of them.
    @param key name of a property in receiver's scope or fully qualified property name
    @type key: str
    @return value, in the Java type represented by the property's {@link IType}, or a string if the
    property is not registerted in the property scope.  The value may be the default if not explicitly
    set, or None if no such property is known in the receiver's or parent chain's properties
    @throws IllegalArgumentException if property value does not conform to type
    @see IPropertyAccess#getValue(str)
    '''
    return object()


  def getAllowedPartCompatibility(self):
    '''
    Get the compatibility grammar for any of the parts allowed in the board.
    @return grammar for all of the parts.
    '''
    return str()


  def getAllowedPartCompatibility(self, _str):
    '''
    Get the compatibility grammar for any of the parts allowed in the board.
    @return grammar for all of the parts.
    '''
    return str()


  def getCategoryLabel(self):
    '''
    Get the category for the UI
    @return label or None
    '''
    return str()


  def getPartNumber(self):
    '''
    Get part number of the board
    @return pn or None
    '''
    return str()


  def getRevision(self):
    '''
    Get revision of the board
    @return revision or None
    '''
    return str()


  def getShortLabel(self):
    '''
    Get the short label of the board
    @return label or None
    @see BoardProperties#SHORT_NAME
    '''
    return str()


  def getVariant(self):
    '''
    Get variant of the board
    @return variant or None
    '''
    return str()


  def getDescription(self):
    '''
    Human-readable description of the value for UI.

    This description is interpreted as HTML.

    @return description, never None (but may be blank)
    '''
    return str()


  def getId(self):
    '''
    The fully qualified identifer for this entity, including the ids of its parents, up to an implementation-defined root.
    '''
    return str()


  def getLabel(self):
    '''
    The label for the item, displayed in UI.
    @return label, never None
    '''
    return str()


  def getName(self):
    '''
    The unique name for this item within its parent.   See {@link #getId()} for the full unique identifier.
    '''
    return str()


  def toString(self):
    '''
    Return the id and label.
    @return str
    '''
    return str()


  def getLabel(self):
    '''
    Label for the value, if it appears in UI.  This label is plain text.

    This may be a derived value, sourced from the wrapped MDescriptor.  If
    that value is None or blank, a label is automatically
    generated from the {@link #getName()}.
    @return label, never None
    '''
    return str()


  def getId(self):
    '''
    Get the id and version catenated as '&lt;id&gt;:&lt;version&gt;'.
    @see IDescriptor#getId()
    @see IVersionable#getVersion()
    '''
    return str()


  def getUnversionedId(self):
    '''
    Get the id without the version.  This may be the same as {@link #getName()},
    which never has a version attached.
    @return id, which may not be unique
    '''
    return str()


  def getAllowedPartIds(self):
    '''
    Get the parts the board could contain.
    @return non-None array
    '''
    return list()


  def getAllowedPartOPNs(self):
    '''
    Get the OPNs of the parts the board could contain.
    @return non-None array
    '''
    return list()


  def gatherListProperty(self, _str):
    return list()


  def getInstallationPath(self):
    '''
    Get the path where the installation lives on the system.
    @return path
    @throws IOException if path cannot be resolved
    @see CoreProperties#INSTALLATION_PATH
    '''
    return org_eclipse_core_runtime_IPath()


class com_silabs_ss_platform_api_content_board_core_IModule(object):
  def init(self):
    self.name = self.getName()

    self.partOPN = self.getPartOPN()

  def getName(self):
    '''
    Get the modules name
    @return name of module
    '''
    return str()


  def getPartOPN(self):
    '''
    Get part number of the module
    @return pn or None
    '''
    return str()


class com_silabs_ss_platform_api_content_core_IDescribable(object):
  '''
  Base interface for describable objects.
   *
  '''
  def init(self):
    self.description = self.getDescription()

    self.id = self.getId()

    self.label = self.getLabel()

    self.name = self.getName()

  def equals(self, _object):
    '''
    Returns True if the {@code obj} has the same class and the same id.
    @see object#equals(object)
    '''
    return bool()


  def hashCode(self):
    '''
    Returns the hash code of the receiver's id.
    @see object#hashCode()
    '''
    return int()


  def getDescription(self):
    '''
    Human-readable description of the value for UI.

    This description is interpreted as HTML.

    @return description, never None (but may be blank)
    '''
    return str()


  def getId(self):
    '''
    The fully qualified identifer for this entity, including the ids of its parents, up to an implementation-defined root.
    '''
    return str()


  def getLabel(self):
    '''
    The label for the item, displayed in UI.
    @return label, never None
    '''
    return str()


  def getName(self):
    '''
    The unique name for this item within its parent.   See {@link #getId()} for the full unique identifier.
    '''
    return str()


  def toString(self):
    '''
    Return the id and label.
    @return str
    '''
    return str()


class com_silabs_ss_platform_api_content_core_IDescriptor(com_silabs_ss_platform_api_content_core_IDescribable):
  '''
  Base interface for model elements that can be described and identified, 
  with an associated property access and storage mechanism.
  '''
  def init(self):
    self.propertyAccess = self.getPropertyAccess()

    self.propertyMapper = self.getPropertyMapper()

    self.registry = self.getRegistry()

    self.label = self.getLabel()

    self.installationPath = self.getInstallationPath()

  def equals(self, _object):
    '''
    Returns True if the {@code obj} has the same class and the same id.
    @see object#equals(object)
    '''
    return bool()


  def isBuiltin(self):
    '''
    Tell whether the descriptor (and entity) are considered built in to the product.
    This may be used to distinguish bundled descriptors vs. ones discovered on
    the user's system.
    @see CoreProperties#BUILTIN
    '''
    return bool()


  def isHidden(self):
    '''
    Tell whether the object is intended to be hidden from UI.
    @see CoreProperties#HIDDEN
    '''
    return bool()


  def copy(self):
    '''
    Deep-copy the receiver
    @return new copy
    '''
    return com_silabs_ss_platform_api_content_core_IDescriptor()


  def getPropertyAccess(self):
    '''
    Get the full property access for the descriptor.
    '''
    return com_silabs_ss_platform_api_content_core_IPropertyAccess()


  def getPropertyMapper(self):
    '''
    Get the property mapper for the descriptor.
    '''
    return com_silabs_ss_platform_api_content_core_IPropertyMapper()


  def getRegistry(self):
    '''
    Get the owning registry.
    @return registry, non-None if descriptor is contained in a registry
    '''
    return com_silabs_ss_platform_api_content_core_registry_IRegistry()


  def hashCode(self):
    '''
    Returns the hash code of the receiver's id.
    @see object#hashCode()
    '''
    return int()


  def getProperty(self, key):
    '''
    Get the value of a property for the receiver, parent chain, or default if not defined in any of them.
    @param key name of a property in receiver's scope or fully qualified property name
    @type key: str
    @return value, in the Java type represented by the property's {@link IType}, or a string if the
    property is not registerted in the property scope.  The value may be the default if not explicitly
    set, or None if no such property is known in the receiver's or parent chain's properties
    @throws IllegalArgumentException if property value does not conform to type
    @see IPropertyAccess#getValue(str)
    '''
    return object()


  def getProperty(self, key, _com_silabs_ss_platform_api_content_core_IType):
    '''
    Get the value of a property for the receiver, parent chain, or default if not defined in any of them.
    @param key name of a property in receiver's scope or fully qualified property name
    @type key: str
    @return value, in the Java type represented by the property's {@link IType}, or a string if the
    property is not registerted in the property scope.  The value may be the default if not explicitly
    set, or None if no such property is known in the receiver's or parent chain's properties
    @throws IllegalArgumentException if property value does not conform to type
    @see IPropertyAccess#getValue(str)
    '''
    return object()


  def getProperty(self, key, _str):
    '''
    Get the value of a property for the receiver, parent chain, or default if not defined in any of them.
    @param key name of a property in receiver's scope or fully qualified property name
    @type key: str
    @return value, in the Java type represented by the property's {@link IType}, or a string if the
    property is not registerted in the property scope.  The value may be the default if not explicitly
    set, or None if no such property is known in the receiver's or parent chain's properties
    @throws IllegalArgumentException if property value does not conform to type
    @see IPropertyAccess#getValue(str)
    '''
    return object()


  def getDescription(self):
    '''
    Human-readable description of the value for UI.

    This description is interpreted as HTML.

    @return description, never None (but may be blank)
    '''
    return str()


  def getId(self):
    '''
    The fully qualified identifer for this entity, including the ids of its parents, up to an implementation-defined root.
    '''
    return str()


  def getLabel(self):
    '''
    The label for the item, displayed in UI.
    @return label, never None
    '''
    return str()


  def getName(self):
    '''
    The unique name for this item within its parent.   See {@link #getId()} for the full unique identifier.
    '''
    return str()


  def toString(self):
    '''
    Return the id and label.
    @return str
    '''
    return str()


  def getLabel(self):
    '''
    Label for the value, if it appears in UI.  This label is plain text.

    This may be a derived value, sourced from the wrapped MDescriptor.  If
    that value is None or blank, a label is automatically
    generated from the {@link #getName()}.
    @return label, never None
    '''
    return str()


  def gatherListProperty(self, _str):
    return list()


  def getInstallationPath(self):
    '''
    Get the path where the installation lives on the system.
    @return path
    @throws IOException if path cannot be resolved
    @see CoreProperties#INSTALLATION_PATH
    '''
    return org_eclipse_core_runtime_IPath()


class com_silabs_ss_platform_api_content_core_IParentable(object):
  '''
  Interface for objects that have parents.
   *
  '''
  def init(self):
    self.parent = self.getParent()

  def getParent(self):
    '''
    Get the parent
    @return parent object, or None
    '''
    return object()


class com_silabs_ss_platform_api_content_core_IProperty(com_silabs_ss_platform_api_content_core_IDescriptor):
  '''
  This interface represents a property descriptor that has metadata and is (optionally)
  contained in a group of like properties.

  (Note: this should technically be named "IPropertyDescriptor", but we have no
  concept of a valued property existing as a full IDescriptorEntity,
  and we want to avoid confusion with the Eclipse UI Views IPropertyDescriptor, 
  which is a UI-specific interface that does the same thing but drags in UI.)
   *
  '''
  def init(self):
    self.type = self.getType()

    self.defaultValue = self.getDefaultValue()

    self.defaultValueLiteral = self.getDefaultValueLiteral()

    self.enumLabels = self.getEnumLabels()

    self.enumValues = self.getEnumValues()

  def equals(self, _object):
    '''
    Returns True if the {@code obj} has the same class and the same id.
    @see object#equals(object)
    '''
    return bool()


  def isBuiltin(self):
    '''
    Tell whether the descriptor (and entity) are considered built in to the product.
    This may be used to distinguish bundled descriptors vs. ones discovered on
    the user's system.
    @see CoreProperties#BUILTIN
    '''
    return bool()


  def isHidden(self):
    '''
    Tell whether the object is intended to be hidden from UI.
    @see CoreProperties#HIDDEN
    '''
    return bool()


  def isEnum(self):
    '''
    Tell whether the property is considered an enum.  This means,
    the metadata property PropertyProperties#ENUM_VALUES is
    specified on the receiver or on its type.
    @return True or False
    @see PropertyProperties#ENUM_VALUES
    @see TypeProperties#ENUM_VALUES
    '''
    return bool()


  def isReadOnly(self):
    '''
    Whether instances of the property are read-only.
    @see PropertyProperties#READ_ONLY
    '''
    return bool()


  def copy(self):
    '''
    Deep-copy the receiver
    @return new copy
    '''
    return com_silabs_ss_platform_api_content_core_IDescriptor()


  def getPropertyAccess(self):
    '''
    Get the full property access for the descriptor.
    '''
    return com_silabs_ss_platform_api_content_core_IPropertyAccess()


  def getPropertyMapper(self):
    '''
    Get the property mapper for the descriptor.
    '''
    return com_silabs_ss_platform_api_content_core_IPropertyMapper()


  def getType(self):
    '''
    The resolved base type (or NullType if error)
    @return type
    '''
    return com_silabs_ss_platform_api_content_core_IType()


  def getRegistry(self):
    '''
    Get the owning registry.
    @return registry, non-None if descriptor is contained in a registry
    '''
    return com_silabs_ss_platform_api_content_core_registry_IRegistry()


  def hashCode(self):
    '''
    Returns the hash code of the receiver's id.
    @see object#hashCode()
    '''
    return int()


  def getProperty(self, key):
    '''
    Get the value of a property for the receiver, parent chain, or default if not defined in any of them.
    @param key name of a property in receiver's scope or fully qualified property name
    @type key: str
    @return value, in the Java type represented by the property's {@link IType}, or a string if the
    property is not registerted in the property scope.  The value may be the default if not explicitly
    set, or None if no such property is known in the receiver's or parent chain's properties
    @throws IllegalArgumentException if property value does not conform to type
    @see IPropertyAccess#getValue(str)
    '''
    return object()


  def getProperty(self, key, _com_silabs_ss_platform_api_content_core_IType):
    '''
    Get the value of a property for the receiver, parent chain, or default if not defined in any of them.
    @param key name of a property in receiver's scope or fully qualified property name
    @type key: str
    @return value, in the Java type represented by the property's {@link IType}, or a string if the
    property is not registerted in the property scope.  The value may be the default if not explicitly
    set, or None if no such property is known in the receiver's or parent chain's properties
    @throws IllegalArgumentException if property value does not conform to type
    @see IPropertyAccess#getValue(str)
    '''
    return object()


  def getProperty(self, key, _str):
    '''
    Get the value of a property for the receiver, parent chain, or default if not defined in any of them.
    @param key name of a property in receiver's scope or fully qualified property name
    @type key: str
    @return value, in the Java type represented by the property's {@link IType}, or a string if the
    property is not registerted in the property scope.  The value may be the default if not explicitly
    set, or None if no such property is known in the receiver's or parent chain's properties
    @throws IllegalArgumentException if property value does not conform to type
    @see IPropertyAccess#getValue(str)
    '''
    return object()


  def getParent(self):
    '''
    Get the parent
    @return parent object, or None
    '''
    return object()


  def getDefaultValue(self):
    '''
    Get the Java value for the default value literal
    @return Java object or None
    '''
    return object()


  def getDescription(self):
    '''
    Human-readable description of the value for UI.

    This description is interpreted as HTML.

    @return description, never None (but may be blank)
    '''
    return str()


  def getId(self):
    '''
    The fully qualified identifer for this entity, including the ids of its parents, up to an implementation-defined root.
    '''
    return str()


  def getLabel(self):
    '''
    The label for the item, displayed in UI.
    @return label, never None
    '''
    return str()


  def getName(self):
    '''
    The unique name for this item within its parent.   See {@link #getId()} for the full unique identifier.
    '''
    return str()


  def toString(self):
    '''
    Return the id and label.
    @return str
    '''
    return str()


  def getLabel(self):
    '''
    Label for the value, if it appears in UI.  This label is plain text.

    This may be a derived value, sourced from the wrapped MDescriptor.  If
    that value is None or blank, a label is automatically
    generated from the {@link #getName()}.
    @return label, never None
    '''
    return str()


  def getDefaultValueLiteral(self):
    '''
    Get the string representing the default property value
    @return string or None for type's default
    '''
    return str()


  def gatherListProperty(self, _str):
    return list()


  def getEnumLabels(self):
    '''
    Get the list of labels for the values for the property or its type
    @return None if not an enum, or an unmodifiable list
    @see PropertyProperties#ENUM_LABELS
    @see TypeProperties#ENUM_LABELS
    '''
    return list()


  def getEnumValues(self):
    '''
    Get the list of allowed values for the property or its type
    @return None if not an enum, or an unmodifiable list
    @see PropertyProperties#ENUM_VALUES
    @see TypeProperties#ENUM_VALUES
    '''
    return list()


  def getInstallationPath(self):
    '''
    Get the path where the installation lives on the system.
    @return path
    @throws IOException if path cannot be resolved
    @see CoreProperties#INSTALLATION_PATH
    '''
    return org_eclipse_core_runtime_IPath()


class com_silabs_ss_platform_api_content_core_IPropertyAccess(object):
  '''
  Interface for an object that allows accessing property values, with
  property- and type-specific conversion.

  Property access works in a tree model, where a chain of parents may provide 
  a property's value when the receiver does not define it.  When setting
  or removing a property, only the receiver is affected.  Due to the lookup
  mechanism, setting a property masks the parent's value.  
   *
  '''
  def init(self):
    self.parentAccess = self.getParentAccess()

    self.mapper = self.getMapper()

    self.locallyDefinedPropertyKeys = self.getLocallyDefinedPropertyKeys()

    self.nonDefaultPropertyKeys = self.getNonDefaultPropertyKeys()

    self.rawPropertyMap = self.getRawPropertyMap()

  def equalsProperties(self, other):
    '''
    Tell whether all the properties of the receiver match those of the argument.
    @param other
    @type other: com_silabs_ss_platform_api_content_core_IPropertyAccess
    @return True if all the same properties are defined and match in both accessors
    (including parents)
    '''
    return bool()


  def isDefinedLocally(self, id):
    '''
    Tell whether the given property is set on the receiver (only).
    This does not consider whether a parent defines the property.
    @param id property name for this scope or qualified name
    @type id: str
    @return True if the receiver has the setting, False if not.
    '''
    return bool()


  def isValueNonDefault(self, id):
    '''
    Tell whether the given property has a non-default value.
    This is equivalent to the logical OR of {@link #isDefinedLocally(str)} for
    the receiver and all parents.
    @param id property name for this scope or qualified name
    @type id: str
    @return True if the receiver has the setting, False if not.
    '''
    return bool()


  def getParentAccess(self):
    '''
    Get the parent property access.
    @return parent access or None
    '''
    return com_silabs_ss_platform_api_content_core_IPropertyAccess()


  def getMapper(self):
    '''
    Get the lookup for the accessor, i.e. the means
    whereby a property key is mapped to an MProperty.
    '''
    return com_silabs_ss_platform_api_content_core_IPropertyMapper()


  def getLocalValue(self, key):
    '''
    Get the value of a property in the receiver, only.
    If not set, return its default.
    @param key property name for this scope or qualified name
    @type key: str
    @return converted value (which may be the default), or None if no such property is defined
    in the receiver or any parent
    '''
    return object()


  def getValue(self, key):
    '''
    Get the value of a property in the receiver, or in any of its parent
    property accessors.  If not set in any of them, return its default.
    @param key property name for this scope or qualified name
    @type key: str
    @return converted value (which may be the default), or None if no such property is defined
    in the receiver or any parent
    '''
    return object()


  def getLocalValueString(self, key):
    '''
    Get the value of a property in the receiver, only, as a string.
    If not set, return its default.
    @param key property name for this scope or qualified name
    @type key: str
    @return str value (which may be the default), or None if no such property is defined
    in the receiver or any parent
    '''
    return str()


  def getValueString(self, key):
    '''
    Get the value of a property in the receiver, or in any of its parents, as a string.
    If not set in any of them, return its default.
    @param key property name for this scope or qualified name
    @type key: str
    @return str value (which may be the default), or None if no such property is defined
    in the receiver or any parent
    '''
    return str()


  def getLocallyDefinedPropertyKeys(self):
    '''
    Get all the locally defined property keys (ids).  This is the set
    of property ids for which properties have non-default values
    on the receiver (only).
    This does not consider whether a parent defines the property.
    @return non-None array of property keys
    '''
    return list()


  def getNonDefaultPropertyKeys(self):
    '''
    Get all the non-default property keys (ids).  This is the set
    of property ids for which properties have non-default values
    on the receiver or any parent.
    @return non-None array of property keys
    '''
    return list()


  def getRawPropertyMap(self):
    '''
    Get the raw (un-type-converted) unmodifiable view of all the properties set
    in the receiver (for which {@link #isDefinedLocally(str)} returns True).
    @return map of key names to string values, never None
    '''
    return java_util_Map()


  def addListener(self, listener
  ):
    '''
    Add a listener for property changes (duplicates ignored)
    @param listener

    @type listener
    : com_silabs_ss_platform_api_content_core_IPropertyAccessListener
    '''
    pass


  def removeListener(self, listener
  ):
    '''
    Remove a listener for property changes (missing ignored)
    @param listener

    @type listener
    : com_silabs_ss_platform_api_content_core_IPropertyAccessListener
    '''
    pass


class com_silabs_ss_platform_api_content_core_IPropertyAccessListener(object):
  '''
  Clients implement this listener to respond to changes in properties
  made through {@link IPropertyAccess}. 
   *
  '''
  def valueChanged(self, event
  ):
    '''
    Handle a change in the given property made through {@link IWriteablePropertyAccess#setValue(str, object)}
    or {@link IWriteablePropertyAccess#unset(str)}.

    #setValue() may have been passed a str (e.g. for deserialization) or None (e.g. for
    resetting to default).  This report, however, contains the actual semantic property value set (an object).
    That value may be None if the property's underlying default is None. 

    #unset() resets a property to its default value.  This method is called only when the property accessor
    held a non-default value prior to that call, and "wasUnset" is True.

    This method is called only when the semantic value of a property changes.
    @param event

    @type event
    : com_silabs_ss_platform_api_content_core_IPropertyAccessListener.ValueChangedEvent
    '''
    pass


class com_silabs_ss_platform_api_content_core_IPropertyAccessListener_ValueChangedEvent(object):
  def init(self):
    self.iProperty = self.getIProperty()

    self.newValue = self.getNewValue()

    self.oldValue = self.getOldValue()

    self.source = self.getSource()

    self.propertyId = self.getPropertyId()

  def wasUnset(self):
    '''
    Tell whether the change was a result of invoking {@link IWriteablePropertyAccess#unset(str)}
    or {@link IWriteablePropertyAccess#clear()}.
    @return True or False
    '''
    return bool()


  def getIProperty(self):
    '''
    Get the resolved IProperty.  May be None.
    '''
    return com_silabs_ss_platform_api_content_core_IProperty()


  def getNewValue(self):
    '''
    Get the new semantic value of the property (e.g. the stored
    value or the property's or type's default value)
    @return value or None if underlying default is None
    '''
    return object()


  def getOldValue(self):
    '''
    Get the old semantic value of the property (e.g. the stored
    value or the property's or type's default value)
    @return value or None if underlying default is None
    '''
    return object()


  def getSource(self):
    '''
    Get the source object -- the owner of the property
    @return the source
    '''
    return object()


  def getPropertyId(self):
    '''
    Get the resolved property id -- {@link IProperty#getId()} or the key passed to
    e.g. IWriteablePropertyAccess#setValue() or IWriteablePropertyAccess#unset().
    '''
    return str()


  def toString(self):
    return str()


class com_silabs_ss_platform_api_content_core_IPropertyMapper(object):
  '''
  This interface defines how property keys are mapped to property objects.
   *
  '''
  def init(self):
    self.allProperties = self.getAllProperties()

  def findProperty(self, key):
    '''
    Find the property definition
    @param key property name (in some scope) or qualified id
    @type key: str
    @return property or None if property is not found
    '''
    return object()


  def findPropertyType(self, key):
    '''
    Find the type for the property with the given key.
    @param key property name (in some scope) or qualified id
    @type key: str
    @return property type or None if property is not found
    '''
    return object()


  def getAllProperties(self):
    '''
    Get all the properties available
    @return non-None array of qualified keys
    '''
    return list()


  def registerProperty(self, property
  ):
    '''
    Register a new property
    @param property

    @type property
    : com_silabs_ss_platform_api_content_core_IProperty
    '''
    pass


class com_silabs_ss_platform_api_content_core_IType(com_silabs_ss_platform_api_content_core_IDescriptor):
  '''
  This is the interface to a type, which is used to interpret properties
  via {@link IPropertyAccess}.  
   *
  '''
  def init(self):
    self.defaultValue = self.getDefaultValue()

    self.defaultValueLiteral = self.getDefaultValueLiteral()

    self.enumLabels = self.getEnumLabels()

    self.enumValues = self.getEnumValues()

  def equals(self, _object):
    '''
    Returns True if the {@code obj} has the same class and the same id.
    @see object#equals(object)
    '''
    return bool()


  def isBuiltin(self):
    '''
    Tell whether the descriptor (and entity) are considered built in to the product.
    This may be used to distinguish bundled descriptors vs. ones discovered on
    the user's system.
    @see CoreProperties#BUILTIN
    '''
    return bool()


  def isHidden(self):
    '''
    Tell whether the object is intended to be hidden from UI.
    @see CoreProperties#HIDDEN
    '''
    return bool()


  def isCompatibleWith(self, value):
    '''
    Tell if the given value is compatible with the given type
    @param value
    @type value: object
    @return True if compatible
    '''
    return bool()


  def isEnum(self):
    '''
    Tell whether the type is considered an enum.  This means,
    the metadata property TypeProperties#ENUM_VALUES is
    specified on the receiver.
    @return True or False
    @see TypeProperties#ENUM_VALUES
    '''
    return bool()


  def copy(self):
    '''
    Deep-copy the receiver
    @return new copy
    '''
    return com_silabs_ss_platform_api_content_core_IDescriptor()


  def getPropertyAccess(self):
    '''
    Get the full property access for the descriptor.
    '''
    return com_silabs_ss_platform_api_content_core_IPropertyAccess()


  def getPropertyMapper(self):
    '''
    Get the property mapper for the descriptor.
    '''
    return com_silabs_ss_platform_api_content_core_IPropertyMapper()


  def getRegistry(self):
    '''
    Get the owning registry.
    @return registry, non-None if descriptor is contained in a registry
    '''
    return com_silabs_ss_platform_api_content_core_registry_IRegistry()


  def hashCode(self):
    '''
    Returns the hash code of the receiver's id.
    @see object#hashCode()
    '''
    return int()


  def getProperty(self, key):
    '''
    Get the value of a property for the receiver, parent chain, or default if not defined in any of them.
    @param key name of a property in receiver's scope or fully qualified property name
    @type key: str
    @return value, in the Java type represented by the property's {@link IType}, or a string if the
    property is not registerted in the property scope.  The value may be the default if not explicitly
    set, or None if no such property is known in the receiver's or parent chain's properties
    @throws IllegalArgumentException if property value does not conform to type
    @see IPropertyAccess#getValue(str)
    '''
    return object()


  def getProperty(self, key, _com_silabs_ss_platform_api_content_core_IType):
    '''
    Get the value of a property for the receiver, parent chain, or default if not defined in any of them.
    @param key name of a property in receiver's scope or fully qualified property name
    @type key: str
    @return value, in the Java type represented by the property's {@link IType}, or a string if the
    property is not registerted in the property scope.  The value may be the default if not explicitly
    set, or None if no such property is known in the receiver's or parent chain's properties
    @throws IllegalArgumentException if property value does not conform to type
    @see IPropertyAccess#getValue(str)
    '''
    return object()


  def getProperty(self, key, _str):
    '''
    Get the value of a property for the receiver, parent chain, or default if not defined in any of them.
    @param key name of a property in receiver's scope or fully qualified property name
    @type key: str
    @return value, in the Java type represented by the property's {@link IType}, or a string if the
    property is not registerted in the property scope.  The value may be the default if not explicitly
    set, or None if no such property is known in the receiver's or parent chain's properties
    @throws IllegalArgumentException if property value does not conform to type
    @see IPropertyAccess#getValue(str)
    '''
    return object()


  def getDefaultValue(self):
    '''
    Get the Java value for the default value literal
    @return Java object or None
    '''
    return object()


  def getDescription(self):
    '''
    Human-readable description of the value for UI.

    This description is interpreted as HTML.

    @return description, never None (but may be blank)
    '''
    return str()


  def getId(self):
    '''
    The fully qualified identifer for this entity, including the ids of its parents, up to an implementation-defined root.
    '''
    return str()


  def getLabel(self):
    '''
    The label for the item, displayed in UI.
    @return label, never None
    '''
    return str()


  def getName(self):
    '''
    The unique name for this item within its parent.   See {@link #getId()} for the full unique identifier.
    '''
    return str()


  def toString(self):
    '''
    Return the id and label.
    @return str
    '''
    return str()


  def getLabel(self):
    '''
    Label for the value, if it appears in UI.  This label is plain text.

    This may be a derived value, sourced from the wrapped MDescriptor.  If
    that value is None or blank, a label is automatically
    generated from the {@link #getName()}.
    @return label, never None
    '''
    return str()


  def getDefaultValueLiteral(self):
    '''
    Get the string representing the default type value
    @return string
    '''
    return str()


  def gatherListProperty(self, _str):
    return list()


  def getEnumLabels(self):
    '''
    Get the list of labels for the values for the type
    @return None if not an enum, or an unmodifiable list
    @see TypeProperties#ENUM_LABELS
    '''
    return list()


  def getEnumValues(self):
    '''
    Get the list of allowed values for the type
    @return None if not an enum, or an unmodifiable list
    @see TypeProperties#ENUM_VALUES
    '''
    return list()


  def getInstallationPath(self):
    '''
    Get the path where the installation lives on the system.
    @return path
    @throws IOException if path cannot be resolved
    @see CoreProperties#INSTALLATION_PATH
    '''
    return org_eclipse_core_runtime_IPath()


class com_silabs_ss_platform_api_content_core_IVersionable(object):
  '''
  Base interface for model elements that have a version.
  '''
  def init(self):
    self.versionLabel = self.getVersionLabel()

    self.versionString = self.getVersionString()

    self.version = self.getVersion()

  def getVersionLabel(self):
    '''
    Get the user visible version
    @return original property string or None if no version defined
    '''
    return str()


  def getVersionString(self):
    '''
    Get the version string
    @return original property string or None if no version defined
    '''
    return str()


  def getVersion(self):
    '''
    Get the version object
    @return {@link Version} or None if no version defined
    '''
    return org_osgi_framework_Version()


class com_silabs_ss_platform_api_content_core_IVersionedDescriptor(com_silabs_ss_platform_api_content_core_IDescriptor):
  '''
  This is a describable that has a version.  In classes implementing this
  interface, the {@link #getId()} call provides the version number as well.
  The call {@link #getUnversionedId()} fetches the id as it was known in
  {@link IDescriptor}. 

  Note that {@link #getName()} still acts as before -- no version is appended. 
   *
  '''
  def init(self):
    self.id = self.getId()

    self.unversionedId = self.getUnversionedId()

  def equals(self, _object):
    '''
    Returns True if the {@code obj} has the same class and the same id.
    @see object#equals(object)
    '''
    return bool()


  def isBuiltin(self):
    '''
    Tell whether the descriptor (and entity) are considered built in to the product.
    This may be used to distinguish bundled descriptors vs. ones discovered on
    the user's system.
    @see CoreProperties#BUILTIN
    '''
    return bool()


  def isHidden(self):
    '''
    Tell whether the object is intended to be hidden from UI.
    @see CoreProperties#HIDDEN
    '''
    return bool()


  def copy(self):
    '''
    Deep-copy the receiver
    @return new copy
    '''
    return com_silabs_ss_platform_api_content_core_IDescriptor()


  def getPropertyAccess(self):
    '''
    Get the full property access for the descriptor.
    '''
    return com_silabs_ss_platform_api_content_core_IPropertyAccess()


  def getPropertyMapper(self):
    '''
    Get the property mapper for the descriptor.
    '''
    return com_silabs_ss_platform_api_content_core_IPropertyMapper()


  def getRegistry(self):
    '''
    Get the owning registry.
    @return registry, non-None if descriptor is contained in a registry
    '''
    return com_silabs_ss_platform_api_content_core_registry_IRegistry()


  def hashCode(self):
    '''
    Returns the hash code of the receiver's id.
    @see object#hashCode()
    '''
    return int()


  def getProperty(self, key):
    '''
    Get the value of a property for the receiver, parent chain, or default if not defined in any of them.
    @param key name of a property in receiver's scope or fully qualified property name
    @type key: str
    @return value, in the Java type represented by the property's {@link IType}, or a string if the
    property is not registerted in the property scope.  The value may be the default if not explicitly
    set, or None if no such property is known in the receiver's or parent chain's properties
    @throws IllegalArgumentException if property value does not conform to type
    @see IPropertyAccess#getValue(str)
    '''
    return object()


  def getProperty(self, key, _com_silabs_ss_platform_api_content_core_IType):
    '''
    Get the value of a property for the receiver, parent chain, or default if not defined in any of them.
    @param key name of a property in receiver's scope or fully qualified property name
    @type key: str
    @return value, in the Java type represented by the property's {@link IType}, or a string if the
    property is not registerted in the property scope.  The value may be the default if not explicitly
    set, or None if no such property is known in the receiver's or parent chain's properties
    @throws IllegalArgumentException if property value does not conform to type
    @see IPropertyAccess#getValue(str)
    '''
    return object()


  def getProperty(self, key, _str):
    '''
    Get the value of a property for the receiver, parent chain, or default if not defined in any of them.
    @param key name of a property in receiver's scope or fully qualified property name
    @type key: str
    @return value, in the Java type represented by the property's {@link IType}, or a string if the
    property is not registerted in the property scope.  The value may be the default if not explicitly
    set, or None if no such property is known in the receiver's or parent chain's properties
    @throws IllegalArgumentException if property value does not conform to type
    @see IPropertyAccess#getValue(str)
    '''
    return object()


  def getDescription(self):
    '''
    Human-readable description of the value for UI.

    This description is interpreted as HTML.

    @return description, never None (but may be blank)
    '''
    return str()


  def getId(self):
    '''
    The fully qualified identifer for this entity, including the ids of its parents, up to an implementation-defined root.
    '''
    return str()


  def getLabel(self):
    '''
    The label for the item, displayed in UI.
    @return label, never None
    '''
    return str()


  def getName(self):
    '''
    The unique name for this item within its parent.   See {@link #getId()} for the full unique identifier.
    '''
    return str()


  def toString(self):
    '''
    Return the id and label.
    @return str
    '''
    return str()


  def getLabel(self):
    '''
    Label for the value, if it appears in UI.  This label is plain text.

    This may be a derived value, sourced from the wrapped MDescriptor.  If
    that value is None or blank, a label is automatically
    generated from the {@link #getName()}.
    @return label, never None
    '''
    return str()


  def getId(self):
    '''
    Get the id and version catenated as '&lt;id&gt;:&lt;version&gt;'.
    @see IDescriptor#getId()
    @see IVersionable#getVersion()
    '''
    return str()


  def getUnversionedId(self):
    '''
    Get the id without the version.  This may be the same as {@link #getName()},
    which never has a version attached.
    @return id, which may not be unique
    '''
    return str()


  def gatherListProperty(self, _str):
    return list()


  def getInstallationPath(self):
    '''
    Get the path where the installation lives on the system.
    @return path
    @throws IOException if path cannot be resolved
    @see CoreProperties#INSTALLATION_PATH
    '''
    return org_eclipse_core_runtime_IPath()


class com_silabs_ss_platform_api_content_core_IWriteableDescriptor(com_silabs_ss_platform_api_content_core_IDescriptor):
  '''
  This is a describable which may be modified.

  Note: the id and name cannot be changed directly unless a specific
  subinterface allows it.
   *
  '''
  def init(self):
    self.propertyAccess = self.getPropertyAccess()

    self.propertyAccess = self.getPropertyAccess()

  def equals(self, _object):
    '''
    Returns True if the {@code obj} has the same class and the same id.
    @see object#equals(object)
    '''
    return bool()


  def isBuiltin(self):
    '''
    Tell whether the descriptor (and entity) are considered built in to the product.
    This may be used to distinguish bundled descriptors vs. ones discovered on
    the user's system.
    @see CoreProperties#BUILTIN
    '''
    return bool()


  def isHidden(self):
    '''
    Tell whether the object is intended to be hidden from UI.
    @see CoreProperties#HIDDEN
    '''
    return bool()


  def copy(self):
    '''
    Deep-copy the receiver
    @return new copy
    '''
    return com_silabs_ss_platform_api_content_core_IDescriptor()


  def getPropertyAccess(self):
    '''
    Get the full property access for the descriptor.
    '''
    return com_silabs_ss_platform_api_content_core_IPropertyAccess()


  def getPropertyMapper(self):
    '''
    Get the property mapper for the descriptor.
    '''
    return com_silabs_ss_platform_api_content_core_IPropertyMapper()


  def getPropertyAccess(self):
    '''
    Access the properties with write capability
    '''
    return com_silabs_ss_platform_api_content_core_IWriteablePropertyAccess()


  def getRegistry(self):
    '''
    Get the owning registry.
    @return registry, non-None if descriptor is contained in a registry
    '''
    return com_silabs_ss_platform_api_content_core_registry_IRegistry()


  def hashCode(self):
    '''
    Returns the hash code of the receiver's id.
    @see object#hashCode()
    '''
    return int()


  def getProperty(self, key):
    '''
    Get the value of a property for the receiver, parent chain, or default if not defined in any of them.
    @param key name of a property in receiver's scope or fully qualified property name
    @type key: str
    @return value, in the Java type represented by the property's {@link IType}, or a string if the
    property is not registerted in the property scope.  The value may be the default if not explicitly
    set, or None if no such property is known in the receiver's or parent chain's properties
    @throws IllegalArgumentException if property value does not conform to type
    @see IPropertyAccess#getValue(str)
    '''
    return object()


  def getProperty(self, key, _com_silabs_ss_platform_api_content_core_IType):
    '''
    Get the value of a property for the receiver, parent chain, or default if not defined in any of them.
    @param key name of a property in receiver's scope or fully qualified property name
    @type key: str
    @return value, in the Java type represented by the property's {@link IType}, or a string if the
    property is not registerted in the property scope.  The value may be the default if not explicitly
    set, or None if no such property is known in the receiver's or parent chain's properties
    @throws IllegalArgumentException if property value does not conform to type
    @see IPropertyAccess#getValue(str)
    '''
    return object()


  def getProperty(self, key, _str):
    '''
    Get the value of a property for the receiver, parent chain, or default if not defined in any of them.
    @param key name of a property in receiver's scope or fully qualified property name
    @type key: str
    @return value, in the Java type represented by the property's {@link IType}, or a string if the
    property is not registerted in the property scope.  The value may be the default if not explicitly
    set, or None if no such property is known in the receiver's or parent chain's properties
    @throws IllegalArgumentException if property value does not conform to type
    @see IPropertyAccess#getValue(str)
    '''
    return object()


  def setProperty(self, key, value):
    '''
    Set the value for a property for the receiver.
    	 *
    @param key name of a property in receiver's scope or fully qualified property name
    @param value conforming to the property's type or None to reset to default;
    note: the default does not expose the parent's value; use {@link IWriteablePropertyAccess#unset(str)}
    for that.
    @returns previous value of setting, or None if not previously defined
    @throws IllegalArgumentException if value is incompatible with type
    @see {@link IWriteablePropertyAccess#setValue(str, object)}
    @see {@link IWriteablePropertyAccess#unset(str)}

    @type key: str
    @type value: object
    '''
    return object()


  def setProperty(self, key, value, _com_silabs_ss_platform_api_content_core_IType):
    '''
    Set the value for a property for the receiver.
    	 *
    @param key name of a property in receiver's scope or fully qualified property name
    @param value conforming to the property's type or None to reset to default;
    note: the default does not expose the parent's value; use {@link IWriteablePropertyAccess#unset(str)}
    for that.
    @returns previous value of setting, or None if not previously defined
    @throws IllegalArgumentException if value is incompatible with type
    @see {@link IWriteablePropertyAccess#setValue(str, object)}
    @see {@link IWriteablePropertyAccess#unset(str)}

    @type key: str
    @type value: object
    '''
    return object()


  def getDescription(self):
    '''
    Human-readable description of the value for UI.

    This description is interpreted as HTML.

    @return description, never None (but may be blank)
    '''
    return str()


  def getId(self):
    '''
    The fully qualified identifer for this entity, including the ids of its parents, up to an implementation-defined root.
    '''
    return str()


  def getLabel(self):
    '''
    The label for the item, displayed in UI.
    @return label, never None
    '''
    return str()


  def getName(self):
    '''
    The unique name for this item within its parent.   See {@link #getId()} for the full unique identifier.
    '''
    return str()


  def toString(self):
    '''
    Return the id and label.
    @return str
    '''
    return str()


  def getLabel(self):
    '''
    Label for the value, if it appears in UI.  This label is plain text.

    This may be a derived value, sourced from the wrapped MDescriptor.  If
    that value is None or blank, a label is automatically
    generated from the {@link #getName()}.
    @return label, never None
    '''
    return str()


  def gatherListProperty(self, _str):
    return list()


  def getInstallationPath(self):
    '''
    Get the path where the installation lives on the system.
    @return path
    @throws IOException if path cannot be resolved
    @see CoreProperties#INSTALLATION_PATH
    '''
    return org_eclipse_core_runtime_IPath()


  def setDescription(self, description
  ):
    '''
    Set the human-readable HTML description
    @param description

    @type description
    : str
    '''
    pass


  def setId(self, id):
    '''
    Set the identifier of the descriptor.
    @param id
    @see #getId()

    @type id: str
    '''
    pass


  def setLabel(self, label
  ):
    '''
    Set the human-readable label
    @param label

    @type label
    : str
    '''
    pass


  def setName(self, name
  ):
    '''
    Set the name (the suffix of the id)
    @param name

    @type name
    : str
    '''
    pass


  def setProvidingBundleId(self, bundleId
  ):
    '''
    Override the bundle that created the receiver
    @param bundleId

    @type bundleId
    : str
    '''
    pass


  def setRegistry(self, registry):
    '''
    Set the owning registry (should only be called by IRegistry)
    @param registry new registry or None

    @type registry: com_silabs_ss_platform_api_content_core_registry_IRegistry
    '''
    pass


  def getPropertyAccess(self):
    '''
    Access the properties with write capability
    '''
    return com_silabs_ss_platform_api_content_core_IPropertyAccess()


class com_silabs_ss_platform_api_content_core_IWriteablePropertyAccess(com_silabs_ss_platform_api_content_core_IPropertyAccess):
  '''
  This extends the property accessor to allow setting properties, using
  property- and type-specific conversions.
   *
  '''
  def equalsProperties(self, other):
    '''
    Tell whether all the properties of the receiver match those of the argument.
    @param other
    @type other: com_silabs_ss_platform_api_content_core_IPropertyAccess
    @return True if all the same properties are defined and match in both accessors
    (including parents)
    '''
    return bool()


  def isDefinedLocally(self, id):
    '''
    Tell whether the given property is set on the receiver (only).
    This does not consider whether a parent defines the property.
    @param id property name for this scope or qualified name
    @type id: str
    @return True if the receiver has the setting, False if not.
    '''
    return bool()


  def isValueNonDefault(self, id):
    '''
    Tell whether the given property has a non-default value.
    This is equivalent to the logical OR of {@link #isDefinedLocally(str)} for
    the receiver and all parents.
    @param id property name for this scope or qualified name
    @type id: str
    @return True if the receiver has the setting, False if not.
    '''
    return bool()


  def unset(self, key):
    '''
    Unset the value of a property in the receiver.  This may expose
    the value of the property in the parent accessor.
    @param key key for property
    @returns True if property was previously set in the receiver

    @type key: str
    '''
    return bool()


  def getParentAccess(self):
    '''
    Get the parent property access.
    @return parent access or None
    '''
    return com_silabs_ss_platform_api_content_core_IPropertyAccess()


  def getMapper(self):
    '''
    Get the lookup for the accessor, i.e. the means
    whereby a property key is mapped to an MProperty.
    '''
    return com_silabs_ss_platform_api_content_core_IPropertyMapper()


  def getLocalValue(self, key):
    '''
    Get the value of a property in the receiver, only.
    If not set, return its default.
    @param key property name for this scope or qualified name
    @type key: str
    @return converted value (which may be the default), or None if no such property is defined
    in the receiver or any parent
    '''
    return object()


  def getValue(self, key):
    '''
    Get the value of a property in the receiver, or in any of its parent
    property accessors.  If not set in any of them, return its default.
    @param key property name for this scope or qualified name
    @type key: str
    @return converted value (which may be the default), or None if no such property is defined
    in the receiver or any parent
    '''
    return object()


  def setValue(self, key, value):
    '''
    Set the value of a property in the receiver.  This always sets
    a property in the receiver (to which {@link #isDefinedLocally(str)} will
    answer True), even if you set the default and thus always
    overrides the parent accessor.
    @param key key for property
    @param value new value, or None to set the default value
    @returns previous value of setting, or None if not previously defined
    @throws IllegalArgumentException if value is incompatible with type
    @throws UnsupportedOperationException if value is read-only

    @type key: str
    @type value: object
    '''
    return object()


  def getLocalValueString(self, key):
    '''
    Get the value of a property in the receiver, only, as a string.
    If not set, return its default.
    @param key property name for this scope or qualified name
    @type key: str
    @return str value (which may be the default), or None if no such property is defined
    in the receiver or any parent
    '''
    return str()


  def getValueString(self, key):
    '''
    Get the value of a property in the receiver, or in any of its parents, as a string.
    If not set in any of them, return its default.
    @param key property name for this scope or qualified name
    @type key: str
    @return str value (which may be the default), or None if no such property is defined
    in the receiver or any parent
    '''
    return str()


  def getLocallyDefinedPropertyKeys(self):
    '''
    Get all the locally defined property keys (ids).  This is the set
    of property ids for which properties have non-default values
    on the receiver (only).
    This does not consider whether a parent defines the property.
    @return non-None array of property keys
    '''
    return list()


  def getNonDefaultPropertyKeys(self):
    '''
    Get all the non-default property keys (ids).  This is the set
    of property ids for which properties have non-default values
    on the receiver or any parent.
    @return non-None array of property keys
    '''
    return list()


  def getRawPropertyMap(self):
    '''
    Get the raw (un-type-converted) unmodifiable view of all the properties set
    in the receiver (for which {@link #isDefinedLocally(str)} returns True).
    @return map of key names to string values, never None
    '''
    return java_util_Map()


  def addListener(self, listener
  ):
    '''
    Add a listener for property changes (duplicates ignored)
    @param listener

    @type listener
    : com_silabs_ss_platform_api_content_core_IPropertyAccessListener
    '''
    pass


  def removeListener(self, listener
  ):
    '''
    Remove a listener for property changes (missing ignored)
    @param listener

    @type listener
    : com_silabs_ss_platform_api_content_core_IPropertyAccessListener
    '''
    pass


  def clear(self):
    '''
    Remove all property settings, exposing values from the parent accessor.

    Note: this also removes read-only values.
    '''
    pass


  def copyFrom(self, map
  ):
    '''
    Replace values of properties set in the other key/value store into
    this one.

    Note: this also replaces read-only values.
    @param map

    @type map
    : com_silabs_ss_platform_api_content_core_IPropertyAccess
    '''
    pass


  def copyFrom(self, map
  ):
    '''
    Replace values of properties set in the other key/value store into
    this one.

    Note: this also replaces read-only values.
    @param map

    @type map
    : java_util_Map
    '''
    pass


  def copyInto(self, copy):
    '''
    Copy relevant fields from the receiver into a new descriptor
    @param copy the other descriptor to update

    @type copy: com_silabs_ss_platform_api_content_core_IWriteableDescriptor
    '''
    pass


  def fireEvent(self, event
  ):
    '''
    Send an event about a property change (normally fired automatically
    via #setValue, #unset, etc).
    @param event

    @type event
    : com_silabs_ss_platform_api_content_core_IPropertyAccessListener_ValueChangedEvent
    '''
    pass


  def setWarnOnUnknownProperty(self, warn
  ):
    '''
    Tell whether diagnostics will be logged when an attempt is made to read or
    write an unknown property key.
    @param warn

    @type warn
    : bool
    '''
    pass


class com_silabs_ss_platform_api_content_core_asset_IAsset(object):
  '''
  This interface represents an asset.  An asset is something that lives on the server and can
  be downloaded for local/offline use.
  '''
  def init(self):
    self.diskSizeKB = self.getDiskSizeKB()

    self.downloadSizeKB = self.getDownloadSizeKB()

    self.localPath = self.getLocalPath()

    self.remotePath = self.getRemotePath()

    self.version = self.getVersion()

    self.uRI = self.getURI()

    self.remoteChangelogURL = self.getRemoteChangelogURL()

  def isDirectory(self):
    '''
    Is this a directory (rather than a file).
    @return True if directory, False if file.
    '''
    return bool()


  def getDiskSizeKB(self):
    '''
    Returns the size of the asset on disk.
    @return the size of the asset on disk.
    '''
    return float()


  def getDownloadSizeKB(self):
    '''
    Returns the download size of the asset.
    @return the download size of the asset.
    '''
    return float()


  def getLocalPath(self):
    '''
    Returns the relative path to the local asset.  For files this is
    the same as the remote path, but for directories it will refer to the
    uncompressed directory.
    @return the relative path to the local asset.
    '''
    return str()


  def getRemotePath(self):
    '''
    Returns the relative path to the remote asset.  For files this is
    the same as the local path, but for directories it will refer to the
    compressed directory.
    @return the relative path to the remote asset.
    '''
    return str()


  def getVersion(self):
    '''
    Returns the version of the asset.
    @return the version of the asset.
    '''
    return str()


  def getURI(self):
    '''
    Returns the asset URI.
    @return the asset URI.
    '''
    return java_net_URI()


  def getRemoteChangelogURL(self):
    '''
    Returns the remote URL of the changelog for the asset, if any.  Note that this is the remote
    changelog which doesn't necessary match the local asset, if any.  This is meant to be used
    by the updater only.
    @return the remote URL of the changelog for the asset, or None if none.
    '''
    return java_net_URL()


class com_silabs_ss_platform_api_content_core_asset_IAssetContainer(object):
  '''
  *
  '''
  def getAssets(self, type):
    '''
    Get a list of assets of the specified type for this container.

    See "*Properties.ASSET_TYPE_*" for allowable asset types
    @param type the type (or defined property) for the desired assets; None returns all assets.
    @type type: str
    @return a list of URI assets, never None
    '''
    return list()


class com_silabs_ss_platform_api_content_core_manager_IDescribableVersionedEntity(com_silabs_ss_platform_api_content_core_manager_IDescriptorEntity):
  '''
  *
  '''
  def init(self):
    self.id = self.getId()

    self.unversionedId = self.getUnversionedId()

  def equals(self, _object):
    '''
    Returns True if the {@code obj} has the same class and the same id.
    @see object#equals(object)
    '''
    return bool()


  def isBuiltin(self):
    '''
    Tell whether the descriptor (and entity) are considered built in to the product.
    This may be used to distinguish bundled descriptors vs. ones discovered on
    the user's system.
    @see CoreProperties#BUILTIN
    '''
    return bool()


  def isHidden(self):
    '''
    Tell whether the object is intended to be hidden from UI.
    @see CoreProperties#HIDDEN
    '''
    return bool()


  def copy(self):
    '''
    Deep-copy the receiver
    @return new copy
    '''
    return com_silabs_ss_platform_api_content_core_IDescriptor()


  def getDescriptor(self):
    return com_silabs_ss_platform_api_content_core_IDescriptor()


  def getPropertyAccess(self):
    '''
    Get the full property access for the descriptor.
    '''
    return com_silabs_ss_platform_api_content_core_IPropertyAccess()


  def getPropertyMapper(self):
    '''
    Get the property mapper for the descriptor.
    '''
    return com_silabs_ss_platform_api_content_core_IPropertyMapper()


  def getManager(self):
    return com_silabs_ss_platform_api_content_core_manager_IManager()


  def getRegistry(self):
    '''
    Get the owning registry.
    @return registry, non-None if descriptor is contained in a registry
    '''
    return com_silabs_ss_platform_api_content_core_registry_IRegistry()


  def hashCode(self):
    '''
    Returns the hash code of the receiver's id.
    @see object#hashCode()
    '''
    return int()


  def getProperty(self, key):
    '''
    Get the value of a property for the receiver, parent chain, or default if not defined in any of them.
    @param key name of a property in receiver's scope or fully qualified property name
    @type key: str
    @return value, in the Java type represented by the property's {@link IType}, or a string if the
    property is not registerted in the property scope.  The value may be the default if not explicitly
    set, or None if no such property is known in the receiver's or parent chain's properties
    @throws IllegalArgumentException if property value does not conform to type
    @see IPropertyAccess#getValue(str)
    '''
    return object()


  def getProperty(self, key, _com_silabs_ss_platform_api_content_core_IType):
    '''
    Get the value of a property for the receiver, parent chain, or default if not defined in any of them.
    @param key name of a property in receiver's scope or fully qualified property name
    @type key: str
    @return value, in the Java type represented by the property's {@link IType}, or a string if the
    property is not registerted in the property scope.  The value may be the default if not explicitly
    set, or None if no such property is known in the receiver's or parent chain's properties
    @throws IllegalArgumentException if property value does not conform to type
    @see IPropertyAccess#getValue(str)
    '''
    return object()


  def getProperty(self, key, _str):
    '''
    Get the value of a property for the receiver, parent chain, or default if not defined in any of them.
    @param key name of a property in receiver's scope or fully qualified property name
    @type key: str
    @return value, in the Java type represented by the property's {@link IType}, or a string if the
    property is not registerted in the property scope.  The value may be the default if not explicitly
    set, or None if no such property is known in the receiver's or parent chain's properties
    @throws IllegalArgumentException if property value does not conform to type
    @see IPropertyAccess#getValue(str)
    '''
    return object()


  def getDescription(self):
    '''
    Human-readable description of the value for UI.

    This description is interpreted as HTML.

    @return description, never None (but may be blank)
    '''
    return str()


  def getId(self):
    '''
    The fully qualified identifer for this entity, including the ids of its parents, up to an implementation-defined root.
    '''
    return str()


  def getLabel(self):
    '''
    The label for the item, displayed in UI.
    @return label, never None
    '''
    return str()


  def getName(self):
    '''
    The unique name for this item within its parent.   See {@link #getId()} for the full unique identifier.
    '''
    return str()


  def toString(self):
    '''
    Return the id and label.
    @return str
    '''
    return str()


  def getLabel(self):
    '''
    Label for the value, if it appears in UI.  This label is plain text.

    This may be a derived value, sourced from the wrapped MDescriptor.  If
    that value is None or blank, a label is automatically
    generated from the {@link #getName()}.
    @return label, never None
    '''
    return str()


  def getId(self):
    '''
    Get the id and version catenated as '&lt;id&gt;:&lt;version&gt;'.
    @see IDescriptor#getId()
    @see IVersionable#getVersion()
    '''
    return str()


  def getUnversionedId(self):
    '''
    Get the id without the version.
    @return id which may not be unique
    '''
    return str()


  def gatherListProperty(self, _str):
    return list()


  def getInstallationPath(self):
    '''
    Get the path where the installation lives on the system.
    @return path
    @throws IOException if path cannot be resolved
    @see CoreProperties#INSTALLATION_PATH
    '''
    return org_eclipse_core_runtime_IPath()


class com_silabs_ss_platform_api_content_core_manager_IDescriptorEntity(com_silabs_ss_platform_api_content_core_IDescriptor):
  '''
  Base interface for an entity -- an actual instance of an object backed
  by a descriptor.  The entity exposes the descriptor's API through itself, for 
  convenience.  

  An entity contains a distinct set of properties which nay override those
  from its descriptor.
   *
  '''
  def init(self):
    self.descriptor = self.getDescriptor()

    self.manager = self.getManager()

  def equals(self, _object):
    '''
    Returns True if the {@code obj} has the same class and the same id.
    @see object#equals(object)
    '''
    return bool()


  def isBuiltin(self):
    '''
    Tell whether the descriptor (and entity) are considered built in to the product.
    This may be used to distinguish bundled descriptors vs. ones discovered on
    the user's system.
    @see CoreProperties#BUILTIN
    '''
    return bool()


  def isHidden(self):
    '''
    Tell whether the object is intended to be hidden from UI.
    @see CoreProperties#HIDDEN
    '''
    return bool()


  def copy(self):
    '''
    Deep-copy the receiver
    @return new copy
    '''
    return com_silabs_ss_platform_api_content_core_IDescriptor()


  def getDescriptor(self):
    return com_silabs_ss_platform_api_content_core_IDescriptor()


  def getPropertyAccess(self):
    '''
    Get the full property access for the descriptor.
    '''
    return com_silabs_ss_platform_api_content_core_IPropertyAccess()


  def getPropertyMapper(self):
    '''
    Get the property mapper for the descriptor.
    '''
    return com_silabs_ss_platform_api_content_core_IPropertyMapper()


  def getManager(self):
    return com_silabs_ss_platform_api_content_core_manager_IManager()


  def getRegistry(self):
    '''
    Get the owning registry.
    @return registry, non-None if descriptor is contained in a registry
    '''
    return com_silabs_ss_platform_api_content_core_registry_IRegistry()


  def hashCode(self):
    '''
    Returns the hash code of the receiver's id.
    @see object#hashCode()
    '''
    return int()


  def getProperty(self, key):
    '''
    Get the value of a property for the receiver, parent chain, or default if not defined in any of them.
    @param key name of a property in receiver's scope or fully qualified property name
    @type key: str
    @return value, in the Java type represented by the property's {@link IType}, or a string if the
    property is not registerted in the property scope.  The value may be the default if not explicitly
    set, or None if no such property is known in the receiver's or parent chain's properties
    @throws IllegalArgumentException if property value does not conform to type
    @see IPropertyAccess#getValue(str)
    '''
    return object()


  def getProperty(self, key, _com_silabs_ss_platform_api_content_core_IType):
    '''
    Get the value of a property for the receiver, parent chain, or default if not defined in any of them.
    @param key name of a property in receiver's scope or fully qualified property name
    @type key: str
    @return value, in the Java type represented by the property's {@link IType}, or a string if the
    property is not registerted in the property scope.  The value may be the default if not explicitly
    set, or None if no such property is known in the receiver's or parent chain's properties
    @throws IllegalArgumentException if property value does not conform to type
    @see IPropertyAccess#getValue(str)
    '''
    return object()


  def getProperty(self, key, _str):
    '''
    Get the value of a property for the receiver, parent chain, or default if not defined in any of them.
    @param key name of a property in receiver's scope or fully qualified property name
    @type key: str
    @return value, in the Java type represented by the property's {@link IType}, or a string if the
    property is not registerted in the property scope.  The value may be the default if not explicitly
    set, or None if no such property is known in the receiver's or parent chain's properties
    @throws IllegalArgumentException if property value does not conform to type
    @see IPropertyAccess#getValue(str)
    '''
    return object()


  def getDescription(self):
    '''
    Human-readable description of the value for UI.

    This description is interpreted as HTML.

    @return description, never None (but may be blank)
    '''
    return str()


  def getId(self):
    '''
    The fully qualified identifer for this entity, including the ids of its parents, up to an implementation-defined root.
    '''
    return str()


  def getLabel(self):
    '''
    The label for the item, displayed in UI.
    @return label, never None
    '''
    return str()


  def getName(self):
    '''
    The unique name for this item within its parent.   See {@link #getId()} for the full unique identifier.
    '''
    return str()


  def toString(self):
    '''
    Return the id and label.
    @return str
    '''
    return str()


  def getLabel(self):
    '''
    Label for the value, if it appears in UI.  This label is plain text.

    This may be a derived value, sourced from the wrapped MDescriptor.  If
    that value is None or blank, a label is automatically
    generated from the {@link #getName()}.
    @return label, never None
    '''
    return str()


  def gatherListProperty(self, _str):
    return list()


  def getInstallationPath(self):
    '''
    Get the path where the installation lives on the system.
    @return path
    @throws IOException if path cannot be resolved
    @see CoreProperties#INSTALLATION_PATH
    '''
    return org_eclipse_core_runtime_IPath()


class com_silabs_ss_platform_api_content_core_manager_IDescriptorManager(com_silabs_ss_platform_api_content_core_registry_IRegistry):
  '''
  This describes the interface to a common manager, which tracks
  Descriptors, high-level metadata for objects used in the system. 

  Descriptors are identified by a unique identifier (
  {@link IDescriptor#getId()}). This id is used to look up descriptors.
  Descriptors may be registered by extension point, explicit registration, or
  other means. Ones not registered by extension are persisted in the Eclipse configuration.
  @param 
  @param 
  @param 
  @param 
  @param 
  *
  '''
  def init(self):
    self.config = self.getConfig()

    self.registry = self.getRegistry()

  def isLoaded(self):
    '''
    Return whether this registry has finished loading.
    @return 
    '''
    return bool()


  def registerDescriptor(self, _com_silabs_ss_platform_api_content_core_IDescriptor):
    '''
    Register a descriptor, firing {@link IRegistryListener#descriptorAdded(com.silabs.ss.platform.api.content.core.IDescribable)}
    @return True if descriptor is new, False if the new descriptor replaced another
    '''
    return bool()


  def removeDescriptor(self, _com_silabs_ss_platform_api_content_core_IDescriptor):
    '''
    Remove a descriptor, firing {@link IRegistryListener#descriptorRemoved(com.silabs.ss.platform.api.content.core.IDescribable)}
    @return True if descriptor was registered before
    '''
    return bool()


  def createDescriptor(self):
    '''
    Create a new descriptor with an empty model.
    '''
    return com_silabs_ss_platform_api_content_core_IDescriptor()


  def createDescriptor(self, _com_silabs_ss_platform_api_content_core_model_MDescriptor):
    '''
    Create a new descriptor with an empty model.
    '''
    return com_silabs_ss_platform_api_content_core_IDescriptor()


  def findCompatibleDescriptor(self, idOrName):
    '''
    Return the descriptors with the given id and compatible with the API of the given version.
    For unversioned descriptors, returns a value only if the id has no version.

    This will find an {@link IVersionedDescriptor} with the given id and compatible with its version,
    or a non-versioned descriptor with this id.
    @param idOrName identifier or name of a descriptor, with or without a version
    @type idOrName: str
    @return nearest compatible descriptor or None
    '''
    return com_silabs_ss_platform_api_content_core_IDescriptor()


  def findCompatibleDescriptor(self, idOrName, _org_osgi_framework_Version):
    '''
    Return the descriptors with the given id and compatible with the API of the given version.
    For unversioned descriptors, returns a value only if the id has no version.

    This will find an {@link IVersionedDescriptor} with the given id and compatible with its version,
    or a non-versioned descriptor with this id.
    @param idOrName identifier or name of a descriptor, with or without a version
    @type idOrName: str
    @return nearest compatible descriptor or None
    '''
    return com_silabs_ss_platform_api_content_core_IDescriptor()


  def findDescriptor(self, _str):
    '''
    Find a descriptor with the given unique id in the registry.
    @return descriptor or None
    '''
    return com_silabs_ss_platform_api_content_core_IDescriptor()


  def findDescriptor(self, _str, _org_osgi_framework_Version):
    '''
    Find a descriptor with the given unique id in the registry.
    @return descriptor or None
    '''
    return com_silabs_ss_platform_api_content_core_IDescriptor()


  def detectDescriptors(self, ignoreExisting, parameters, monitor):
    '''
    Scan for recognized descriptors using registered {@link IDetector} instances.
    In addition, the {@link CoreProperties#BUILTIN} property should be set
    to indicate whether a descriptor is built in to the product.
    @param ignoreExisting if True, filter out descriptors which are already registered
    @param parameters map of key/value pairs controlling the detector -- see {@link IDetector}
    @param monitor monitor for tracking progress and cancellation
    @type ignoreExisting: bool
    @type parameters: java_util_Map
    @type monitor: org_eclipse_core_runtime_IProgressMonitor
    @return list of descriptors, never None
    @throws OperationCanceledException if monitor is canceled
    '''
    return list()


  def detectDescriptors(self, ignoreExisting, parameters):
    '''
    Scan for recognized descriptors using registered {@link IDetector} instances.
    In addition, the {@link CoreProperties#BUILTIN} property should be set
    to indicate whether a descriptor is built in to the product.
    @param ignoreExisting if True, filter out descriptors which are already registered
    @param parameters map of key/value pairs controlling the detector -- see {@link IDetector}
    @param monitor monitor for tracking progress and cancellation
    @type ignoreExisting: bool
    @type parameters: org_eclipse_core_runtime_IProgressMonitor
    @return list of descriptors, never None
    @throws OperationCanceledException if monitor is canceled
    '''
    return list()


  def findAllDescriptorsAnyVersionFor(self, ids):
    '''
    Get an array of descriptors for the given ids, ignoring versions for any {@link IVersionedDescriptor}.

    @param ids the array of ids to find
    @type ids: list
    @return an array of descriptors, never None, but possibly shorter than the length of descs
    '''
    return list()


  def findAllDescriptorsFor(self, ids):
    '''
    Get an array of descriptors for the given ids.

    @param ids the array of ids to find
    @type ids: list
    @return an array of descriptors, never None, but possibly shorter than the length of descs
    '''
    return list()


  def findDescriptorsAnyVersion(self, unversionedId):
    '''
    Return the descriptors with the given id and any version.

    This will find an {@link IVersionedDescriptor} with the given unversioned id,
    or a non-versioned descriptor with this id.
    @param unversionedId identifier of a descriptor
    @type unversionedId: str
    @return array, never None, in no particular order
    '''
    return list()


  def findDescriptorsFromName(self, name):
    '''
    Return the descriptors that have the same name as the input.
    @param name name of some descriptors
    @type name: str
    @return array, never None, in no particular order
    '''
    return list()


  def findDescriptorsInRange(self, unversionedId, minVersion, maxVersion):
    '''
    Return the descriptors with the given id and version range.

    This will find an {@link IVersionedDescriptor} with a version in the given range,
    or a non-versioned descriptor if {@value minVersion} and {@value maxVersion} are None.
    @param unversionedId identifier of descriptor
    @param minVersion lower limit, inclusive (version >= minVersion); may be None to fetch all from unversioned or 0.0 to maxVersion
    @param maxVersion upper limit, exclusive (version None to fetch all greater than minVersion

    @type unversionedId: str
    @type minVersion: org_osgi_framework_Version
    @type maxVersion: org_osgi_framework_Version
    @return array, never None, in no particular order
    '''
    return list()


  def getAllDescriptors(self):
    '''
    Get all the descriptors in the registry.
    @return array, never None
    '''
    return list()


  def getDetectedDescriptors(self):
    '''
    Get the descriptors considered to be detected -- those that have been added
    through a detector and will be recreated every time 
    {@link #detectDescriptors(boolean, IProgressMonitor)} is run.
    '''
    return list()


  def getTransientDescriptors(self):
    '''
    Get the descriptors considered to be transient -- those that have been
    registered but are not otherwise known to be recreated on the next workspace launch.
    Such descriptors will be persisted.
    '''
    return list()


  def scanForNewDescriptors(self):
    '''
    Scan for new descriptors.
    @return the descriptors that were found
    '''
    return list()


  def scanForNewDescriptors(self, _java_io_File):
    '''
    Scan for new descriptors.
    @return the descriptors that were found
    '''
    return list()


  def getConfig(self):
    '''
    Get the configuration
    @return non-None configuration used to instantiate the manager
    '''
    return com_silabs_ss_platform_api_content_core_manager_IDescriptorManagerConfig()


  def getRegistry(self):
    '''
    Get the registry the manager controls
    @return registry, never None
    '''
    return com_silabs_ss_platform_api_content_core_registry_IRegistry()


  def getRegistryConfig(self):
    '''
    Get the configuration for the registry
    @return configuration, never None
    '''
    return com_silabs_ss_platform_api_content_core_registry_IRegistryConfig()


  def getRegistryPlugins(self):
    '''
    Return the list of registry plugins associated with this registry.
    '''
    return list()


  def getId(self):
    '''
    Get the unique instance id of the registry
    @return counter
    '''
    return int()


  def invokeBatchOperation(self, _java_util_concurrent_Callable):
    return object()


  def getName(self):
    '''
    Get the name of this registry.
    @return name
    '''
    return str()


  def getNoneDescriptorId(self):
    '''
    Return the none descriptor id if there is one.
    @return a string id or None if there is no none descriptor.
    '''
    return str()


  def getAllDescriptorIds(self):
    '''
    Get the ids of all the descriptors in the registry.
    @return array, never None
    '''
    return list()


  def getPreferredDescriptorMapping(self):
    return java_util_Map()


  def ensureSync(self):
    '''
    Ensure the manager's entities and descriptors are synchronized, in the event 
    the manager utilizes lazy loading.

    This will force any outstanding {@link IManagerListener}s to be fired.

    (note: clients should not need to call this, though other managers might)
    '''
    pass


  def refresh(self):
    '''
    Refresh the manager, re-invoking detection for new descriptors.
    '''
    pass


  def resetSync(self):
    '''
    Clear the manager's sync state, so that the next #ensureSync() will do work.

    (note: clients should not need to call this, though other managers might)
    '''
    pass


  def scheduleInitialEnsureSyncJob(self):
    '''
    Schedule a job that invokes {@link #ensureSync()}.  Every #ensureSync()
    call will block waiting for this job to finish.
    '''
    pass


  def addRegistryListener(self, listener
  ):
    '''
    Add a listener to the registry.  Ignore duplicates.
    @param listener

    @type listener
    : com_silabs_ss_platform_api_content_core_registry_IRegistryListener
    '''
    pass


  def ensureSync(self):
    '''
    Ensure the registry's descriptors are synchronized, in the event 
    the registry utilizes lazy loading.

    Note for threading: Registries support single thread re-entrancy during
    loading. They do not support multithreaded re-entrancy during reloading.
    Adding threaded re-entrancy will very quickly and typically consistently
    cause deadlocks.

    This will force any outstanding {@link IRegistryListener}s to be fired.

    (note: clients should not need to call this, though other registry implementations might)
    '''
    pass


  def loadPrefs(self):
    '''
    Load the customized and user descriptors from preferences
    '''
    pass


  def refresh(self):
    '''
    Refresh the registry (scanning for new descriptors) and refresh any
    known descriptors.
    '''
    pass


  def refreshDescriptor(self, _com_silabs_ss_platform_api_content_core_IDescriptor):
    '''
    Refresh a single descriptor from the registry. Note that this will 
    not scan for any new descriptors.
    '''
    pass


  def registerDetector(self, detector
  ):
    '''
    Add a detector for descriptors, invoked via {@link #detectDescriptors(boolean, IProgressMonitor)}
    @param detector

    @type detector
    : com_silabs_ss_platform_api_content_core_registry_IDetector
    '''
    pass


  def removeDetector(self, detector
  ):
    '''
    Remove a detector for descriptors, invoked via {@link #detectDescriptors(boolean, IProgressMonitor)}
    @param detector

    @type detector
    : com_silabs_ss_platform_api_content_core_registry_IDetector
    '''
    pass


  def removeRegistryListener(self, listener
  ):
    '''
    Remove a listener to the registry.  Ignore missing listener.
    @param listener

    @type listener
    : com_silabs_ss_platform_api_content_core_registry_IRegistryListener
    '''
    pass


  def resetRegistry(self):
    '''
    Reset the registry, throwing away its preferences, all transient descriptors, removing all
    listeners, and resetting its sync state.
    '''
    pass


  def resetSync(self):
    '''
    Clear the registry's sync state, so that the next #ensureSync() will do work.

    (note: clients should not need to call this, though other registry implementations might)
    '''
    pass


  def savePrefs(self):
    '''
    Save the customized and user descriptors to preferences
    '''
    pass


class com_silabs_ss_platform_api_content_core_manager_IDescriptorManagerConfig(com_silabs_ss_platform_api_content_core_registry_IRegistryConfig):
  '''
  *
  @param 
  '''
  def init(self):
    self.configurationElementFilter = self.getConfigurationElementFilter()

    self.extensionName = self.getExtensionName()

    self.syncJobLabel = self.getSyncJobLabel()

  def distinctInstallPaths(self):
    '''
    Whether the descriptors in this registry cannot have the same install paths. 
    Multiple None/empty install paths can still be added to the registry.
    @return 
    '''
    return bool()


  def isTestMode(self):
    '''
    Tell whether the registry is in test mode.  This usually means an
    alternate set of extensions is scanned (if extensions are used) and
    that prefs are not loaded and saved.
    @return 
    '''
    return bool()


  def createRegistry(self, extMgr):
    '''
    Create the concrete instance of the descriptor registry.
    @param extMgr
    @type extMgr: com_silabs_ss_platform_api_rcp_core_extensions_IExtensionManager
    @return new registry, never None
    '''
    return com_silabs_ss_platform_api_content_core_registry_IRegistry()


  def getConfigurationElementFilter(self):
    '''
    Get the filter that controls what extension instances influence this manager
    @return filter, never None
    '''
    return com_silabs_ss_platform_api_rcp_core_ITypedFilter()


  def getStatusReporter(self):
    '''
    Get the reporter for issues arising from the registry
    '''
    return com_silabs_ss_platform_api_rcp_core_StatusReporter()


  def getDescriptorClass(self):
    '''
    Get the concrete class for the descriptor, for instantiation #createDescriptor()
    @return concrete class
    '''
    return java_lang_Class()


  def getDescriptorIntfClass(self):
    '''
    Get the class of the interface for the descriptor (for use in generating arrays)
    '''
    return java_lang_Class()


  def getExtensionName(self):
    '''
    Get the name of the extension controlling the manager (without plugin)
    @return extension name
    '''
    return str()


  def getSyncJobLabel(self):
    '''
    Get the user-visible label for a manager
    @return str
    '''
    return str()


  def getBundleId(self):
    '''
    Get the bundle id of the owner, for use in reporting status and finding extensions
    @return bundle id
    '''
    return str()


  def getDetectionJobLabel(self):
    '''
    Get the human-readable name of the job that detects descriptors
    @return label like "Detecting General Tso's Chickens..."
    '''
    return str()


  def getNoneDescriptorId(self):
    '''
    Get the none descriptor id
    @return the none descriptor id or None if there isn't one
    '''
    return str()


  def getPreferenceScopeId(self):
    '''
    Get the id of the pref scope storing information for the manager
    @return str, never None
    '''
    return str()


  def getPreferredDescriptorMapping(self):
    '''
    Get the location of the preferred descriptor mapping file
    @return path to file or None
    '''
    return str()


  def getRegistryPluginProviders(self):
    return list()


  def getPackageTypes(self):
    '''
    Get the package types that this registry uses.
    @return list of packages
    '''
    return list()


class com_silabs_ss_platform_api_content_core_manager_IEntityManager(object):
  '''
  This interface manages the mapping of descriptors to entities.

  Entities are created from Descriptors once they are enabled
  using {@link #enable(IDescriptor...)}.  An {@link IEntityProvider} must be available
  and registered to instantiate the Entity.  

  The list of enabled Entities is persisted in the Eclipse configuration.
   *
  '''
  def init(self):
    self.all = self.getAll()

    self.defaultSelection = self.getDefaultSelection()

    self.allIds = self.getAllIds()

  def isEnabled(self, desc):
    '''
    Tell whether an entity with the given descriptor is currently enabled. If the
    entity is unknown, then this method will return False.
    @param desc
    @type desc: com_silabs_ss_platform_api_content_core_IDescriptor
    @return True if descriptor's entity is enabled
    '''
    return bool()


  def isEnabled(self, desc):
    '''
    Tell whether an entity with the given descriptor is currently enabled. If the
    entity is unknown, then this method will return False.
    @param desc
    @type desc: str
    @return True if descriptor's entity is enabled
    '''
    return bool()


  def getAllDescriptorsFor(self, ents):
    '''
    Get the array of descriptors for the given entities.

    @param ents the array of entities to check
    @type ents: list
    @return an array of descriptors, never None, same length as ents
    '''
    return list()


  def find(self, desc):
    '''
    Look up the enabled entity with the given descriptor id.

    This method does not log or report errors; use {@link #get(Descriptor)}
    for a version that can report errors
    @param desc the descriptor to check
    @type desc: com_silabs_ss_platform_api_content_core_IDescriptor
    @return the entity, if it is installed, or None if the entity is
    not installed, no such entity matches, or there was an error in the provider instantiating the entity
    '''
    return com_silabs_ss_platform_api_content_core_manager_IDescriptorEntity()


  def find(self, desc):
    '''
    Look up the enabled entity with the given descriptor id.

    This method does not log or report errors; use {@link #get(Descriptor)}
    for a version that can report errors
    @param desc the descriptor to check
    @type desc: str
    @return the entity, if it is installed, or None if the entity is
    not installed, no such entity matches, or there was an error in the provider instantiating the entity
    '''
    return com_silabs_ss_platform_api_content_core_manager_IDescriptorEntity()


  def findCompatible(self, id):
    '''
    Get the nearest compatible version of an enabled entity with the given id and 
    compatible with the id's version
    @param id the id; if no version present, the newest versioned entity is returned
    @type id: str
    @return entity or None
    '''
    return com_silabs_ss_platform_api_content_core_manager_IDescriptorEntity()


  def get(self, id):
    '''
    Get the enabled entity for the given descriptor.  Throws an exception if the
    entity is missing or not enabled.

    @param id unique id for entity
    @type id: com_silabs_ss_platform_api_content_core_IDescriptor
    @return the entity, if enabled, never None
    @throws CoreException if an entity is not available, or is installed but cannot be instantiated due to some error
    condition
    '''
    return com_silabs_ss_platform_api_content_core_manager_IDescriptorEntity()


  def get(self, id):
    '''
    Get the enabled entity for the given descriptor.  Throws an exception if the
    entity is missing or not enabled.

    @param id unique id for entity
    @type id: str
    @return the entity, if enabled, never None
    @throws CoreException if an entity is not available, or is installed but cannot be instantiated due to some error
    condition
    '''
    return com_silabs_ss_platform_api_content_core_manager_IDescriptorEntity()


  def getCompatible(self, id):
    '''
    Get the nearest compatible version of an enabled entity with the given id and 
    compatible with the id's version
    @param id the id; if no version present, the newest enabled entity is returned
    @type id: str
    @return array of entities, never None
    @throws CoreException if no version matches or is enabled
    '''
    return com_silabs_ss_platform_api_content_core_manager_IDescriptorEntity()


  def getAll(self):
    '''
    Get an array of the entities enabled in the system.
    @return array, never None
    '''
    return list()


  def getAllFor(self, descs):
    '''
    Get the array of enabled entities for the given descriptors.

    @param descs the array of descriptors to check
    @type descs: list
    @return an array of enabled entities, never None, but possibly shorter than the length of descs
    @throws CoreException if one or more entities is installed, but cannot be instantiated due to some error
    condition
    '''
    return list()


  def getDefaultSelection(self):
    '''
    Get a user preference for the default entities to use
    (e.g. in a wizard, or as a fallback)
    @return array, never None
    '''
    return list()


  def findEnabledIds(self):
    '''
    Get an array of the ids of entities enabled in the system. The
    manager is not synced before this call and some returned entity
    ids may fail to enable.

    This will *not* create any entities and can safely be called at any 
    time.
    @return array, never None
    '''
    return list()


  def getAllIds(self):
    '''
    Get an array of the ids of entities enabled in the system. This
    will ensure the entities are synced and may take a while. This
    set of ids is guaranteed to be correct. For a faster but less
    reliable set, use {@link #findEnabledIds()}.
    @return array, never None
    '''
    return list()


  def disable(self, descs):
    '''
    Disable entities for the given descriptors, making {@link Entity} instances no longer
    available from the methods in this interface.
    @param descs non-None array of non-None descriptors for which
    to disable entities.  Any already-disabled or not-installed entities in the array are ignored.
    @param monitor progress monitor
    @throws CoreException if any entities cannot be disabled

    @type descs: list
    '''
    pass


  def enable(self, descs):
    '''
    Enable entities for the given descriptors, making {@link Entity} instances available 
    from the methods in this interface.

    The installable units for the given descriptors must have been 
    previously installed successfully for this operation to succeed.
    @param descs non-None array of non-None descriptors for which
    to enable entities.  Any already-enabled entities in the array are ignored.
    @param monitor progress monitor
    @throws CoreException if any entities cannot be enabled

    @type descs: list
    '''
    pass


  def registerProvider(self, _str, _com_silabs_ss_platform_api_content_core_manager_IEntityProvider):
    pass


  def removeProvider(self, _str, _com_silabs_ss_platform_api_content_core_manager_IEntityProvider):
    pass


  def setDefaultSelection(self, array):
    '''
    Set a user preference for the default entities to use
    (e.g. in a wizard, or as a fallback)
    @param array or None

    @type array: list
    '''
    pass


  def setDefaultSelection(self, array):
    '''
    Set a user preference for the default entities to use
    (e.g. in a wizard, or as a fallback)
    @param array or None

    @type array: list
    '''
    pass


class com_silabs_ss_platform_api_content_core_manager_IEvent(object):
  '''
  '''
  def init(self):
    self.object = self.getObject()

    self.valueChangedEvent = self.getValueChangedEvent()

  def isAdded(self):
    '''
    Tell if this event is an 'add'
    @return True if add; {@link #getobject()} is the new object
    '''
    return bool()


  def isChanged(self):
    '''
    Tell whether this event is a change event that modifies the
    object (id, name, label, descriptor, properties)
    @return True if the event is a change
    '''
    return bool()


  def isPropertyChange(self, propertyId):
    '''
    Tell whether this event is a change that modifies the given property
    @param propertyId
    @type propertyId: str
    @return True if the event is a property change affecting this property
    '''
    return bool()


  def isRemoved(self):
    '''
    Tell if this event is a 'remove'
    @return True if remove; {@link #getobject()} is the removed object
    '''
    return bool()


  def getObject(self):
    '''
    @return the object affected
    '''
    return com_silabs_ss_platform_api_content_core_IDescribable()


  def getValueChangedEvent(self):
    '''
    @return the valueChangedEvent, only non-None for {@link ManagerEventType#PROPERTY_CHANGED}
    '''
    return com_silabs_ss_platform_api_content_core_IPropertyAccessListener_ValueChangedEvent()


class com_silabs_ss_platform_api_content_core_manager_IInstallableEntity(com_silabs_ss_platform_api_content_core_manager_IDescriptorEntity):
  '''
  This interface tags an entity which has an installation location.

  This interface is marked "Entity" because it represents a fully-instantiated and installed piece
  of software in the system, as opposed to a descriptor, which represents only the metadata.
   *
  '''
  def equals(self, _object):
    '''
    Returns True if the {@code obj} has the same class and the same id.
    @see object#equals(object)
    '''
    return bool()


  def isBuiltin(self):
    '''
    Tell whether the descriptor (and entity) are considered built in to the product.
    This may be used to distinguish bundled descriptors vs. ones discovered on
    the user's system.
    @see CoreProperties#BUILTIN
    '''
    return bool()


  def isHidden(self):
    '''
    Tell whether the object is intended to be hidden from UI.
    @see CoreProperties#HIDDEN
    '''
    return bool()


  def copy(self):
    '''
    Deep-copy the receiver
    @return new copy
    '''
    return com_silabs_ss_platform_api_content_core_IDescriptor()


  def getDescriptor(self):
    return com_silabs_ss_platform_api_content_core_IDescriptor()


  def getPropertyAccess(self):
    '''
    Get the full property access for the descriptor.
    '''
    return com_silabs_ss_platform_api_content_core_IPropertyAccess()


  def getPropertyMapper(self):
    '''
    Get the property mapper for the descriptor.
    '''
    return com_silabs_ss_platform_api_content_core_IPropertyMapper()


  def getManager(self):
    return com_silabs_ss_platform_api_content_core_manager_IManager()


  def getRegistry(self):
    '''
    Get the owning registry.
    @return registry, non-None if descriptor is contained in a registry
    '''
    return com_silabs_ss_platform_api_content_core_registry_IRegistry()


  def hashCode(self):
    '''
    Returns the hash code of the receiver's id.
    @see object#hashCode()
    '''
    return int()


  def getProperty(self, key):
    '''
    Get the value of a property for the receiver, parent chain, or default if not defined in any of them.
    @param key name of a property in receiver's scope or fully qualified property name
    @type key: str
    @return value, in the Java type represented by the property's {@link IType}, or a string if the
    property is not registerted in the property scope.  The value may be the default if not explicitly
    set, or None if no such property is known in the receiver's or parent chain's properties
    @throws IllegalArgumentException if property value does not conform to type
    @see IPropertyAccess#getValue(str)
    '''
    return object()


  def getProperty(self, key, _com_silabs_ss_platform_api_content_core_IType):
    '''
    Get the value of a property for the receiver, parent chain, or default if not defined in any of them.
    @param key name of a property in receiver's scope or fully qualified property name
    @type key: str
    @return value, in the Java type represented by the property's {@link IType}, or a string if the
    property is not registerted in the property scope.  The value may be the default if not explicitly
    set, or None if no such property is known in the receiver's or parent chain's properties
    @throws IllegalArgumentException if property value does not conform to type
    @see IPropertyAccess#getValue(str)
    '''
    return object()


  def getProperty(self, key, _str):
    '''
    Get the value of a property for the receiver, parent chain, or default if not defined in any of them.
    @param key name of a property in receiver's scope or fully qualified property name
    @type key: str
    @return value, in the Java type represented by the property's {@link IType}, or a string if the
    property is not registerted in the property scope.  The value may be the default if not explicitly
    set, or None if no such property is known in the receiver's or parent chain's properties
    @throws IllegalArgumentException if property value does not conform to type
    @see IPropertyAccess#getValue(str)
    '''
    return object()


  def getDescription(self):
    '''
    Human-readable description of the value for UI.

    This description is interpreted as HTML.

    @return description, never None (but may be blank)
    '''
    return str()


  def getId(self):
    '''
    The fully qualified identifer for this entity, including the ids of its parents, up to an implementation-defined root.
    '''
    return str()


  def getLabel(self):
    '''
    The label for the item, displayed in UI.
    @return label, never None
    '''
    return str()


  def getName(self):
    '''
    The unique name for this item within its parent.   See {@link #getId()} for the full unique identifier.
    '''
    return str()


  def toString(self):
    '''
    Return the id and label.
    @return str
    '''
    return str()


  def getLabel(self):
    '''
    Label for the value, if it appears in UI.  This label is plain text.

    This may be a derived value, sourced from the wrapped MDescriptor.  If
    that value is None or blank, a label is automatically
    generated from the {@link #getName()}.
    @return label, never None
    '''
    return str()


  def gatherListProperty(self, _str):
    return list()


  def getInstallationPath(self):
    '''
    Get the path where the installation lives on the system.
    @return path
    @throws IOException if path cannot be resolved
    @see CoreProperties#INSTALLATION_PATH
    '''
    return org_eclipse_core_runtime_IPath()


class com_silabs_ss_platform_api_content_core_manager_IManager(com_silabs_ss_platform_api_content_core_manager_IDescriptorManager):
  '''
  This describes the interface to a common manager, which tracks
  Descriptors -- high-level metadata -- and their corresponding Entities -- the
  real instances of objects created from Descriptors and Providers.

  The list of enabled Entities is persisted in the Eclipse configuration.
  @see IRegistry

  @param 
  @param 
  @param 
  @param 
  @param 
  '''
  def init(self):
    self.config = self.getConfig()

    self.config = self.getConfig()

  def isEnabled(self, desc):
    '''
    Tell whether an entity with the given descriptor is currently enabled. If the
    entity is unknown, then this method will return False.
    @param desc
    @type desc: com_silabs_ss_platform_api_content_core_IDescriptor
    @return True if descriptor's entity is enabled
    '''
    return bool()


  def isEnabled(self, desc):
    '''
    Tell whether an entity with the given descriptor is currently enabled. If the
    entity is unknown, then this method will return False.
    @param desc
    @type desc: str
    @return True if descriptor's entity is enabled
    '''
    return bool()


  def isLoaded(self):
    '''
    Return whether this registry has finished loading.
    @return 
    '''
    return bool()


  def registerDescriptor(self, _com_silabs_ss_platform_api_content_core_IDescriptor):
    '''
    Register a descriptor, firing {@link IRegistryListener#descriptorAdded(com.silabs.ss.platform.api.content.core.IDescribable)}
    @return True if descriptor is new, False if the new descriptor replaced another
    '''
    return bool()


  def removeDescriptor(self, _com_silabs_ss_platform_api_content_core_IDescriptor):
    '''
    Remove a descriptor, firing {@link IRegistryListener#descriptorRemoved(com.silabs.ss.platform.api.content.core.IDescribable)}
    @return True if descriptor was registered before
    '''
    return bool()


  def createDescriptor(self):
    '''
    Create a new descriptor with an empty model.
    '''
    return com_silabs_ss_platform_api_content_core_IDescriptor()


  def createDescriptor(self, _com_silabs_ss_platform_api_content_core_model_MDescriptor):
    '''
    Create a new descriptor with an empty model.
    '''
    return com_silabs_ss_platform_api_content_core_IDescriptor()


  def findCompatibleDescriptor(self, idOrName):
    '''
    Return the descriptors with the given id and compatible with the API of the given version.
    For unversioned descriptors, returns a value only if the id has no version.

    This will find an {@link IVersionedDescriptor} with the given id and compatible with its version,
    or a non-versioned descriptor with this id.
    @param idOrName identifier or name of a descriptor, with or without a version
    @type idOrName: str
    @return nearest compatible descriptor or None
    '''
    return com_silabs_ss_platform_api_content_core_IDescriptor()


  def findCompatibleDescriptor(self, idOrName, _org_osgi_framework_Version):
    '''
    Return the descriptors with the given id and compatible with the API of the given version.
    For unversioned descriptors, returns a value only if the id has no version.

    This will find an {@link IVersionedDescriptor} with the given id and compatible with its version,
    or a non-versioned descriptor with this id.
    @param idOrName identifier or name of a descriptor, with or without a version
    @type idOrName: str
    @return nearest compatible descriptor or None
    '''
    return com_silabs_ss_platform_api_content_core_IDescriptor()


  def findDescriptor(self, _str):
    '''
    Find a descriptor with the given unique id in the registry.
    @return descriptor or None
    '''
    return com_silabs_ss_platform_api_content_core_IDescriptor()


  def findDescriptor(self, _str, _org_osgi_framework_Version):
    '''
    Find a descriptor with the given unique id in the registry.
    @return descriptor or None
    '''
    return com_silabs_ss_platform_api_content_core_IDescriptor()


  def getAllDescriptorsFor(self, ents):
    '''
    Get the array of descriptors for the given entities.

    @param ents the array of entities to check
    @type ents: list
    @return an array of descriptors, never None, same length as ents
    '''
    return list()


  def detectDescriptors(self, ignoreExisting, parameters, monitor):
    '''
    Scan for recognized descriptors using registered {@link IDetector} instances.
    In addition, the {@link CoreProperties#BUILTIN} property should be set
    to indicate whether a descriptor is built in to the product.
    @param ignoreExisting if True, filter out descriptors which are already registered
    @param parameters map of key/value pairs controlling the detector -- see {@link IDetector}
    @param monitor monitor for tracking progress and cancellation
    @type ignoreExisting: bool
    @type parameters: java_util_Map
    @type monitor: org_eclipse_core_runtime_IProgressMonitor
    @return list of descriptors, never None
    @throws OperationCanceledException if monitor is canceled
    '''
    return list()


  def detectDescriptors(self, ignoreExisting, parameters):
    '''
    Scan for recognized descriptors using registered {@link IDetector} instances.
    In addition, the {@link CoreProperties#BUILTIN} property should be set
    to indicate whether a descriptor is built in to the product.
    @param ignoreExisting if True, filter out descriptors which are already registered
    @param parameters map of key/value pairs controlling the detector -- see {@link IDetector}
    @param monitor monitor for tracking progress and cancellation
    @type ignoreExisting: bool
    @type parameters: org_eclipse_core_runtime_IProgressMonitor
    @return list of descriptors, never None
    @throws OperationCanceledException if monitor is canceled
    '''
    return list()


  def findAllDescriptorsAnyVersionFor(self, ids):
    '''
    Get an array of descriptors for the given ids, ignoring versions for any {@link IVersionedDescriptor}.

    @param ids the array of ids to find
    @type ids: list
    @return an array of descriptors, never None, but possibly shorter than the length of descs
    '''
    return list()


  def findAllDescriptorsFor(self, ids):
    '''
    Get an array of descriptors for the given ids.

    @param ids the array of ids to find
    @type ids: list
    @return an array of descriptors, never None, but possibly shorter than the length of descs
    '''
    return list()


  def findDescriptorsAnyVersion(self, unversionedId):
    '''
    Return the descriptors with the given id and any version.

    This will find an {@link IVersionedDescriptor} with the given unversioned id,
    or a non-versioned descriptor with this id.
    @param unversionedId identifier of a descriptor
    @type unversionedId: str
    @return array, never None, in no particular order
    '''
    return list()


  def findDescriptorsFromName(self, name):
    '''
    Return the descriptors that have the same name as the input.
    @param name name of some descriptors
    @type name: str
    @return array, never None, in no particular order
    '''
    return list()


  def findDescriptorsInRange(self, unversionedId, minVersion, maxVersion):
    '''
    Return the descriptors with the given id and version range.

    This will find an {@link IVersionedDescriptor} with a version in the given range,
    or a non-versioned descriptor if {@value minVersion} and {@value maxVersion} are None.
    @param unversionedId identifier of descriptor
    @param minVersion lower limit, inclusive (version >= minVersion); may be None to fetch all from unversioned or 0.0 to maxVersion
    @param maxVersion upper limit, exclusive (version None to fetch all greater than minVersion

    @type unversionedId: str
    @type minVersion: org_osgi_framework_Version
    @type maxVersion: org_osgi_framework_Version
    @return array, never None, in no particular order
    '''
    return list()


  def getAllDescriptors(self):
    '''
    Get all the descriptors in the registry.
    @return array, never None
    '''
    return list()


  def getDetectedDescriptors(self):
    '''
    Get the descriptors considered to be detected -- those that have been added
    through a detector and will be recreated every time 
    {@link #detectDescriptors(boolean, IProgressMonitor)} is run.
    '''
    return list()


  def getTransientDescriptors(self):
    '''
    Get the descriptors considered to be transient -- those that have been
    registered but are not otherwise known to be recreated on the next workspace launch.
    Such descriptors will be persisted.
    '''
    return list()


  def scanForNewDescriptors(self):
    '''
    Scan for new descriptors.
    @return the descriptors that were found
    '''
    return list()


  def scanForNewDescriptors(self, _java_io_File):
    '''
    Scan for new descriptors.
    @return the descriptors that were found
    '''
    return list()


  def find(self, desc):
    '''
    Look up the enabled entity with the given descriptor id.

    This method does not log or report errors; use {@link #get(Descriptor)}
    for a version that can report errors
    @param desc the descriptor to check
    @type desc: com_silabs_ss_platform_api_content_core_IDescriptor
    @return the entity, if it is installed, or None if the entity is
    not installed, no such entity matches, or there was an error in the provider instantiating the entity
    '''
    return com_silabs_ss_platform_api_content_core_manager_IDescriptorEntity()


  def find(self, desc):
    '''
    Look up the enabled entity with the given descriptor id.

    This method does not log or report errors; use {@link #get(Descriptor)}
    for a version that can report errors
    @param desc the descriptor to check
    @type desc: str
    @return the entity, if it is installed, or None if the entity is
    not installed, no such entity matches, or there was an error in the provider instantiating the entity
    '''
    return com_silabs_ss_platform_api_content_core_manager_IDescriptorEntity()


  def findCompatible(self, id):
    '''
    Get the nearest compatible version of an enabled entity with the given id and 
    compatible with the id's version
    @param id the id; if no version present, the newest versioned entity is returned
    @type id: str
    @return entity or None
    '''
    return com_silabs_ss_platform_api_content_core_manager_IDescriptorEntity()


  def get(self, id):
    '''
    Get the enabled entity for the given descriptor.  Throws an exception if the
    entity is missing or not enabled.

    @param id unique id for entity
    @type id: com_silabs_ss_platform_api_content_core_IDescriptor
    @return the entity, if enabled, never None
    @throws CoreException if an entity is not available, or is installed but cannot be instantiated due to some error
    condition
    '''
    return com_silabs_ss_platform_api_content_core_manager_IDescriptorEntity()


  def get(self, id):
    '''
    Get the enabled entity for the given descriptor.  Throws an exception if the
    entity is missing or not enabled.

    @param id unique id for entity
    @type id: str
    @return the entity, if enabled, never None
    @throws CoreException if an entity is not available, or is installed but cannot be instantiated due to some error
    condition
    '''
    return com_silabs_ss_platform_api_content_core_manager_IDescriptorEntity()


  def getCompatible(self, id):
    '''
    Get the nearest compatible version of an enabled entity with the given id and 
    compatible with the id's version
    @param id the id; if no version present, the newest enabled entity is returned
    @type id: str
    @return array of entities, never None
    @throws CoreException if no version matches or is enabled
    '''
    return com_silabs_ss_platform_api_content_core_manager_IDescriptorEntity()


  def getAll(self):
    '''
    Get an array of the entities enabled in the system.
    @return array, never None
    '''
    return list()


  def getAllFor(self, descs):
    '''
    Get the array of enabled entities for the given descriptors.

    @param descs the array of descriptors to check
    @type descs: list
    @return an array of enabled entities, never None, but possibly shorter than the length of descs
    @throws CoreException if one or more entities is installed, but cannot be instantiated due to some error
    condition
    '''
    return list()


  def getDefaultSelection(self):
    '''
    Get a user preference for the default entities to use
    (e.g. in a wizard, or as a fallback)
    @return array, never None
    '''
    return list()


  def getConfig(self):
    '''
    Get the configuration
    @return non-None configuration used to instantiate the manager
    '''
    return com_silabs_ss_platform_api_content_core_manager_IDescriptorManagerConfig()


  def getConfig(self):
    '''
    Get the configuration
    @return non-None configuration used to instantiate the manager
    '''
    return com_silabs_ss_platform_api_content_core_manager_IManagerConfig()


  def getRegistry(self):
    '''
    Get the registry the manager controls
    @return registry, never None
    '''
    return com_silabs_ss_platform_api_content_core_registry_IRegistry()


  def getRegistryConfig(self):
    '''
    Get the configuration for the registry
    @return configuration, never None
    '''
    return com_silabs_ss_platform_api_content_core_registry_IRegistryConfig()


  def getRegistryPlugins(self):
    '''
    Return the list of registry plugins associated with this registry.
    '''
    return list()


  def getId(self):
    '''
    Get the unique instance id of the registry
    @return counter
    '''
    return int()


  def invokeBatchOperation(self, _java_util_concurrent_Callable):
    return object()


  def getName(self):
    '''
    Get the name of this registry.
    @return name
    '''
    return str()


  def getNoneDescriptorId(self):
    '''
    Return the none descriptor id if there is one.
    @return a string id or None if there is no none descriptor.
    '''
    return str()


  def findEnabledIds(self):
    '''
    Get an array of the ids of entities enabled in the system. The
    manager is not synced before this call and some returned entity
    ids may fail to enable.

    This will *not* create any entities and can safely be called at any 
    time.
    @return array, never None
    '''
    return list()


  def getAllIds(self):
    '''
    Get an array of the ids of entities enabled in the system. This
    will ensure the entities are synced and may take a while. This
    set of ids is guaranteed to be correct. For a faster but less
    reliable set, use {@link #findEnabledIds()}.
    @return array, never None
    '''
    return list()


  def getAllDescriptorIds(self):
    '''
    Get the ids of all the descriptors in the registry.
    @return array, never None
    '''
    return list()


  def getPreferredDescriptorMapping(self):
    return java_util_Map()


  def ensureSync(self):
    '''
    Ensure the manager's entities and descriptors are synchronized, in the event 
    the manager utilizes lazy loading.

    This will force any outstanding {@link IManagerListener}s to be fired.

    (note: clients should not need to call this, though other managers might)
    '''
    pass


  def refresh(self):
    '''
    Refresh the manager, re-invoking detection for new descriptors.
    '''
    pass


  def resetSync(self):
    '''
    Clear the manager's sync state, so that the next #ensureSync() will do work.

    (note: clients should not need to call this, though other managers might)
    '''
    pass


  def scheduleInitialEnsureSyncJob(self):
    '''
    Schedule a job that invokes {@link #ensureSync()}.  Every #ensureSync()
    call will block waiting for this job to finish.
    '''
    pass


  def disable(self, descs):
    '''
    Disable entities for the given descriptors, making {@link Entity} instances no longer
    available from the methods in this interface.
    @param descs non-None array of non-None descriptors for which
    to disable entities.  Any already-disabled or not-installed entities in the array are ignored.
    @param monitor progress monitor
    @throws CoreException if any entities cannot be disabled

    @type descs: list
    '''
    pass


  def enable(self, descs):
    '''
    Enable entities for the given descriptors, making {@link Entity} instances available 
    from the methods in this interface.

    The installable units for the given descriptors must have been 
    previously installed successfully for this operation to succeed.
    @param descs non-None array of non-None descriptors for which
    to enable entities.  Any already-enabled entities in the array are ignored.
    @param monitor progress monitor
    @throws CoreException if any entities cannot be enabled

    @type descs: list
    '''
    pass


  def registerProvider(self, _str, _com_silabs_ss_platform_api_content_core_manager_IEntityProvider):
    pass


  def removeProvider(self, _str, _com_silabs_ss_platform_api_content_core_manager_IEntityProvider):
    pass


  def setDefaultSelection(self, array):
    '''
    Set a user preference for the default entities to use
    (e.g. in a wizard, or as a fallback)
    @param array or None

    @type array: list
    '''
    pass


  def setDefaultSelection(self, array):
    '''
    Set a user preference for the default entities to use
    (e.g. in a wizard, or as a fallback)
    @param array or None

    @type array: list
    '''
    pass


  def addListener(self, listener
  ):
    '''
    Add listener to the service which reports when descriptors or entities are changed.
    Ignores duplicate listeners.
    @param listener

    @type listener
    : com_silabs_ss_platform_api_content_core_manager_IManagerListener
    '''
    pass


  def removeListener(self, listener
  ):
    '''
    Remove listener to the service which reports when descriptors or entities are changed.
    Ignores unregistered listeners.
    @param listener

    @type listener
    : com_silabs_ss_platform_api_content_core_manager_IManagerListener
    '''
    pass


  def reset(self):
    '''
    Reset manager entirely
    '''
    pass


  def addRegistryListener(self, listener
  ):
    '''
    Add a listener to the registry.  Ignore duplicates.
    @param listener

    @type listener
    : com_silabs_ss_platform_api_content_core_registry_IRegistryListener
    '''
    pass


  def ensureSync(self):
    '''
    Ensure the registry's descriptors are synchronized, in the event 
    the registry utilizes lazy loading.

    Note for threading: Registries support single thread re-entrancy during
    loading. They do not support multithreaded re-entrancy during reloading.
    Adding threaded re-entrancy will very quickly and typically consistently
    cause deadlocks.

    This will force any outstanding {@link IRegistryListener}s to be fired.

    (note: clients should not need to call this, though other registry implementations might)
    '''
    pass


  def loadPrefs(self):
    '''
    Load the customized and user descriptors from preferences
    '''
    pass


  def refresh(self):
    '''
    Refresh the registry (scanning for new descriptors) and refresh any
    known descriptors.
    '''
    pass


  def refreshDescriptor(self, _com_silabs_ss_platform_api_content_core_IDescriptor):
    '''
    Refresh a single descriptor from the registry. Note that this will 
    not scan for any new descriptors.
    '''
    pass


  def registerDetector(self, detector
  ):
    '''
    Add a detector for descriptors, invoked via {@link #detectDescriptors(boolean, IProgressMonitor)}
    @param detector

    @type detector
    : com_silabs_ss_platform_api_content_core_registry_IDetector
    '''
    pass


  def removeDetector(self, detector
  ):
    '''
    Remove a detector for descriptors, invoked via {@link #detectDescriptors(boolean, IProgressMonitor)}
    @param detector

    @type detector
    : com_silabs_ss_platform_api_content_core_registry_IDetector
    '''
    pass


  def removeRegistryListener(self, listener
  ):
    '''
    Remove a listener to the registry.  Ignore missing listener.
    @param listener

    @type listener
    : com_silabs_ss_platform_api_content_core_registry_IRegistryListener
    '''
    pass


  def resetRegistry(self):
    '''
    Reset the registry, throwing away its preferences, all transient descriptors, removing all
    listeners, and resetting its sync state.
    '''
    pass


  def resetSync(self):
    '''
    Clear the registry's sync state, so that the next #ensureSync() will do work.

    (note: clients should not need to call this, though other registry implementations might)
    '''
    pass


  def savePrefs(self):
    '''
    Save the customized and user descriptors to preferences
    '''
    pass


  def getConfig(self):
    '''
    Get the configuration
    @return non-None configuration used to instantiate the manager
    '''
    return com_silabs_ss_platform_api_content_core_manager_IDescriptorManagerConfig()


class com_silabs_ss_platform_api_content_core_manager_IManagerConfig(com_silabs_ss_platform_api_content_core_manager_IDescriptorManagerConfig):
  '''
  *
  '''
  def init(self):
    self.entityIntfClass = self.getEntityIntfClass()

    self.providerExtensionElementName = self.getProviderExtensionElementName()

  def isAutoEnable(self):
    '''
    Tell whether entities are auto-enabled.  This means, when a new descriptor, never seen
    before, is registered, and/or its CoreProperties#AUTO_ENABLE property is True, it
    will also be enabled in the manager.  This does not preclude the user from disabling
    the entity manually.
    '''
    return bool()


  def usesEnablement(self):
    '''
    Tell whether the manager uses the enablement engine. This means that all descriptors
    will always be enabled. It will work the same as if every descriptor specified True
    for the {@link CoreProperties#ALWAYS_ENABLED}. Defaults to "True".
    '''
    return bool()


  def distinctInstallPaths(self):
    '''
    Whether the descriptors in this registry cannot have the same install paths. 
    Multiple None/empty install paths can still be added to the registry.
    @return 
    '''
    return bool()


  def isTestMode(self):
    '''
    Tell whether the registry is in test mode.  This usually means an
    alternate set of extensions is scanned (if extensions are used) and
    that prefs are not loaded and saved.
    @return 
    '''
    return bool()


  def createRegistry(self, extMgr):
    '''
    Create the concrete instance of the descriptor registry.
    @param extMgr
    @type extMgr: com_silabs_ss_platform_api_rcp_core_extensions_IExtensionManager
    @return new registry, never None
    '''
    return com_silabs_ss_platform_api_content_core_registry_IRegistry()


  def getConfigurationElementFilter(self):
    '''
    Get the filter that controls what extension instances influence this manager
    @return filter, never None
    '''
    return com_silabs_ss_platform_api_rcp_core_ITypedFilter()


  def getStatusReporter(self):
    '''
    Get the reporter for issues arising from the registry
    '''
    return com_silabs_ss_platform_api_rcp_core_StatusReporter()


  def getEntityIntfClass(self):
    '''
    Get the interface class for the entity
    '''
    return java_lang_Class()


  def getDescriptorClass(self):
    '''
    Get the concrete class for the descriptor, for instantiation #createDescriptor()
    @return concrete class
    '''
    return java_lang_Class()


  def getDescriptorIntfClass(self):
    '''
    Get the class of the interface for the descriptor (for use in generating arrays)
    '''
    return java_lang_Class()


  def getExtensionName(self):
    '''
    Get the name of the extension controlling the manager (without plugin)
    @return extension name
    '''
    return str()


  def getSyncJobLabel(self):
    '''
    Get the user-visible label for a manager
    @return str
    '''
    return str()


  def getProviderExtensionElementName(self):
    '''
    Get the name of the plugin.xml element that defines entity providers 
    (these should have a 'class' element for IEntityProvider&lt;Descriptor&gt;).
    @return name, never None
    '''
    return str()


  def getBundleId(self):
    '''
    Get the bundle id of the owner, for use in reporting status and finding extensions
    @return bundle id
    '''
    return str()


  def getDetectionJobLabel(self):
    '''
    Get the human-readable name of the job that detects descriptors
    @return label like "Detecting General Tso's Chickens..."
    '''
    return str()


  def getNoneDescriptorId(self):
    '''
    Get the none descriptor id
    @return the none descriptor id or None if there isn't one
    '''
    return str()


  def getPreferenceScopeId(self):
    '''
    Get the id of the pref scope storing information for the manager
    @return str, never None
    '''
    return str()


  def getPreferredDescriptorMapping(self):
    '''
    Get the location of the preferred descriptor mapping file
    @return path to file or None
    '''
    return str()


  def getRegistryPluginProviders(self):
    return list()


  def getPackageTypes(self):
    '''
    Get the package types that this registry uses.
    @return list of packages
    '''
    return list()


class com_silabs_ss_platform_api_content_core_manager_IManagerListener(object):
  '''
  Base interface for a listener that is notified of changes to descriptors
  and entities.  
   *
  '''
  def managerEventFired(self, the):
    '''
    An event was fired on an entity
    @param the event

    @type the: com_silabs_ss_platform_api_content_core_manager_IEvent
    '''
    pass


  def registryEventFired(self, the):
    '''
    An event was fired on a descriptor
    @param the event

    @type the: com_silabs_ss_platform_api_content_core_manager_IEvent
    '''
    pass


class com_silabs_ss_platform_api_content_core_model_MDescribable(org_eclipse_emf_ecore_EObject):
  '''
  A representation of the model object 'MDescribable'.

   *

  Base interface for model elements that can be described and identified.

   *

  The following features are supported:

  	{@link com.silabs.ss.platform.api.content.core.model.MDescribable#getId Id}

  	{@link com.silabs.ss.platform.api.content.core.model.MDescribable#getName Name}

  	{@link com.silabs.ss.platform.api.content.core.model.MDescribable#getLabel Label}

  	{@link com.silabs.ss.platform.api.content.core.model.MDescribable#getDescription Description}

   *
  @see com.silabs.ss.platform.api.content.core.model.StudioModelPackage#getMDescribable()
  @model 
  '''
  def init(self):
    self.description = self.getDescription()

    self.id = self.getId()

    self.label = self.getLabel()

    self.name = self.getName()

  def getDescription(self):
    '''
    Returns the value of the 'Description' attribute.

    Human-readable description of the item, for UI.

    This description is interpreted as HTML.

    @return the value of the 'Description' attribute.
    @see #setDescription(str)
    @see com.silabs.ss.platform.api.content.core.model.StudioModelPackage#getMDescribable_Description()
    @model extendedMetaData="namespace='##targetNamespace' kind='element'"
    '''
    return str()


  def getId(self):
    '''
    Returns the value of the 'Id' attribute.

    The qualified identifier for the receiver.  This is a catenation of all the names of the receiver and all its parents(right-to-left), with dots '.' in between.

    @return the value of the 'Id' attribute.
    @see #setId(str)
    @see com.silabs.ss.platform.api.content.core.model.StudioModelPackage#getMDescribable_Id()
    @model transient="True" derived="True"
    '''
    return str()


  def getLabel(self):
    '''
    Returns the value of the 'Label' attribute.

    Label for the item, in UI.  This label is plain text.

    @return the value of the 'Label' attribute.
    @see #setLabel(str)
    @see com.silabs.ss.platform.api.content.core.model.StudioModelPackage#getMDescribable_Label()
    @model 
    '''
    return str()


  def getName(self):
    '''
    Returns the value of the 'Name' attribute.

    The base name for this item within its parent.   See {@link #getId()} for the full unique identifier.

    @return the value of the 'Name' attribute.
    @see #setName(str)
    @see com.silabs.ss.platform.api.content.core.model.StudioModelPackage#getMDescribable_Name()
    @model 
    '''
    return str()


  def setDescription(self, value):
    '''
    Sets the value of the '{@link com.silabs.ss.platform.api.content.core.model.MDescribable#getDescription Description}' attribute.

    @param value the new value of the 'Description' attribute.
    @see #getDescription()

    @type value: str
    '''
    pass


  def setId(self, value):
    '''
    Sets the value of the '{@link com.silabs.ss.platform.api.content.core.model.MDescribable#getId Id}' attribute.

    @param value the new value of the 'Id' attribute.
    @see #getId()

    @type value: str
    '''
    pass


  def setLabel(self, value):
    '''
    Sets the value of the '{@link com.silabs.ss.platform.api.content.core.model.MDescribable#getLabel Label}' attribute.

    @param value the new value of the 'Label' attribute.
    @see #getLabel()

    @type value: str
    '''
    pass


  def setName(self, value):
    '''
    Sets the value of the '{@link com.silabs.ss.platform.api.content.core.model.MDescribable#getName Name}' attribute.

    @param value the new value of the 'Name' attribute.
    @see #getName()

    @type value: str
    '''
    pass


class com_silabs_ss_platform_api_content_core_model_MDescriptor(com_silabs_ss_platform_api_content_core_model_MDescribable):
  '''
  A representation of the model object 'MDescriptor'.

   *

  Base interface for model elements that are describable and has properties.

   *

  The following features are supported:

  	{@link com.silabs.ss.platform.api.content.core.model.MDescriptor#getProperties Properties}

  	{@link com.silabs.ss.platform.api.content.core.model.MDescriptor#getPropertyScope Property Scope}

   *
  @see com.silabs.ss.platform.api.content.core.model.StudioModelPackage#getMDescriptor()
  @model 
  '''
  def init(self):
    self.propertyScope = self.getPropertyScope()

    self.properties = self.getProperties()

  def getPropertyScope(self):
    '''
    Returns the value of the 'Property Scope' attribute.
    The default value is "".

    The identifier for the property scope (IPropertyGroup id) which define the properties referenced.

    @return the value of the 'Property Scope' attribute.
    @see #setPropertyScope(str)
    @see com.silabs.ss.platform.api.content.core.model.StudioModelPackage#getMDescriptor_PropertyScope()
    @model default=""
    '''
    return str()


  def getProperties(self):
    '''
    Returns the value of the 'Properties' map.
    The key is of type {@link str},
    and the value is of type {@link str},

    If the meaning of the 'Property Settings' map isn't clear,
    there really should be more of a description here...

    These are (key, value) pairs associated with a descriptor.

    These are serialized versions of typed properties via {Type,Property}ConversionUtils#stringizeValue().

    @return the value of the 'Properties' map.
    @see com.silabs.ss.platform.api.content.core.model.StudioModelPackage#getMDescriptor_Properties()
    @model mapType="com.silabs.ss.platform.api.content.core.model.strTostrMap"
    extendedMetaData="name='property' kind='elementOnly' namespace='##targetNamespace'"
    '''
    return list()


  def setPropertyScope(self, value):
    '''
    Sets the value of the '{@link com.silabs.ss.platform.api.content.core.model.MDescriptor#getPropertyScope Property Scope}' attribute.

    @param value the new value of the 'Property Scope' attribute.
    @see #getPropertyScope()

    @type value: str
    '''
    pass


class com_silabs_ss_platform_api_content_core_registry_IDetector(object):
  '''
  This interface defines a detector for descriptors for an {@link IManager}.

  Typically (depending on the specific service) it provides descriptors with the 
  {@link CoreProperties#INSTALLATION_PATH} set, representing an entity the
  user has already installed.
   *
  '''
  KEY_PARENT_DESCRIPTOR_ID = str
  '''
  This parameter, when set to a descriptor id, tells the detector
  to search for descriptors only inside that parent descriptor.

  type: str
  @value "parentId"
  '''

  KEY_QUICK_SCAN_LOCATION = str
  '''
  This parameter, when set to a filesystem location, tells the
  detector to search for external descriptors in only that
  location.

  type: File
  @value "quickScanLocation"
  '''

  KEY_QUICK_SCAN_SYSTEM = str
  '''
  This parameter, when set to True, tells the detector
  to check for external descriptors in common places on the system.  

  type: boolean
  @value "quickScanSystem"
  '''

  KEY_RESCAN_DESCRIPTOR = str
  '''
  This parameter, when set to a descriptor, tells the 
  detector to rescan only that descriptor. The detector
  should return a new descriptor that is a rescan of 
  the one sent by the registry. The registry will handle
  updating the descriptor.

  type: IDescriptor
  @value "rescanDescriptor"
  '''

  def detectDescriptors(self, parameters, monitor):
    '''
    Detect descriptors which apply to this system, typically by
    scanning the filesystem, Windows registry, etc.
    @param parameters parameters for controlling the scan
    @param monitor progress monitor for progress and cancellation
    @type parameters: java_util_Map
    @type monitor: org_eclipse_core_runtime_IProgressMonitor
    @return an array, never None
    @see IManager#detectDescriptors(boolean, Map, IProgressMonitor)
    @see #KEY_QUICK_SCAN_SYSTEM
    @see #KEY_QUICK_SCAN_LOCATION
    @see #KEY_RESCAN_DESCRIPTOR
    '''
    return list()


class com_silabs_ss_platform_api_content_core_registry_IInternalRegistry(com_silabs_ss_platform_api_content_core_registry_IRegistry):
  '''
  Internal registry API for {@link IRegistryPlugin}.
   *
  '''
  def init(self):
    self.reporter = self.getReporter()

    self.descriptorInterfaceClass = self.getDescriptorInterfaceClass()

    self.descriptorsMap = self.getDescriptorsMap()

    self.detectorClasses = self.getDetectorClasses()

    self.preferences = self.getPreferences()

  def distinctInstallPaths(self):
    '''
    Whether the descriptors in this registry cannot have the same install paths. 
    Multiple None/empty install paths can still be added to the registry.
    @return True if descriptors with the same install paths should not be allowed
    '''
    return bool()


  def doRegisterDescriptor(self, desc, allowRedef):
    '''
    Register a descriptor without firing an ensureSync or notifying listeners.
    @param desc descriptor to add
    @param allowRedef allow redefinition of a descriptor
    @type desc: com_silabs_ss_platform_api_content_core_IDescriptor
    @type allowRedef: bool
    @return True if descriptor is new, False if the new descriptor replaced another
    '''
    return bool()


  def isLoaded(self):
    '''
    Return whether this registry has finished loading.
    @return 
    '''
    return bool()


  def registerDescriptor(self, _com_silabs_ss_platform_api_content_core_IDescriptor):
    '''
    Register a descriptor, firing {@link IRegistryListener#descriptorAdded(com.silabs.ss.platform.api.content.core.IDescribable)}
    @return True if descriptor is new, False if the new descriptor replaced another
    '''
    return bool()


  def removeDescriptor(self, _com_silabs_ss_platform_api_content_core_IDescriptor):
    '''
    Remove a descriptor, firing {@link IRegistryListener#descriptorRemoved(com.silabs.ss.platform.api.content.core.IDescribable)}
    @return True if descriptor was registered before
    '''
    return bool()


  def createDescriptor(self):
    '''
    Create a new descriptor with an empty model.
    '''
    return com_silabs_ss_platform_api_content_core_IDescriptor()


  def createDescriptor(self, _com_silabs_ss_platform_api_content_core_model_MDescriptor):
    '''
    Create a new descriptor with an empty model.
    '''
    return com_silabs_ss_platform_api_content_core_IDescriptor()


  def findCompatibleDescriptor(self, idOrName):
    '''
    Return the descriptors with the given id and compatible with the API of the given version.
    For unversioned descriptors, returns a value only if the id has no version.

    This will find an {@link IVersionedDescriptor} with the given id and compatible with its version,
    or a non-versioned descriptor with this id.
    @param idOrName identifier or name of a descriptor, with or without a version
    @type idOrName: str
    @return nearest compatible descriptor or None
    '''
    return com_silabs_ss_platform_api_content_core_IDescriptor()


  def findCompatibleDescriptor(self, idOrName, _org_osgi_framework_Version):
    '''
    Return the descriptors with the given id and compatible with the API of the given version.
    For unversioned descriptors, returns a value only if the id has no version.

    This will find an {@link IVersionedDescriptor} with the given id and compatible with its version,
    or a non-versioned descriptor with this id.
    @param idOrName identifier or name of a descriptor, with or without a version
    @type idOrName: str
    @return nearest compatible descriptor or None
    '''
    return com_silabs_ss_platform_api_content_core_IDescriptor()


  def findDescriptor(self, _str):
    '''
    Find a descriptor with the given unique id in the registry.
    @return descriptor or None
    '''
    return com_silabs_ss_platform_api_content_core_IDescriptor()


  def findDescriptor(self, _str, _org_osgi_framework_Version):
    '''
    Find a descriptor with the given unique id in the registry.
    @return descriptor or None
    '''
    return com_silabs_ss_platform_api_content_core_IDescriptor()


  def detectDescriptors(self, ignoreExisting, parameters, monitor):
    '''
    Scan for recognized descriptors using registered {@link IDetector} instances.
    In addition, the {@link CoreProperties#BUILTIN} property should be set
    to indicate whether a descriptor is built in to the product.
    @param ignoreExisting if True, filter out descriptors which are already registered
    @param parameters map of key/value pairs controlling the detector -- see {@link IDetector}
    @param monitor monitor for tracking progress and cancellation
    @type ignoreExisting: bool
    @type parameters: java_util_Map
    @type monitor: org_eclipse_core_runtime_IProgressMonitor
    @return list of descriptors, never None
    @throws OperationCanceledException if monitor is canceled
    '''
    return list()


  def detectDescriptors(self, ignoreExisting, parameters):
    '''
    Scan for recognized descriptors using registered {@link IDetector} instances.
    In addition, the {@link CoreProperties#BUILTIN} property should be set
    to indicate whether a descriptor is built in to the product.
    @param ignoreExisting if True, filter out descriptors which are already registered
    @param parameters map of key/value pairs controlling the detector -- see {@link IDetector}
    @param monitor monitor for tracking progress and cancellation
    @type ignoreExisting: bool
    @type parameters: org_eclipse_core_runtime_IProgressMonitor
    @return list of descriptors, never None
    @throws OperationCanceledException if monitor is canceled
    '''
    return list()


  def findAllDescriptorsAnyVersionFor(self, ids):
    '''
    Get an array of descriptors for the given ids, ignoring versions for any {@link IVersionedDescriptor}.

    @param ids the array of ids to find
    @type ids: list
    @return an array of descriptors, never None, but possibly shorter than the length of descs
    '''
    return list()


  def findAllDescriptorsFor(self, ids):
    '''
    Get an array of descriptors for the given ids.

    @param ids the array of ids to find
    @type ids: list
    @return an array of descriptors, never None, but possibly shorter than the length of descs
    '''
    return list()


  def findDescriptorsAnyVersion(self, unversionedId):
    '''
    Return the descriptors with the given id and any version.

    This will find an {@link IVersionedDescriptor} with the given unversioned id,
    or a non-versioned descriptor with this id.
    @param unversionedId identifier of a descriptor
    @type unversionedId: str
    @return array, never None, in no particular order
    '''
    return list()


  def findDescriptorsFromName(self, name):
    '''
    Return the descriptors that have the same name as the input.
    @param name name of some descriptors
    @type name: str
    @return array, never None, in no particular order
    '''
    return list()


  def findDescriptorsInRange(self, unversionedId, minVersion, maxVersion):
    '''
    Return the descriptors with the given id and version range.

    This will find an {@link IVersionedDescriptor} with a version in the given range,
    or a non-versioned descriptor if {@value minVersion} and {@value maxVersion} are None.
    @param unversionedId identifier of descriptor
    @param minVersion lower limit, inclusive (version >= minVersion); may be None to fetch all from unversioned or 0.0 to maxVersion
    @param maxVersion upper limit, exclusive (version None to fetch all greater than minVersion

    @type unversionedId: str
    @type minVersion: org_osgi_framework_Version
    @type maxVersion: org_osgi_framework_Version
    @return array, never None, in no particular order
    '''
    return list()


  def getAllDescriptors(self):
    '''
    Get all the descriptors in the registry.
    @return array, never None
    '''
    return list()


  def getDetectedDescriptors(self):
    '''
    Get the descriptors considered to be detected -- those that have been added
    through a detector and will be recreated every time 
    {@link #detectDescriptors(boolean, IProgressMonitor)} is run.
    '''
    return list()


  def getTransientDescriptors(self):
    '''
    Get the descriptors considered to be transient -- those that have been
    registered but are not otherwise known to be recreated on the next workspace launch.
    Such descriptors will be persisted.
    '''
    return list()


  def scanForNewDescriptors(self):
    '''
    Scan for new descriptors.
    @return the descriptors that were found
    '''
    return list()


  def scanForNewDescriptors(self, _java_io_File):
    '''
    Scan for new descriptors.
    @return the descriptors that were found
    '''
    return list()


  def getRegistryConfig(self):
    '''
    Get the configuration for the registry
    @return configuration, never None
    '''
    return com_silabs_ss_platform_api_content_core_registry_IRegistryConfig()


  def getRegistryPlugins(self):
    '''
    Return the list of registry plugins associated with this registry.
    '''
    return list()


  def getReporter(self):
    '''
    Return the reporter for this registry.
    @return the reporter added to this registry
    '''
    return com_silabs_ss_platform_api_rcp_core_StatusReporter()


  def getId(self):
    '''
    Get the unique instance id of the registry
    @return counter
    '''
    return int()


  def getDescriptorInterfaceClass(self):
    '''
    Return the descriptor interface class for this registry.
    '''
    return java_lang_Class()


  def invokeBatchOperation(self, _java_util_concurrent_Callable):
    return object()


  def getName(self):
    '''
    Get the name of this registry.
    @return name
    '''
    return str()


  def getNoneDescriptorId(self):
    '''
    Return the none descriptor id if there is one.
    @return a string id or None if there is no none descriptor.
    '''
    return str()


  def getAllDescriptorIds(self):
    '''
    Get the ids of all the descriptors in the registry.
    @return array, never None
    '''
    return list()


  def getDescriptorsMap(self):
    '''
    Return a copy of the current descriptors map. This is not guaranteed to be a synced map!
    '''
    return java_util_Map()


  def getDetectorClasses(self):
    '''
    Get the detector classes.
    '''
    return java_util_Map()


  def getPreferredDescriptorMapping(self):
    return java_util_Map()


  def getPreferences(self):
    '''
    Get the preferences that stores the enablement state
    @return prefs or None if prefs should not be loaded/saved
    '''
    return org_osgi_service_prefs_Preferences()


  def addManagerRegistryListener(self, managerListener
  ):
    '''
    This should only be called by the manager when it first
    starts up. This ensures that the managerListener is the
    last listener to be called when a registry event happens.
    The manager needs to propagate changed events but shouldn't
    do this until the registry event is fully propagated.
    @param managerListener

    @type managerListener
    : com_silabs_ss_platform_api_content_core_registry_IRegistryListener
    '''
    pass


  def loadFromPrefs(self, _org_osgi_service_prefs_Preferences):
    '''
    Internal manager support
    '''
    pass


  def reportEvent(self, event
  ):
    '''
    Fire a registry event.
    @param event

    @type event
    : com_silabs_ss_platform_api_content_core_registry_RegistryEvent
    '''
    pass


  def saveToPrefs(self, _org_osgi_service_prefs_Preferences, _list):
    '''
    Internal manager support.
    '''
    pass


  def updateForDescriptor(self, desc, the, the):
    '''
    Update the internal databases based on a change to the descriptor.
    @param desc the descriptor that has changed
    @param the old value
    @param the new value

    @type desc: com_silabs_ss_platform_api_content_core_IDescriptor
    @type the: str
    @type the: str
    '''
    pass


  def addRegistryListener(self, listener
  ):
    '''
    Add a listener to the registry.  Ignore duplicates.
    @param listener

    @type listener
    : com_silabs_ss_platform_api_content_core_registry_IRegistryListener
    '''
    pass


  def ensureSync(self):
    '''
    Ensure the registry's descriptors are synchronized, in the event 
    the registry utilizes lazy loading.

    Note for threading: Registries support single thread re-entrancy during
    loading. They do not support multithreaded re-entrancy during reloading.
    Adding threaded re-entrancy will very quickly and typically consistently
    cause deadlocks.

    This will force any outstanding {@link IRegistryListener}s to be fired.

    (note: clients should not need to call this, though other registry implementations might)
    '''
    pass


  def loadPrefs(self):
    '''
    Load the customized and user descriptors from preferences
    '''
    pass


  def refresh(self):
    '''
    Refresh the registry (scanning for new descriptors) and refresh any
    known descriptors.
    '''
    pass


  def refreshDescriptor(self, _com_silabs_ss_platform_api_content_core_IDescriptor):
    '''
    Refresh a single descriptor from the registry. Note that this will 
    not scan for any new descriptors.
    '''
    pass


  def registerDetector(self, detector
  ):
    '''
    Add a detector for descriptors, invoked via {@link #detectDescriptors(boolean, IProgressMonitor)}
    @param detector

    @type detector
    : com_silabs_ss_platform_api_content_core_registry_IDetector
    '''
    pass


  def removeDetector(self, detector
  ):
    '''
    Remove a detector for descriptors, invoked via {@link #detectDescriptors(boolean, IProgressMonitor)}
    @param detector

    @type detector
    : com_silabs_ss_platform_api_content_core_registry_IDetector
    '''
    pass


  def removeRegistryListener(self, listener
  ):
    '''
    Remove a listener to the registry.  Ignore missing listener.
    @param listener

    @type listener
    : com_silabs_ss_platform_api_content_core_registry_IRegistryListener
    '''
    pass


  def resetRegistry(self):
    '''
    Reset the registry, throwing away its preferences, all transient descriptors, removing all
    listeners, and resetting its sync state.
    '''
    pass


  def resetSync(self):
    '''
    Clear the registry's sync state, so that the next #ensureSync() will do work.

    (note: clients should not need to call this, though other registry implementations might)
    '''
    pass


  def savePrefs(self):
    '''
    Save the customized and user descriptors to preferences
    '''
    pass


class com_silabs_ss_platform_api_content_core_registry_IRegistry(org_eclipse_core_runtime_IAdaptable):
  '''
  Base interface for a registry of elements -- essentially a map
  of id to Element with notifications.

  Descriptors are identified by a unique identifier (
  {@link IDescriptor#getId()}). This id is used to look up descriptors.
  Descriptors may be registered by extension point, explicit registration, or
  other means. Ones not registered by extension are persisted in the Eclipse configuration.
   *
  '''
  def init(self):
    self.allDescriptors = self.getAllDescriptors()

    self.detectedDescriptors = self.getDetectedDescriptors()

    self.transientDescriptors = self.getTransientDescriptors()

    self.registryConfig = self.getRegistryConfig()

    self.registryPlugins = self.getRegistryPlugins()

    self.id = self.getId()

    self.name = self.getName()

    self.noneDescriptorId = self.getNoneDescriptorId()

    self.allDescriptorIds = self.getAllDescriptorIds()

    self.preferredDescriptorMapping = self.getPreferredDescriptorMapping()

  def isLoaded(self):
    '''
    Return whether this registry has finished loading.
    @return 
    '''
    return bool()


  def registerDescriptor(self, _com_silabs_ss_platform_api_content_core_IDescriptor):
    '''
    Register a descriptor, firing {@link IRegistryListener#descriptorAdded(com.silabs.ss.platform.api.content.core.IDescribable)}
    @return True if descriptor is new, False if the new descriptor replaced another
    '''
    return bool()


  def removeDescriptor(self, _com_silabs_ss_platform_api_content_core_IDescriptor):
    '''
    Remove a descriptor, firing {@link IRegistryListener#descriptorRemoved(com.silabs.ss.platform.api.content.core.IDescribable)}
    @return True if descriptor was registered before
    '''
    return bool()


  def createDescriptor(self):
    '''
    Create a new descriptor with an empty model.
    '''
    return com_silabs_ss_platform_api_content_core_IDescriptor()


  def createDescriptor(self, _com_silabs_ss_platform_api_content_core_model_MDescriptor):
    '''
    Create a new descriptor with an empty model.
    '''
    return com_silabs_ss_platform_api_content_core_IDescriptor()


  def findCompatibleDescriptor(self, idOrName):
    '''
    Return the descriptors with the given id and compatible with the API of the given version.
    For unversioned descriptors, returns a value only if the id has no version.

    This will find an {@link IVersionedDescriptor} with the given id and compatible with its version,
    or a non-versioned descriptor with this id.
    @param idOrName identifier or name of a descriptor, with or without a version
    @type idOrName: str
    @return nearest compatible descriptor or None
    '''
    return com_silabs_ss_platform_api_content_core_IDescriptor()


  def findCompatibleDescriptor(self, idOrName, _org_osgi_framework_Version):
    '''
    Return the descriptors with the given id and compatible with the API of the given version.
    For unversioned descriptors, returns a value only if the id has no version.

    This will find an {@link IVersionedDescriptor} with the given id and compatible with its version,
    or a non-versioned descriptor with this id.
    @param idOrName identifier or name of a descriptor, with or without a version
    @type idOrName: str
    @return nearest compatible descriptor or None
    '''
    return com_silabs_ss_platform_api_content_core_IDescriptor()


  def findDescriptor(self, _str):
    '''
    Find a descriptor with the given unique id in the registry.
    @return descriptor or None
    '''
    return com_silabs_ss_platform_api_content_core_IDescriptor()


  def findDescriptor(self, _str, _org_osgi_framework_Version):
    '''
    Find a descriptor with the given unique id in the registry.
    @return descriptor or None
    '''
    return com_silabs_ss_platform_api_content_core_IDescriptor()


  def detectDescriptors(self, ignoreExisting, parameters, monitor):
    '''
    Scan for recognized descriptors using registered {@link IDetector} instances.
    In addition, the {@link CoreProperties#BUILTIN} property should be set
    to indicate whether a descriptor is built in to the product.
    @param ignoreExisting if True, filter out descriptors which are already registered
    @param parameters map of key/value pairs controlling the detector -- see {@link IDetector}
    @param monitor monitor for tracking progress and cancellation
    @type ignoreExisting: bool
    @type parameters: java_util_Map
    @type monitor: org_eclipse_core_runtime_IProgressMonitor
    @return list of descriptors, never None
    @throws OperationCanceledException if monitor is canceled
    '''
    return list()


  def detectDescriptors(self, ignoreExisting, parameters):
    '''
    Scan for recognized descriptors using registered {@link IDetector} instances.
    In addition, the {@link CoreProperties#BUILTIN} property should be set
    to indicate whether a descriptor is built in to the product.
    @param ignoreExisting if True, filter out descriptors which are already registered
    @param parameters map of key/value pairs controlling the detector -- see {@link IDetector}
    @param monitor monitor for tracking progress and cancellation
    @type ignoreExisting: bool
    @type parameters: org_eclipse_core_runtime_IProgressMonitor
    @return list of descriptors, never None
    @throws OperationCanceledException if monitor is canceled
    '''
    return list()


  def findAllDescriptorsAnyVersionFor(self, ids):
    '''
    Get an array of descriptors for the given ids, ignoring versions for any {@link IVersionedDescriptor}.

    @param ids the array of ids to find
    @type ids: list
    @return an array of descriptors, never None, but possibly shorter than the length of descs
    '''
    return list()


  def findAllDescriptorsFor(self, ids):
    '''
    Get an array of descriptors for the given ids.

    @param ids the array of ids to find
    @type ids: list
    @return an array of descriptors, never None, but possibly shorter than the length of descs
    '''
    return list()


  def findDescriptorsAnyVersion(self, unversionedId):
    '''
    Return the descriptors with the given id and any version.

    This will find an {@link IVersionedDescriptor} with the given unversioned id,
    or a non-versioned descriptor with this id.
    @param unversionedId identifier of a descriptor
    @type unversionedId: str
    @return array, never None, in no particular order
    '''
    return list()


  def findDescriptorsFromName(self, name):
    '''
    Return the descriptors that have the same name as the input.
    @param name name of some descriptors
    @type name: str
    @return array, never None, in no particular order
    '''
    return list()


  def findDescriptorsInRange(self, unversionedId, minVersion, maxVersion):
    '''
    Return the descriptors with the given id and version range.

    This will find an {@link IVersionedDescriptor} with a version in the given range,
    or a non-versioned descriptor if {@value minVersion} and {@value maxVersion} are None.
    @param unversionedId identifier of descriptor
    @param minVersion lower limit, inclusive (version >= minVersion); may be None to fetch all from unversioned or 0.0 to maxVersion
    @param maxVersion upper limit, exclusive (version None to fetch all greater than minVersion

    @type unversionedId: str
    @type minVersion: org_osgi_framework_Version
    @type maxVersion: org_osgi_framework_Version
    @return array, never None, in no particular order
    '''
    return list()


  def getAllDescriptors(self):
    '''
    Get all the descriptors in the registry.
    @return array, never None
    '''
    return list()


  def getDetectedDescriptors(self):
    '''
    Get the descriptors considered to be detected -- those that have been added
    through a detector and will be recreated every time 
    {@link #detectDescriptors(boolean, IProgressMonitor)} is run.
    '''
    return list()


  def getTransientDescriptors(self):
    '''
    Get the descriptors considered to be transient -- those that have been
    registered but are not otherwise known to be recreated on the next workspace launch.
    Such descriptors will be persisted.
    '''
    return list()


  def scanForNewDescriptors(self):
    '''
    Scan for new descriptors.
    @return the descriptors that were found
    '''
    return list()


  def scanForNewDescriptors(self, _java_io_File):
    '''
    Scan for new descriptors.
    @return the descriptors that were found
    '''
    return list()


  def getRegistryConfig(self):
    '''
    Get the configuration for the registry
    @return configuration, never None
    '''
    return com_silabs_ss_platform_api_content_core_registry_IRegistryConfig()


  def getRegistryPlugins(self):
    '''
    Return the list of registry plugins associated with this registry.
    '''
    return list()


  def getId(self):
    '''
    Get the unique instance id of the registry
    @return counter
    '''
    return int()


  def invokeBatchOperation(self, _java_util_concurrent_Callable):
    return object()


  def getName(self):
    '''
    Get the name of this registry.
    @return name
    '''
    return str()


  def getNoneDescriptorId(self):
    '''
    Return the none descriptor id if there is one.
    @return a string id or None if there is no none descriptor.
    '''
    return str()


  def getAllDescriptorIds(self):
    '''
    Get the ids of all the descriptors in the registry.
    @return array, never None
    '''
    return list()


  def getPreferredDescriptorMapping(self):
    return java_util_Map()


  def addRegistryListener(self, listener
  ):
    '''
    Add a listener to the registry.  Ignore duplicates.
    @param listener

    @type listener
    : com_silabs_ss_platform_api_content_core_registry_IRegistryListener
    '''
    pass


  def ensureSync(self):
    '''
    Ensure the registry's descriptors are synchronized, in the event 
    the registry utilizes lazy loading.

    Note for threading: Registries support single thread re-entrancy during
    loading. They do not support multithreaded re-entrancy during reloading.
    Adding threaded re-entrancy will very quickly and typically consistently
    cause deadlocks.

    This will force any outstanding {@link IRegistryListener}s to be fired.

    (note: clients should not need to call this, though other registry implementations might)
    '''
    pass


  def loadPrefs(self):
    '''
    Load the customized and user descriptors from preferences
    '''
    pass


  def refresh(self):
    '''
    Refresh the registry (scanning for new descriptors) and refresh any
    known descriptors.
    '''
    pass


  def refreshDescriptor(self, _com_silabs_ss_platform_api_content_core_IDescriptor):
    '''
    Refresh a single descriptor from the registry. Note that this will 
    not scan for any new descriptors.
    '''
    pass


  def registerDetector(self, detector
  ):
    '''
    Add a detector for descriptors, invoked via {@link #detectDescriptors(boolean, IProgressMonitor)}
    @param detector

    @type detector
    : com_silabs_ss_platform_api_content_core_registry_IDetector
    '''
    pass


  def removeDetector(self, detector
  ):
    '''
    Remove a detector for descriptors, invoked via {@link #detectDescriptors(boolean, IProgressMonitor)}
    @param detector

    @type detector
    : com_silabs_ss_platform_api_content_core_registry_IDetector
    '''
    pass


  def removeRegistryListener(self, listener
  ):
    '''
    Remove a listener to the registry.  Ignore missing listener.
    @param listener

    @type listener
    : com_silabs_ss_platform_api_content_core_registry_IRegistryListener
    '''
    pass


  def resetRegistry(self):
    '''
    Reset the registry, throwing away its preferences, all transient descriptors, removing all
    listeners, and resetting its sync state.
    '''
    pass


  def resetSync(self):
    '''
    Clear the registry's sync state, so that the next #ensureSync() will do work.

    (note: clients should not need to call this, though other registry implementations might)
    '''
    pass


  def savePrefs(self):
    '''
    Save the customized and user descriptors to preferences
    '''
    pass


class com_silabs_ss_platform_api_content_core_registry_IRegistryConfig(object):
  '''
  This interface configures an {@link IRegistry}.
   *
  '''
  def init(self):
    self.statusReporter = self.getStatusReporter()

    self.descriptorClass = self.getDescriptorClass()

    self.descriptorIntfClass = self.getDescriptorIntfClass()

    self.bundleId = self.getBundleId()

    self.detectionJobLabel = self.getDetectionJobLabel()

    self.noneDescriptorId = self.getNoneDescriptorId()

    self.preferenceScopeId = self.getPreferenceScopeId()

    self.preferredDescriptorMapping = self.getPreferredDescriptorMapping()

    self.registryPluginProviders = self.getRegistryPluginProviders()

    self.packageTypes = self.getPackageTypes()

  def distinctInstallPaths(self):
    '''
    Whether the descriptors in this registry cannot have the same install paths. 
    Multiple None/empty install paths can still be added to the registry.
    @return 
    '''
    return bool()


  def isTestMode(self):
    '''
    Tell whether the registry is in test mode.  This usually means an
    alternate set of extensions is scanned (if extensions are used) and
    that prefs are not loaded and saved.
    @return 
    '''
    return bool()


  def getStatusReporter(self):
    '''
    Get the reporter for issues arising from the registry
    '''
    return com_silabs_ss_platform_api_rcp_core_StatusReporter()


  def getDescriptorClass(self):
    '''
    Get the concrete class for the descriptor, for instantiation #createDescriptor()
    @return concrete class
    '''
    return java_lang_Class()


  def getDescriptorIntfClass(self):
    '''
    Get the class of the interface for the descriptor (for use in generating arrays)
    '''
    return java_lang_Class()


  def getBundleId(self):
    '''
    Get the bundle id of the owner, for use in reporting status and finding extensions
    @return bundle id
    '''
    return str()


  def getDetectionJobLabel(self):
    '''
    Get the human-readable name of the job that detects descriptors
    @return label like "Detecting General Tso's Chickens..."
    '''
    return str()


  def getNoneDescriptorId(self):
    '''
    Get the none descriptor id
    @return the none descriptor id or None if there isn't one
    '''
    return str()


  def getPreferenceScopeId(self):
    '''
    Get the id of the pref scope storing information for the manager
    @return str, never None
    '''
    return str()


  def getPreferredDescriptorMapping(self):
    '''
    Get the location of the preferred descriptor mapping file
    @return path to file or None
    '''
    return str()


  def getRegistryPluginProviders(self):
    return list()


  def getPackageTypes(self):
    '''
    Get the package types that this registry uses.
    @return list of packages
    '''
    return list()


class com_silabs_ss_platform_api_content_core_registry_IRegistryListener(object):
  '''
  Base listener interface for a registry.
  @see BaseManager

  *
  '''
  def eventFired(self, _com_silabs_ss_platform_api_content_core_registry_RegistryEvent):
    '''
    An event was fired
    '''
    pass


class com_silabs_ss_platform_api_content_core_registry_RegistryEvent(object):
  def init(self):
    self.object = self.getObject()

    self.valueChangedEvent = self.getValueChangedEvent()

  class RegistryEventType(java_lang_Enum):
    ADDED = com_silabs_ss_platform_api_content_core_registry_RegistryEvent.RegistryEventType
    '''
    '''

    CHANGED = com_silabs_ss_platform_api_content_core_registry_RegistryEvent.RegistryEventType
    '''
    '''

    REMOVED = com_silabs_ss_platform_api_content_core_registry_RegistryEvent.RegistryEventType
    '''
    '''

    def valueOf(self, _str):
      return com_silabs_ss_platform_api_content_core_registry_RegistryEvent.RegistryEventType()


    def values(self):
      return list()


  def isAdded(self):
    '''
    Tell if this event is an 'add'
    @return True if add; {@link #getobject()} is the new object
    '''
    return bool()


  def isChanged(self):
    '''
    Tell whether this event is a change event that modifies the
    object (id, name, label, descriptor, properties)
    @return True if the event is a change
    '''
    return bool()


  def isPropertyChange(self, propertyId):
    '''
    Tell whether this event is a change that modifies the given property
    @param propertyId
    @type propertyId: str
    @return True if the event is a property change affecting this property
    '''
    return bool()


  def isRemoved(self):
    '''
    Tell if this event is a 'remove'
    @return True if remove; {@link #getobject()} is the removed object
    '''
    return bool()


  def getObject(self):
    '''
    @return the object affected
    '''
    return com_silabs_ss_platform_api_content_core_IDescribable()


  def getValueChangedEvent(self):
    '''
    @return the valueChangedEvent, only non-None for {@link ManagerEventType#PROPERTY_CHANGED}
    '''
    return com_silabs_ss_platform_api_content_core_IPropertyAccessListener_ValueChangedEvent()


  def equals(self, _object):
    return bool()


  def isAdded(self):
    return bool()


  def isChanged(self):
    return bool()


  def isPropertyChange(self, _str):
    return bool()


  def isRemoved(self):
    return bool()


  def getObject(self):
    return com_silabs_ss_platform_api_content_core_IDescribable()


  def getValueChangedEvent(self):
    return com_silabs_ss_platform_api_content_core_IPropertyAccessListener_ValueChangedEvent()


  def hashCode(self):
    return int()


  def toString(self):
    return str()


  def added(self, _com_silabs_ss_platform_api_content_core_IDescribable):
    return com_silabs_ss_platform_api_content_core_registry_RegistryEvent()


  def changed(self, _com_silabs_ss_platform_api_content_core_IDescribable):
    return com_silabs_ss_platform_api_content_core_registry_RegistryEvent()


  def propertyChanged(self, _com_silabs_ss_platform_api_content_core_IDescribable, _com_silabs_ss_platform_api_content_core_IPropertyAccessListener_ValueChangedEvent):
    return com_silabs_ss_platform_api_content_core_registry_RegistryEvent()


  def removed(self, _com_silabs_ss_platform_api_content_core_IDescribable):
    return com_silabs_ss_platform_api_content_core_registry_RegistryEvent()


class com_silabs_ss_platform_api_content_core_registry_plugins_IRegistryPlugin(org_eclipse_core_runtime_IAdaptable):
  '''
  *
  '''
  def init(self):
    self.pluginDescriptors = self.getPluginDescriptors()

  class RegistryLoad(java_lang_Enum):
    REGISTRY_LOAD_IGNORE = com_silabs_ss_platform_api_content_core_registry_plugins_IRegistryPlugin.RegistryLoad
    '''
    '''

    REGISTRY_LOAD_NOT_SYNCED = com_silabs_ss_platform_api_content_core_registry_plugins_IRegistryPlugin.RegistryLoad
    '''
    '''

    REGISTRY_LOAD_SYNCED = com_silabs_ss_platform_api_content_core_registry_plugins_IRegistryPlugin.RegistryLoad
    '''
    '''

    def valueOf(self, _str):
      return com_silabs_ss_platform_api_content_core_registry_plugins_IRegistryPlugin.RegistryLoad()


    def values(self):
      return list()


  def loadRegistry(self, _org_osgi_service_prefs_Preferences):
    '''
    The registry will call this when it loads. This is
    called after the registry has been created but before
    any real work has been done (loading, syncing, etc.).

    This should return whether the registry needs to resync using
    {@link #REGISTRY_LOAD_IGNORE}, {@link #REGISTRY_LOAD_NOT_SYNCED},
    or {@link #REGISTRY_LOAD_SYNCED}.
    @return 
    '''
    return com_silabs_ss_platform_api_content_core_registry_plugins_IRegistryPlugin.RegistryLoad()


  def getPluginDescriptors(self):
    '''
    Return any plugin detected descriptors.
    '''
    return list()


  def checkingEnsureSync(self):
    '''
    The registry will call this before it checks whether it needs
    to synchronize with what is on disk. The implementer has the
    option to check if the registry is not in sync and call 
    {@link IRegistry#resetSync()} to force the current 
    {@link IRegistry#ensureSync()} to do work.
    '''
    pass


  def detectingDescriptors(self):
    '''
    The registry will call this when it is synchronizing with 
    what is on disk. This actually loads up the registry with
    descriptors from the detectors.
    '''
    pass


  def onDescriptorAdded(self, desc
  ):
    '''
    Override to respond to the registration of a new descriptor (without
    attaching a listener).  The descriptor has already
    been added and its Ecore listener added by
    this point, but clients have not been notified.
    @param desc

    @type desc
    : com_silabs_ss_platform_api_content_core_IDescriptor
    '''
    pass


  def onDescriptorRemoved(self, desc
  ):
    '''
    Override to respond to the removal of a descriptor (without
    attaching a listener).  The descriptor has already
    been removed and its Ecore listener removed by
    this point, but clients have not been notified.
    @param desc

    @type desc
    : com_silabs_ss_platform_api_content_core_IDescriptor
    '''
    pass


  def onDetectorAdded(self, detector):
    '''
    Called when a detector is added to the registry.
    @param detector the new detector

    @type detector: com_silabs_ss_platform_api_content_core_registry_IDetector
    '''
    pass


  def onDetectorRemoved(self, detector):
    '''
    Called when a detector is removed from the registry.
    @param detector the removed detector

    @type detector: com_silabs_ss_platform_api_content_core_registry_IDetector
    '''
    pass


  def registryRefreshed(self):
    '''
    Called when the registry refreshes. This maps to the {@link IRegistry#resetSync()}
    '''
    pass


  def registryReset(self):
    '''
    Called when the registry is reset. This maps to {@link IRegistry#resetRegistry()}
    '''
    pass


  def registryStarted(self):
    '''
    The registry will call this after it has fully started up
    and loaded. Note that the registry may not have any descriptors
    yet.
    '''
    pass


  def saveRegistry(self, _org_osgi_service_prefs_Preferences, _list):
    '''
    The registry will call this when it saves. This will be wrapped
    in a thread safe registry runnable.
    '''
    pass


class com_silabs_ss_platform_api_content_core_registry_plugins_IRegistryPluginProvider(object):
  '''
  Internal provider definition to create an {@link IRegistryPlugin}. This should
  only be used by the {@link IRegistry} that actually adds the plugins.
   *
  '''
  def createPlugin(self, _com_silabs_ss_platform_api_content_core_registry_IInternalRegistry, _com_silabs_ss_platform_api_content_core_registry_IRegistryConfig):
    '''
    Create the plugin that this provider provides.
    '''
    return com_silabs_ss_platform_api_content_core_registry_plugins_IRegistryPlugin()


class com_silabs_ss_platform_api_content_part_core_IPartDescriptor(com_silabs_ss_platform_api_content_part_core_IPartOrGroupDescriptorBase):
  '''
  This encapsulates metadata for a part available in the system.
   *
  '''
  def init(self):
    self.registry = self.getRegistry()

    self.parent = self.getParent()

    self.parent = self.getParent()

  def equals(self, _object):
    '''
    Returns True if the {@code obj} has the same class and the same id.
    @see object#equals(object)
    '''
    return bool()


  def isBuiltin(self):
    '''
    Tell whether the descriptor (and entity) are considered built in to the product.
    This may be used to distinguish bundled descriptors vs. ones discovered on
    the user's system.
    @see CoreProperties#BUILTIN
    '''
    return bool()


  def isHidden(self):
    '''
    Tell whether the object is intended to be hidden from UI.
    @see CoreProperties#HIDDEN
    '''
    return bool()


  def copy(self):
    '''
    Deep-copy the receiver
    @return new copy
    '''
    return com_silabs_ss_platform_api_content_core_IDescriptor()


  def getPropertyAccess(self):
    '''
    Get the full property access for the descriptor.
    '''
    return com_silabs_ss_platform_api_content_core_IPropertyAccess()


  def getPropertyMapper(self):
    '''
    Get the property mapper for the descriptor.
    '''
    return com_silabs_ss_platform_api_content_core_IPropertyMapper()


  def getRegistry(self):
    '''
    Get the owning registry.
    @return registry, non-None if descriptor is contained in a registry
    '''
    return com_silabs_ss_platform_api_content_core_registry_IRegistry()


  def getRegistry(self):
    return com_silabs_ss_platform_api_content_core_registry_IRegistry()


  def getParent(self):
    '''
    Get the container for the part descriptor
    @return group (may be None)
    '''
    return com_silabs_ss_platform_api_content_part_core_IPartGroupDescriptor()


  def hashCode(self):
    '''
    Returns the hash code of the receiver's id.
    @see object#hashCode()
    '''
    return int()


  def getProperty(self, key):
    '''
    Get the value of a property for the receiver, parent chain, or default if not defined in any of them.
    @param key name of a property in receiver's scope or fully qualified property name
    @type key: str
    @return value, in the Java type represented by the property's {@link IType}, or a string if the
    property is not registerted in the property scope.  The value may be the default if not explicitly
    set, or None if no such property is known in the receiver's or parent chain's properties
    @throws IllegalArgumentException if property value does not conform to type
    @see IPropertyAccess#getValue(str)
    '''
    return object()


  def getProperty(self, key, _com_silabs_ss_platform_api_content_core_IType):
    '''
    Get the value of a property for the receiver, parent chain, or default if not defined in any of them.
    @param key name of a property in receiver's scope or fully qualified property name
    @type key: str
    @return value, in the Java type represented by the property's {@link IType}, or a string if the
    property is not registerted in the property scope.  The value may be the default if not explicitly
    set, or None if no such property is known in the receiver's or parent chain's properties
    @throws IllegalArgumentException if property value does not conform to type
    @see IPropertyAccess#getValue(str)
    '''
    return object()


  def getProperty(self, key, _str):
    '''
    Get the value of a property for the receiver, parent chain, or default if not defined in any of them.
    @param key name of a property in receiver's scope or fully qualified property name
    @type key: str
    @return value, in the Java type represented by the property's {@link IType}, or a string if the
    property is not registerted in the property scope.  The value may be the default if not explicitly
    set, or None if no such property is known in the receiver's or parent chain's properties
    @throws IllegalArgumentException if property value does not conform to type
    @see IPropertyAccess#getValue(str)
    '''
    return object()


  def getParent(self):
    '''
    Get the parent
    @return parent object, or None
    '''
    return object()


  def getDescription(self):
    '''
    Human-readable description of the value for UI.

    This description is interpreted as HTML.

    @return description, never None (but may be blank)
    '''
    return str()


  def getId(self):
    '''
    The fully qualified identifer for this entity, including the ids of its parents, up to an implementation-defined root.
    '''
    return str()


  def getLabel(self):
    '''
    The label for the item, displayed in UI.
    @return label, never None
    '''
    return str()


  def getName(self):
    '''
    The unique name for this item within its parent.   See {@link #getId()} for the full unique identifier.
    '''
    return str()


  def toString(self):
    '''
    Return the id and label.
    @return str
    '''
    return str()


  def getLabel(self):
    '''
    Label for the value, if it appears in UI.  This label is plain text.

    This may be a derived value, sourced from the wrapped MDescriptor.  If
    that value is None or blank, a label is automatically
    generated from the {@link #getName()}.
    @return label, never None
    '''
    return str()


  def gatherListProperty(self, _str):
    return list()


  def getInstallationPath(self):
    '''
    Get the path where the installation lives on the system.
    @return path
    @throws IOException if path cannot be resolved
    @see CoreProperties#INSTALLATION_PATH
    '''
    return org_eclipse_core_runtime_IPath()


  def getParent(self):
    '''
    Get the container for the part descriptor
    @return group (may be None)
    '''
    return object()


class com_silabs_ss_platform_api_content_part_core_IPartGroupDescriptor(com_silabs_ss_platform_api_content_part_core_IPartOrGroupDescriptorBase):
  '''
  This represents a collection of parts.
   *
  '''
  def init(self):
    self.parts = self.getParts()

    self.parent = self.getParent()

    self.groups = self.getGroups()

    self.parent = self.getParent()

  def equals(self, _object):
    '''
    Returns True if the {@code obj} has the same class and the same id.
    @see object#equals(object)
    '''
    return bool()


  def isBuiltin(self):
    '''
    Tell whether the descriptor (and entity) are considered built in to the product.
    This may be used to distinguish bundled descriptors vs. ones discovered on
    the user's system.
    @see CoreProperties#BUILTIN
    '''
    return bool()


  def isHidden(self):
    '''
    Tell whether the object is intended to be hidden from UI.
    @see CoreProperties#HIDDEN
    '''
    return bool()


  def isEmpty(self):
    '''
    Tell if the group has either parts or groups.
    @return flag
    '''
    return bool()


  def copy(self):
    '''
    Deep-copy the receiver
    @return new copy
    '''
    return com_silabs_ss_platform_api_content_core_IDescriptor()


  def getPropertyAccess(self):
    '''
    Get the full property access for the descriptor.
    '''
    return com_silabs_ss_platform_api_content_core_IPropertyAccess()


  def getPropertyMapper(self):
    '''
    Get the property mapper for the descriptor.
    '''
    return com_silabs_ss_platform_api_content_core_IPropertyMapper()


  def getRegistry(self):
    '''
    Get the owning registry.
    @return registry, non-None if descriptor is contained in a registry
    '''
    return com_silabs_ss_platform_api_content_core_registry_IRegistry()


  def getParts(self):
    '''
    Get the descriptors composing the group.
    @return array, never None
    '''
    return list()


  def getParent(self):
    '''
    Get the containing group.
    '''
    return com_silabs_ss_platform_api_content_part_core_IPartGroupDescriptor()


  def getGroups(self):
    '''
    Get the groups contained in the receiver.
    @return array, never None
    '''
    return list()


  def hashCode(self):
    '''
    Returns the hash code of the receiver's id.
    @see object#hashCode()
    '''
    return int()


  def getProperty(self, key):
    '''
    Get the value of a property for the receiver, parent chain, or default if not defined in any of them.
    @param key name of a property in receiver's scope or fully qualified property name
    @type key: str
    @return value, in the Java type represented by the property's {@link IType}, or a string if the
    property is not registerted in the property scope.  The value may be the default if not explicitly
    set, or None if no such property is known in the receiver's or parent chain's properties
    @throws IllegalArgumentException if property value does not conform to type
    @see IPropertyAccess#getValue(str)
    '''
    return object()


  def getProperty(self, key, _com_silabs_ss_platform_api_content_core_IType):
    '''
    Get the value of a property for the receiver, parent chain, or default if not defined in any of them.
    @param key name of a property in receiver's scope or fully qualified property name
    @type key: str
    @return value, in the Java type represented by the property's {@link IType}, or a string if the
    property is not registerted in the property scope.  The value may be the default if not explicitly
    set, or None if no such property is known in the receiver's or parent chain's properties
    @throws IllegalArgumentException if property value does not conform to type
    @see IPropertyAccess#getValue(str)
    '''
    return object()


  def getProperty(self, key, _str):
    '''
    Get the value of a property for the receiver, parent chain, or default if not defined in any of them.
    @param key name of a property in receiver's scope or fully qualified property name
    @type key: str
    @return value, in the Java type represented by the property's {@link IType}, or a string if the
    property is not registerted in the property scope.  The value may be the default if not explicitly
    set, or None if no such property is known in the receiver's or parent chain's properties
    @throws IllegalArgumentException if property value does not conform to type
    @see IPropertyAccess#getValue(str)
    '''
    return object()


  def getParent(self):
    '''
    Get the parent
    @return parent object, or None
    '''
    return object()


  def getDescription(self):
    '''
    Human-readable description of the value for UI.

    This description is interpreted as HTML.

    @return description, never None (but may be blank)
    '''
    return str()


  def getId(self):
    '''
    The fully qualified identifer for this entity, including the ids of its parents, up to an implementation-defined root.
    '''
    return str()


  def getLabel(self):
    '''
    The label for the item, displayed in UI.
    @return label, never None
    '''
    return str()


  def getName(self):
    '''
    The unique name for this item within its parent.   See {@link #getId()} for the full unique identifier.
    '''
    return str()


  def toString(self):
    '''
    Return the id and label.
    @return str
    '''
    return str()


  def getLabel(self):
    '''
    Label for the value, if it appears in UI.  This label is plain text.

    This may be a derived value, sourced from the wrapped MDescriptor.  If
    that value is None or blank, a label is automatically
    generated from the {@link #getName()}.
    @return label, never None
    '''
    return str()


  def gatherListProperty(self, _str):
    return list()


  def getInstallationPath(self):
    '''
    Get the path where the installation lives on the system.
    @return path
    @throws IOException if path cannot be resolved
    @see CoreProperties#INSTALLATION_PATH
    '''
    return org_eclipse_core_runtime_IPath()


  def getParent(self):
    '''
    Get the containing group.
    '''
    return object()


class com_silabs_ss_platform_api_content_part_core_IPartOrGroupDescriptorBase(com_silabs_ss_platform_api_content_core_IDescriptor):
  '''
  Decorator interface to identify parts or part groups
   *
  '''
  def equals(self, _object):
    '''
    Returns True if the {@code obj} has the same class and the same id.
    @see object#equals(object)
    '''
    return bool()


  def isBuiltin(self):
    '''
    Tell whether the descriptor (and entity) are considered built in to the product.
    This may be used to distinguish bundled descriptors vs. ones discovered on
    the user's system.
    @see CoreProperties#BUILTIN
    '''
    return bool()


  def isHidden(self):
    '''
    Tell whether the object is intended to be hidden from UI.
    @see CoreProperties#HIDDEN
    '''
    return bool()


  def copy(self):
    '''
    Deep-copy the receiver
    @return new copy
    '''
    return com_silabs_ss_platform_api_content_core_IDescriptor()


  def getPropertyAccess(self):
    '''
    Get the full property access for the descriptor.
    '''
    return com_silabs_ss_platform_api_content_core_IPropertyAccess()


  def getPropertyMapper(self):
    '''
    Get the property mapper for the descriptor.
    '''
    return com_silabs_ss_platform_api_content_core_IPropertyMapper()


  def getRegistry(self):
    '''
    Get the owning registry.
    @return registry, non-None if descriptor is contained in a registry
    '''
    return com_silabs_ss_platform_api_content_core_registry_IRegistry()


  def hashCode(self):
    '''
    Returns the hash code of the receiver's id.
    @see object#hashCode()
    '''
    return int()


  def getProperty(self, key):
    '''
    Get the value of a property for the receiver, parent chain, or default if not defined in any of them.
    @param key name of a property in receiver's scope or fully qualified property name
    @type key: str
    @return value, in the Java type represented by the property's {@link IType}, or a string if the
    property is not registerted in the property scope.  The value may be the default if not explicitly
    set, or None if no such property is known in the receiver's or parent chain's properties
    @throws IllegalArgumentException if property value does not conform to type
    @see IPropertyAccess#getValue(str)
    '''
    return object()


  def getProperty(self, key, _com_silabs_ss_platform_api_content_core_IType):
    '''
    Get the value of a property for the receiver, parent chain, or default if not defined in any of them.
    @param key name of a property in receiver's scope or fully qualified property name
    @type key: str
    @return value, in the Java type represented by the property's {@link IType}, or a string if the
    property is not registerted in the property scope.  The value may be the default if not explicitly
    set, or None if no such property is known in the receiver's or parent chain's properties
    @throws IllegalArgumentException if property value does not conform to type
    @see IPropertyAccess#getValue(str)
    '''
    return object()


  def getProperty(self, key, _str):
    '''
    Get the value of a property for the receiver, parent chain, or default if not defined in any of them.
    @param key name of a property in receiver's scope or fully qualified property name
    @type key: str
    @return value, in the Java type represented by the property's {@link IType}, or a string if the
    property is not registerted in the property scope.  The value may be the default if not explicitly
    set, or None if no such property is known in the receiver's or parent chain's properties
    @throws IllegalArgumentException if property value does not conform to type
    @see IPropertyAccess#getValue(str)
    '''
    return object()


  def getParent(self):
    '''
    Get the parent
    @return parent object, or None
    '''
    return object()


  def getDescription(self):
    '''
    Human-readable description of the value for UI.

    This description is interpreted as HTML.

    @return description, never None (but may be blank)
    '''
    return str()


  def getId(self):
    '''
    The fully qualified identifer for this entity, including the ids of its parents, up to an implementation-defined root.
    '''
    return str()


  def getLabel(self):
    '''
    The label for the item, displayed in UI.
    @return label, never None
    '''
    return str()


  def getName(self):
    '''
    The unique name for this item within its parent.   See {@link #getId()} for the full unique identifier.
    '''
    return str()


  def toString(self):
    '''
    Return the id and label.
    @return str
    '''
    return str()


  def getLabel(self):
    '''
    Label for the value, if it appears in UI.  This label is plain text.

    This may be a derived value, sourced from the wrapped MDescriptor.  If
    that value is None or blank, a label is automatically
    generated from the {@link #getName()}.
    @return label, never None
    '''
    return str()


  def gatherListProperty(self, _str):
    return list()


  def getInstallationPath(self):
    '''
    Get the path where the installation lives on the system.
    @return path
    @throws IOException if path cannot be resolved
    @see CoreProperties#INSTALLATION_PATH
    '''
    return org_eclipse_core_runtime_IPath()


class com_silabs_ss_platform_api_device_core_DeviceGroup(object):
  '''
  This represents a user categorization of devices into groups.
   *
  '''
  UNNAMED = str
  '''
  '''

  lastId = int
  '''
  '''

  def uniqueId(self):
    return int()


  def can(self, _str):
    return bool()


  def equals(self, _object):
    return bool()


  def isEmpty(self):
    '''
    Returns True if this group is empty.
       *
    @param 
    @returns boolean
    '''
    return bool()


  def rgb(self):
    '''
    Returns RGB or None if default color is to be used.
       *
    @returns Rgb
    '''
    return com_silabs_java_utils_Rgb()


  def hashCode(self):
    return int()


  def label(self):
    '''
    Get the label for the group.
    @return 
    '''
    return str()


  def toString(self):
    return str()


  def capabilities(self):
    return list()


  def devices(self):
    '''
    Convenient method that asks the device manager for all devices that belong to this group.
       *
       *
    @param 
    @returns List
    '''
    return list()


  def id(self):
    '''
    Get the identifier for this group
    @return the id
    '''
    return int()


  def ungroupedDevices(self):
    return list()


  def run(self, _str):
    pass


  def setLabel(self, ):
    '''
    Sets the label.
       *
       *
    @param 
    @returns void

    @type : str
    '''
    pass


  def setRgb(self, _com_silabs_java_utils_Rgb):
    '''
    Sets the color.
       *
    @returns void
    '''
    pass


class com_silabs_ss_platform_api_device_core_DeviceHardware(object):
  '''
  This class encapsulates all information about the hardware behind the device.
   *
  Created on Oct 15, 2015
  '''
  dontBugMe = list
  '''
  '''

  def matchesPersistentId(self, _com_silabs_ss_platform_api_device_core_DeviceHardware):
    '''
    Returns True if at least one of the persistent IDs matches.
       *
    @returns boolean
    '''
    return bool()


  def inspectionInfo(self):
    return com_silabs_java_utils_InfoBlock()


  def boards(self, ):
    '''
    Returns the boards for this device.
    If honorUserOverride flag is False, then it returns detected boards.
    If it's True, and user has specified a manual override, then it returns that override.
       *
    @param 
    @returns array of IBoardDescriptor, won't be None but can be empty.

    @type : bool
    '''
    return list()


  def defaultTargetPart(self):
    '''
    Returns the default target part, or None if none exists.
    This defaults to the first detected part.
    @return 
    '''
    return com_silabs_ss_platform_api_content_part_core_IPartDescriptor()


  def targetPart(self):
    '''
    Returns the user specified target part if set, otherwise the default target part.
    @return 
    '''
    return com_silabs_ss_platform_api_content_part_core_IPartDescriptor()


  def parts(self, ):
    '''
    Returns the parts for this device.
    If honorUserOverride flag is False, then it returns detected parts.
    If it's True, and user has specified specified a target part, then it
    returns the target part plus any other detected parts.
       *
    @param 
    @returns array of IPartDescriptor, won't be None but can be empty.

    @type : bool
    '''
    return list()


  def adapterIPAddress(self):
    '''
    Returns the IP address of the adapter.
       *
    @returns str
    '''
    return str()


  def adapterNickname(self):
    '''
    Returns the user nickname recorded on the hardware, if one exists.
    This nickname is NOT local to the PC, it HAS to be on the hardware, otherwise
    it belongs to the DeviceSettings class.
       *
    @returns str
    '''
    return str()


  def adapterSerialNumber(self):
    '''
    Returns the serial number from the adapter.
       *
    @returns str
    '''
    return str()


  def toString(self):
    return str()


  def persistentIds(self):
    '''
    Persistent ID is what is used in saving device state.
    The IDs returned should be ordered by reliability, most reliable first.
       *
    For example Serial number is VERY reliable, because it mostly never changes.
    Nickname of an adapter is LESS, but still FAIRLY reliable, because they don't change often.
    IP address is SOMEWHAT reliable, but it can change easily.
    USB bus/add is NOT reliable, since it can change at any enumeration.
       *
    Returned list is a copy of internal state, so you can pollute it if you want.
       *
    IMPORTANT: The logic here should follow the logic in siApackDeviceLockId() inside
    the apack_lib C library, since that's how the locks can find each other.
    @param 
    @returns List
    '''
    return list()


  def addDetectedBoard(self, ):
    '''
    This informs the object that a board has been detected.
    Do not use this method for user settings, user setting are in
    DeviceSettings object.
       *
    @param 
    @returns void

    @type : com_silabs_ss_platform_api_content_board_core_IBoardDescriptor
    '''
    pass


  def addDetectedPart(self, ):
    '''
    This informs the object that a board has been detected.
    Do not use this method for user settings, user setting are in
    DeviceSettings object.
       *
    @param 
    @returns void

    @type : com_silabs_ss_platform_api_content_part_core_IPartDescriptor
    '''
    pass


  def applyDetectionInfo(self, _com_silabs_ss_platform_api_device_core_detection_IDeviceDetectionInfo):
    pass


  def setInspectionInfo(self, _com_silabs_java_utils_InfoBlock):
    pass


  def setIpAddress(self, _str):
    '''
    Sets the IP address of this device.
       *
    @returns void
    '''
    pass


  def setNickname(self, ):
    '''
    Sets the nickname of the device.
       *
       *
    @param 
    @returns void

    @type : str
    '''
    pass


  def setSerialNumber(self, _str):
    '''
    Sets the serial number of this device.
       *
    @returns void
    '''
    pass


class com_silabs_ss_platform_api_device_core_DeviceSetting(object):
  '''
  Holder for the device settings, which can be set by users.
   *
  This object contains ONLY the data which can be persisted and changed
  by the users.
   *
  Created on Oct 13, 2015
  '''
  BOARD_OVERRIDES = str
  '''
  '''

  GROUPS = str
  '''
  '''

  LABEL = str
  '''
  '''

  PROTECT_FROM_DETECTION = str
  '''
  '''

  TARGET_PART_OVERRIDE = str
  '''
  '''

  def containsDefaultValues(self):
    '''
    If this method returns True, then there is nothing to persist.
       *
       *
    @param 
    @returns boolean
    '''
    return bool()


  def isInGroup(self, _com_silabs_ss_platform_api_device_core_DeviceGroup):
    '''
    Returns True if this device belongs to a given group.
    '''
    return bool()


  def isProtectedFromDetection(self):
    '''
    Returns True if this device is protected from detection.
       *
       *
    @param 
    @returns boolean
    '''
    return bool()


  def isUngrouped(self):
    '''
    Returns True if this device does not belong to any group.
       *
       *
    @param 
    @returns boolean
    '''
    return bool()


  def marshall(self):
    '''
    Marshals this whole class into a text form.
       *
       *
    @param 
    @returns InfoBlockFile
    '''
    return com_silabs_java_utils_InfoBlockFile()


  def boards(self):
    '''
    Returns the boards associated with this device, if any.
    @return boards, or None
    '''
    return list()


  def targetPart(self):
    '''
    Returns a target part override.
    @return 
    '''
    return com_silabs_ss_platform_api_content_part_core_IPartDescriptor()


  def getExtension(self, _java_lang_Class):
    return com_silabs_ss_platform_api_device_core_IDeviceSettingExtension()


  def getExtension(self, _java_lang_Class, _com_silabs_ss_platform_api_device_core_IDeviceSettingExtension):
    return com_silabs_ss_platform_api_device_core_IDeviceSettingExtension()


  def labelOverride(self):
    '''
    Returns the override for the label as user specified
    '''
    return str()


  def addToGroup(self, ):
    '''
    Adds this device to a given group.
       *
    @param 
    @returns void

    @type : com_silabs_ss_platform_api_device_core_DeviceGroup
    '''
    pass


  def removeFromGroup(self, ):
    '''
    Removes a device from a given group.
       *
    @param 
    @returns void

    @type : com_silabs_ss_platform_api_device_core_DeviceGroup
    '''
    pass


  def setBoardOverrides(self, _list):
    '''
    Sets the board(s) selected by the user for this device.
    '''
    pass


  def setLabelOverride(self, _str):
    '''
    Sets the label override
    '''
    pass


  def setProtectedFromDetection(self, ):
    '''
    Set the flag which protects this device from updates during detection.
       *
       *
    @param 
    @returns void

    @type : bool
    '''
    pass


  def setTargetPart(self, part
  ):
    '''
    Sets the target part.
    @param part

    @type part
    : com_silabs_ss_platform_api_content_part_core_IPartDescriptor
    '''
    pass


  def unmarshall(self, _com_silabs_java_utils_InfoBlockFile):
    pass


class com_silabs_ss_platform_api_device_core_DeviceUseState(object):
  '''
  This class contains the runtime state of the device.
  This data does not persist.
   *
  Created on Oct 9, 2015
  '''
  GLOBAL_SELECTOR_ID = str
  '''
  '''

  def deselect(self, selectorID
  unique):
    '''
    Mark the device as not selected by the given selector.

    See {@link #select(str)} for more.
       *
    @param selectorID
    unique ID of the selector that does the marking. None means Studio
    platform.
    @type selectorID
    unique: str
    @return True if the device was selected by the selector. False otherwise.
    '''
    return bool()


  def isInUseBySomeoneElse(self):
    '''
    In use flag means that this device is in use by some user and the user has
    requested for you to stay away. This is an advisory flag.
    There is nothing really preventing the code to still attempt to use a device,
    but some other user may be unhappy.
       *
    This flag is particularly important with TCP/IP devices, which are shared
    resources on the network.
       *
       *
    @param 
    @returns boolean
    '''
    return bool()


  def isLocked(self):
    '''
    Returns True if device is locked.
    A locked device means that device is doing some operation that makes it currently
    unusable by other parts of the system. Other parts of the system should stay away.
       *
    isLocked is inherently a local flag, it does not imply any cross-user interaction.
       *
       *
    @param 
    @returns boolean
    '''
    return bool()


  def isSelectedBy(self, selectorID
  unique):
    '''
    Is the device selected by the selector ?

    See {@link #select(str)} for more.
       *
    @param selectorID
    unique ID of the selector that does the marking. None means Studio
    platform.
    @type selectorID
    unique: str
    @return True or False.
    '''
    return bool()


  def lock(self, _com_silabs_ss_platform_api_device_core_IDeviceClient):
    '''
    Locks a device, providing a lock message. If it succeeds it returns True. If it fails,
    it returns False.
       *
    @returns boolean
    '''
    return bool()


  def lock(self, _str):
    '''
    Locks a device, providing a lock message. If it succeeds it returns True. If it fails,
    it returns False.
       *
    @returns boolean
    '''
    return bool()


  def select(self, selectorID
  unique):
    '''
    Mark the device as selected by a selector. If the device is already
    selected by the selector, this method just does nothing.

       *
    A selector is an entity (aka client, usually a tool, or any component in
    Studio) that wants to mark the device as selected for its own special use.
    E.g. flash programmer may select several devices to flash at the same time.
    Caller should make sure the selectorID is unique across studio. Also
    selector is responsible for the UI that let user perform selection.

    If selectorID is None, it indicates the default selector, the Studio
    platform, which allows just one selected device at a time. That selected
    device is called the "global" selected device. For many entities this
    single global selection is the target.
       *
    @param selectorID
    unique ID of the selector that does the marking. None means Studio
    platform.
    @type selectorID
    unique: str
    @return True if the device is not yet selected by the selector. False
    otherwise.
    '''
    return bool()


  def severity(self):
    return com_silabs_java_utils_enums_Severity()


  def notifications(self):
    '''
    Returns the notifications on this device.
       *
    @param 
    @returns DeviceNotification[]
    '''
    return list()


  def inUseMessage(self):
    '''
    Returns the inUse message if one exists.
    This method may return None if there is no message.
       *
    @returns str
    '''
    return str()


  def lockMessage(self):
    '''
    Returns the lock message if one exists.
    This method may return None if there is no message.
       *
    @returns str
    '''
    return str()


  def cacheLockInfo(self):
    pass


  def clearLockInfoCache(self):
    pass


  def unlock(self):
    '''
    Remove locks associated with this device.
       *
       *
    @param 
    @returns void
    '''
    pass


  def unlock(self, ):
    '''
    Remove locks associated with this device.
       *
       *
    @param 
    @returns void

    @type : com_silabs_ss_platform_api_device_core_IDeviceClient
    '''
    pass


class com_silabs_ss_platform_api_device_core_IDevice(com_silabs_ss_platform_api_device_core_identifier_IDeviceIdentifierContainer):
  '''
  Each individual piece of hardware connected to Simplicity platform
  is represented by one of these.

  A device is a unification of one or more pieces of {@link IDeviceDetectionInfo}
  from different {@link IDeviceLocator} implementations.

  A device is backed by one or more {@link IDeviceHandler} objects, which
  implement logic for actually using the device (typically implemented
  along with the locator).  These are available through #getAdapter() calls on
  the receiver.
   *
  Created on Dec 19, 2014
  '''
  def hasExtension(self, _str):
    '''
    Returns True if an extension with this key is registered to a device.
       *
    @returns boolean
    '''
    return bool()


  def hardware(self):
    '''
    Returns the information about the hardware behind the device.
    This object contains parts, boards, etc.
       *
    @param 
    @returns DeviceHardware
    '''
    return com_silabs_ss_platform_api_device_core_DeviceHardware()


  def settings(self):
    '''
    Get the user setting object. This object contains ALL the data that users have set,
    whether they are just settings (such as, say, a custom label), or overrides, such as
    specifying a part, that will be used, even though hardware() is reporting a different
    part.
       *
    The data inside this object is persistent across sessions.
       *
    @param 
    @returns UserSetting
    '''
    return com_silabs_ss_platform_api_device_core_DeviceSetting()


  def useState(self):
    '''
    Returns the state of device usage.
    '''
    return com_silabs_ss_platform_api_device_core_DeviceUseState()


  def deviceExtension(self, _str):
    '''
    Returns the extension object under a given key.
       *
    @returns IDeviceExtension
    '''
    return com_silabs_ss_platform_api_device_core_IDeviceExtension()


  def detectionInfos(self):
    '''
    Get the array of locator info that have created this device.
    There will always be at least one of these, otherwise a device
    couldn't get created. In case when multiple locators discovered
    this device, you can have multiple ones.
    '''
    return list()


  def label(self):
    '''
    Get a human-readable description of the device
    @return text, never None
    '''
    return str()


  def deviceExtensionKeys(self):
    '''
    Returns an array of IDs for all extensions that are registered with this device.
       *
    @returns str[]
    '''
    return list()


  def addExtension(self, _str, _com_silabs_ss_platform_api_device_core_IDeviceExtension):
    '''
    Adds a device extension object to the device.
       *
    @returns void
    '''
    pass


  def cacheLockInfo(self):
    pass


  def clearLockInfoCache(self):
    pass


class com_silabs_ss_platform_api_device_core_IDeviceClient(object):
  '''
  @since 4.1
  '''
  def info(self):
    return com_silabs_ss_platform_api_device_core_IDeviceClientInfo()


  def requestUse(self, _com_silabs_ss_platform_api_device_core_IDevice, _com_silabs_ss_platform_api_device_core_IDeviceClientInfo, _str):
    return org_eclipse_core_runtime_IStatus()


class com_silabs_ss_platform_api_device_core_IDeviceClientInfo(object):
  '''
  @since 4.1
  '''
  def lockMask(self):
    return int()


  def name(self):
    return str()


class com_silabs_ss_platform_api_device_core_IDeviceExtension(com_silabs_ss_platform_api_capability_ICapableWithFeedback):
  '''
  Clients or other tools can register device extension objects to an IDevice for their own purpose.
  IDevice itself keeps a registry of these extensions.
   *
  All extensions must implement this interface.
   *
  Created on May 25, 2016
  '''
  def label(self):
    '''
    Returns a human readable label describing this extension
    '''
    return str()


class com_silabs_ss_platform_api_device_core_IDeviceToken(object):
  '''
  This is the interface to a well-known property key stored on
  IDeviceLocatorInfo.
   *
  '''
  def id(self):
    '''
    str identifier
    '''
    return str()


  def label(self):
    '''
    Human-readable label
    '''
    return str()


class com_silabs_ss_platform_api_device_core_detection_IDeviceDetectionInfo(object):
  '''
  Whenever a device is discovered, one of these is created for each device
  and passed on to the listener.
   *
  Created on Jan 6, 2015
  '''
  def detector(self):
    '''
    Returns the detector that created this info.
    '''
    return com_silabs_ss_platform_api_device_core_detection_IDeviceDetector()


  def id(self):
    '''
    Returns the device identifier for this info.

    This encapsulates the domain into which the device belongs
    and an address in that domain.

    Note: this is only used for lookups inside the DeviceManager.
    The id() is not directly exposed on IDevice.
       *
    @returns DeviceIdentifier
    '''
    return com_silabs_ss_platform_api_device_core_identifier_DeviceIdentifier()


  def label(self):
    '''
    Returns label for this device info.
       *
       *
    @param 
    @returns str
    '''
    return str()


  def properties(self):
    '''
    Get the properties gathered by the locator.
    @return modifiable map, never None
    '''
    return java_util_Map()


  def isInUse(self):
    return bool()


class com_silabs_ss_platform_api_device_core_detection_IDeviceDetector(object):
  '''
  Tagging interface for a device detector.
  Either locators or notifiers are detectors.
  In case where you don't know which you have, you can use this.
  Created on Sep 21, 2015
  '''
  pass
class com_silabs_ss_platform_api_device_core_identifier_DeviceIdentifier(object):
  '''
  Device locator is the equivalent of the URI in the world of
  devices connected to the studio platform.
   *
  Created on Dec 23, 2014
  '''
  def equals(self, _object):
    return bool()


  def domain(self):
    '''
    Returns domain of this device.
       *
    @returns IDeviceDomain
    '''
    return com_silabs_ss_platform_api_device_core_identifier_IDeviceDomain()


  def hashCode(self):
    return int()


  def domainAddress(self):
    '''
    Returns domain address.
       *
    @returns str
    '''
    return str()


  def toString(self):
    return str()


  def atLeastOneDeviceIdMatches(self, _com_silabs_ss_platform_api_device_core_identifier_IDeviceIdentifierContainer, _com_silabs_ss_platform_api_device_core_identifier_IDeviceIdentifierContainer):
    return bool()


  def containsId(self, _com_silabs_ss_platform_api_device_core_identifier_IDeviceIdentifierContainer, _com_silabs_ss_platform_api_device_core_identifier_DeviceIdentifier):
    return bool()


  def isDeviceSourcedFrom(self, _com_silabs_ss_platform_api_device_core_IDevice, _com_silabs_ss_platform_api_device_core_identifier_IDeviceDomain):
    return bool()


  def fromString(self, _str):
    return com_silabs_ss_platform_api_device_core_identifier_DeviceIdentifier()


  def printIds(self, _list):
    return str()


  def printIds(self, _com_silabs_ss_platform_api_device_core_identifier_IDeviceIdentifierContainer):
    return str()


class com_silabs_ss_platform_api_device_core_identifier_IDeviceDomain(java_lang_Comparable):
  '''
  Device domain groups device by the connectivity type.
   *
  For example: all TCP/IP ISA3-like devices would be of a same domain.
  Or all toolstick devices are of a same domain.
   *
  Domain is useful entity for querying a set of devices in cases
  where particular functionality is available only for a particular
  set of devices.
   *
  Created on Dec 23, 2014
  '''
  def description(self):
    '''
    Human readable description of this domain.
       *
       *
    @param 
    @returns str
    '''
    return str()


  def id(self):
    '''
    Identifier for this domain.
    @returns str
    '''
    return str()


class com_silabs_ss_platform_api_device_core_identifier_IDeviceIdentifierContainer(object):
  '''
  Anything that contains devide identifiers is an idevice identifier container.
  An IDevice is that, but so can be other things.
   *
  Created on May 29, 2015
  '''
  def ids(self):
    '''
    Returns the device identifiers, which are a mechanism to uniquely identify
    a given device. A typical device, located by a single locator
    will have only one identifier. But it is possible to have multiple
    identifiers, if this device has been discovered by multiple locators
    and determined to be one and the same device.
       *
    @returns DeviceIdentifier[]
    '''
    return list()


class com_silabs_ss_platform_api_installer_core_IPackageDescriptor(com_silabs_ss_platform_api_content_core_IDescriptor):
  '''
  This represents an installable or installed package in
  the system.
   *
  '''
  def init(self):
    self.packageDescriptor = self.getPackageDescriptor()

    self.includePackageIds = self.getIncludePackageIds()

    self.registry = self.getRegistry()

    self.boardCompatibility = self.getBoardCompatibility()

    self.changelog = self.getChangelog()

    self.featurePackageId = self.getFeaturePackageId()

    self.icon = self.getIcon()

    self.license = self.getLicense()

    self.partCompatibility = self.getPartCompatibility()

    self.provider = self.getProvider()

    self.types = self.getTypes()

    self.typesList = self.getTypesList()

    self.defaultInstallLocation = self.getDefaultInstallLocation()

    self.iU = self.getIU()

    self.version = self.getVersion()

    self.registry = self.getRegistry()

  CUSTOM_LOCATION_INSTALLFOLDER = str
  '''
  '''

  CUSTOM_LOCATION_PROPERTIES = str
  '''
  '''

  CUSTOM_LOCATION_PROP_KEY = str
  '''
  '''

  DEFAULT_INSTALL_PATH_PROP_KEY = str
  '''
  '''

  KEY_PACKAGE_BOARD_COMPATIBILITY = str
  '''
  '''

  KEY_PACKAGE_CHANGELOG = str
  '''
  '''

  KEY_PACKAGE_DESCRIPTION = str
  '''
  '''

  KEY_PACKAGE_FEATURE_ID = str
  '''
  '''

  KEY_PACKAGE_ICON = str
  '''
  '''

  KEY_PACKAGE_LABEL = str
  '''
  '''

  KEY_PACKAGE_PART_COMPATIBILITY = str
  '''
  '''

  KEY_PACKAGE_TYPES = str
  '''
  '''

  KEY_PACKAGE_VERSION = str
  '''
  '''

  PACKAGE_FILE_EXTENSION = str
  '''
  '''

  TARGET_INSTALL_PATH_PROP_KEY = str
  '''
  '''

  def equals(self, _object):
    '''
    Returns True if the {@code obj} has the same class and the same id.
    @see object#equals(object)
    '''
    return bool()


  def isBuiltin(self):
    '''
    Tell whether the descriptor (and entity) are considered built in to the product.
    This may be used to distinguish bundled descriptors vs. ones discovered on
    the user's system.
    @see CoreProperties#BUILTIN
    '''
    return bool()


  def isHidden(self):
    '''
    Tell whether the object is intended to be hidden from UI.
    @see CoreProperties#HIDDEN
    '''
    return bool()


  def copy(self):
    '''
    Deep-copy the receiver
    @return new copy
    '''
    return com_silabs_ss_platform_api_content_core_IDescriptor()


  def getPropertyAccess(self):
    '''
    Get the full property access for the descriptor.
    '''
    return com_silabs_ss_platform_api_content_core_IPropertyAccess()


  def getPropertyMapper(self):
    '''
    Get the property mapper for the descriptor.
    '''
    return com_silabs_ss_platform_api_content_core_IPropertyMapper()


  def getRegistry(self):
    '''
    Get the owning registry.
    @return registry, non-None if descriptor is contained in a registry
    '''
    return com_silabs_ss_platform_api_content_core_registry_IRegistry()


  def getPackageDescriptor(self):
    return com_silabs_ss_platform_api_installer_core_IPackageDescriptor()


  def getIncludePackageIds(self):
    return list()


  def getRegistry(self):
    return com_silabs_ss_platform_api_installer_core_IPackageRegistry()


  def hashCode(self):
    '''
    Returns the hash code of the receiver's id.
    @see object#hashCode()
    '''
    return int()


  def getProperty(self, key):
    '''
    Get the value of a property for the receiver, parent chain, or default if not defined in any of them.
    @param key name of a property in receiver's scope or fully qualified property name
    @type key: str
    @return value, in the Java type represented by the property's {@link IType}, or a string if the
    property is not registerted in the property scope.  The value may be the default if not explicitly
    set, or None if no such property is known in the receiver's or parent chain's properties
    @throws IllegalArgumentException if property value does not conform to type
    @see IPropertyAccess#getValue(str)
    '''
    return object()


  def getProperty(self, key, _com_silabs_ss_platform_api_content_core_IType):
    '''
    Get the value of a property for the receiver, parent chain, or default if not defined in any of them.
    @param key name of a property in receiver's scope or fully qualified property name
    @type key: str
    @return value, in the Java type represented by the property's {@link IType}, or a string if the
    property is not registerted in the property scope.  The value may be the default if not explicitly
    set, or None if no such property is known in the receiver's or parent chain's properties
    @throws IllegalArgumentException if property value does not conform to type
    @see IPropertyAccess#getValue(str)
    '''
    return object()


  def getProperty(self, key, _str):
    '''
    Get the value of a property for the receiver, parent chain, or default if not defined in any of them.
    @param key name of a property in receiver's scope or fully qualified property name
    @type key: str
    @return value, in the Java type represented by the property's {@link IType}, or a string if the
    property is not registerted in the property scope.  The value may be the default if not explicitly
    set, or None if no such property is known in the receiver's or parent chain's properties
    @throws IllegalArgumentException if property value does not conform to type
    @see IPropertyAccess#getValue(str)
    '''
    return object()


  def getDescription(self):
    '''
    Human-readable description of the value for UI.

    This description is interpreted as HTML.

    @return description, never None (but may be blank)
    '''
    return str()


  def getId(self):
    '''
    The fully qualified identifer for this entity, including the ids of its parents, up to an implementation-defined root.
    '''
    return str()


  def getLabel(self):
    '''
    The label for the item, displayed in UI.
    @return label, never None
    '''
    return str()


  def getName(self):
    '''
    The unique name for this item within its parent.   See {@link #getId()} for the full unique identifier.
    '''
    return str()


  def toString(self):
    '''
    Return the id and label.
    @return str
    '''
    return str()


  def getLabel(self):
    '''
    Label for the value, if it appears in UI.  This label is plain text.

    This may be a derived value, sourced from the wrapped MDescriptor.  If
    that value is None or blank, a label is automatically
    generated from the {@link #getName()}.
    @return label, never None
    '''
    return str()


  def getBoardCompatibility(self):
    return str()


  def getChangelog(self):
    return str()


  def getFeaturePackageId(self):
    return str()


  def getIcon(self):
    return str()


  def getLicense(self):
    '''
    Get the license type of the package
    @return license (e.g. "EPL")
    '''
    return str()


  def getPartCompatibility(self):
    return str()


  def getProvider(self):
    '''
    Get the label of the organization providing the package
    @return label
    '''
    return str()


  def getTypes(self):
    return str()


  def getTypesList(self):
    return list()


  def getResourceURI(self, packageResourcePath, monitor):
    '''
    Get the package associated resource file
    @param packageResourcePath
    @param monitor
    @type packageResourcePath: str
    @type monitor: org_eclipse_core_runtime_IProgressMonitor
    @return 
    '''
    return java_net_URI()


  def gatherListProperty(self, _str):
    return list()


  def getInstallationPath(self):
    '''
    Get the path where the installation lives on the system.
    @return path
    @throws IOException if path cannot be resolved
    @see CoreProperties#INSTALLATION_PATH
    '''
    return org_eclipse_core_runtime_IPath()


  def getDefaultInstallLocation(self):
    return org_eclipse_core_runtime_IPath()


  def getIU(self):
    return org_eclipse_equinox_p2_metadata_IInstallableUnit()


  def getVersion(self):
    return org_osgi_framework_Version()


  def getRegistry(self):
    return com_silabs_ss_platform_api_content_core_registry_IRegistry()


  def isPackageTypeByPackageTypeId(self, _str, _com_silabs_ss_platform_api_installer_core_IPackageDescriptor):
    return bool()


class com_silabs_ss_platform_api_installer_core_IPackageRegistry(com_silabs_ss_platform_api_content_core_registry_IRegistry):
  '''
  *
  '''
  def isLoaded(self):
    '''
    Return whether this registry has finished loading.
    @return 
    '''
    return bool()


  def registerDescriptor(self, _com_silabs_ss_platform_api_content_core_IDescriptor):
    '''
    Register a descriptor, firing {@link IRegistryListener#descriptorAdded(com.silabs.ss.platform.api.content.core.IDescribable)}
    @return True if descriptor is new, False if the new descriptor replaced another
    '''
    return bool()


  def removeDescriptor(self, _com_silabs_ss_platform_api_content_core_IDescriptor):
    '''
    Remove a descriptor, firing {@link IRegistryListener#descriptorRemoved(com.silabs.ss.platform.api.content.core.IDescribable)}
    @return True if descriptor was registered before
    '''
    return bool()


  def createDescriptor(self):
    '''
    Create a new descriptor with an empty model.
    '''
    return com_silabs_ss_platform_api_content_core_IDescriptor()


  def createDescriptor(self, _com_silabs_ss_platform_api_content_core_model_MDescriptor):
    '''
    Create a new descriptor with an empty model.
    '''
    return com_silabs_ss_platform_api_content_core_IDescriptor()


  def findCompatibleDescriptor(self, idOrName):
    '''
    Return the descriptors with the given id and compatible with the API of the given version.
    For unversioned descriptors, returns a value only if the id has no version.

    This will find an {@link IVersionedDescriptor} with the given id and compatible with its version,
    or a non-versioned descriptor with this id.
    @param idOrName identifier or name of a descriptor, with or without a version
    @type idOrName: str
    @return nearest compatible descriptor or None
    '''
    return com_silabs_ss_platform_api_content_core_IDescriptor()


  def findCompatibleDescriptor(self, idOrName, _org_osgi_framework_Version):
    '''
    Return the descriptors with the given id and compatible with the API of the given version.
    For unversioned descriptors, returns a value only if the id has no version.

    This will find an {@link IVersionedDescriptor} with the given id and compatible with its version,
    or a non-versioned descriptor with this id.
    @param idOrName identifier or name of a descriptor, with or without a version
    @type idOrName: str
    @return nearest compatible descriptor or None
    '''
    return com_silabs_ss_platform_api_content_core_IDescriptor()


  def findDescriptor(self, _str):
    '''
    Find a descriptor with the given unique id in the registry.
    @return descriptor or None
    '''
    return com_silabs_ss_platform_api_content_core_IDescriptor()


  def findDescriptor(self, _str, _org_osgi_framework_Version):
    '''
    Find a descriptor with the given unique id in the registry.
    @return descriptor or None
    '''
    return com_silabs_ss_platform_api_content_core_IDescriptor()


  def detectDescriptors(self, ignoreExisting, parameters, monitor):
    '''
    Scan for recognized descriptors using registered {@link IDetector} instances.
    In addition, the {@link CoreProperties#BUILTIN} property should be set
    to indicate whether a descriptor is built in to the product.
    @param ignoreExisting if True, filter out descriptors which are already registered
    @param parameters map of key/value pairs controlling the detector -- see {@link IDetector}
    @param monitor monitor for tracking progress and cancellation
    @type ignoreExisting: bool
    @type parameters: java_util_Map
    @type monitor: org_eclipse_core_runtime_IProgressMonitor
    @return list of descriptors, never None
    @throws OperationCanceledException if monitor is canceled
    '''
    return list()


  def detectDescriptors(self, ignoreExisting, parameters):
    '''
    Scan for recognized descriptors using registered {@link IDetector} instances.
    In addition, the {@link CoreProperties#BUILTIN} property should be set
    to indicate whether a descriptor is built in to the product.
    @param ignoreExisting if True, filter out descriptors which are already registered
    @param parameters map of key/value pairs controlling the detector -- see {@link IDetector}
    @param monitor monitor for tracking progress and cancellation
    @type ignoreExisting: bool
    @type parameters: org_eclipse_core_runtime_IProgressMonitor
    @return list of descriptors, never None
    @throws OperationCanceledException if monitor is canceled
    '''
    return list()


  def findAllDescriptorsAnyVersionFor(self, ids):
    '''
    Get an array of descriptors for the given ids, ignoring versions for any {@link IVersionedDescriptor}.

    @param ids the array of ids to find
    @type ids: list
    @return an array of descriptors, never None, but possibly shorter than the length of descs
    '''
    return list()


  def findAllDescriptorsFor(self, ids):
    '''
    Get an array of descriptors for the given ids.

    @param ids the array of ids to find
    @type ids: list
    @return an array of descriptors, never None, but possibly shorter than the length of descs
    '''
    return list()


  def findDescriptorsAnyVersion(self, unversionedId):
    '''
    Return the descriptors with the given id and any version.

    This will find an {@link IVersionedDescriptor} with the given unversioned id,
    or a non-versioned descriptor with this id.
    @param unversionedId identifier of a descriptor
    @type unversionedId: str
    @return array, never None, in no particular order
    '''
    return list()


  def findDescriptorsFromName(self, name):
    '''
    Return the descriptors that have the same name as the input.
    @param name name of some descriptors
    @type name: str
    @return array, never None, in no particular order
    '''
    return list()


  def findDescriptorsInRange(self, unversionedId, minVersion, maxVersion):
    '''
    Return the descriptors with the given id and version range.

    This will find an {@link IVersionedDescriptor} with a version in the given range,
    or a non-versioned descriptor if {@value minVersion} and {@value maxVersion} are None.
    @param unversionedId identifier of descriptor
    @param minVersion lower limit, inclusive (version >= minVersion); may be None to fetch all from unversioned or 0.0 to maxVersion
    @param maxVersion upper limit, exclusive (version None to fetch all greater than minVersion

    @type unversionedId: str
    @type minVersion: org_osgi_framework_Version
    @type maxVersion: org_osgi_framework_Version
    @return array, never None, in no particular order
    '''
    return list()


  def getAllDescriptors(self):
    '''
    Get all the descriptors in the registry.
    @return array, never None
    '''
    return list()


  def getDetectedDescriptors(self):
    '''
    Get the descriptors considered to be detected -- those that have been added
    through a detector and will be recreated every time 
    {@link #detectDescriptors(boolean, IProgressMonitor)} is run.
    '''
    return list()


  def getTransientDescriptors(self):
    '''
    Get the descriptors considered to be transient -- those that have been
    registered but are not otherwise known to be recreated on the next workspace launch.
    Such descriptors will be persisted.
    '''
    return list()


  def scanForNewDescriptors(self):
    '''
    Scan for new descriptors.
    @return the descriptors that were found
    '''
    return list()


  def scanForNewDescriptors(self, _java_io_File):
    '''
    Scan for new descriptors.
    @return the descriptors that were found
    '''
    return list()


  def getRegistryConfig(self):
    '''
    Get the configuration for the registry
    @return configuration, never None
    '''
    return com_silabs_ss_platform_api_content_core_registry_IRegistryConfig()


  def getRegistryPlugins(self):
    '''
    Return the list of registry plugins associated with this registry.
    '''
    return list()


  def getId(self):
    '''
    Get the unique instance id of the registry
    @return counter
    '''
    return int()


  def invokeBatchOperation(self, _java_util_concurrent_Callable):
    return object()


  def getName(self):
    '''
    Get the name of this registry.
    @return name
    '''
    return str()


  def getNoneDescriptorId(self):
    '''
    Return the none descriptor id if there is one.
    @return a string id or None if there is no none descriptor.
    '''
    return str()


  def getAllDescriptorIds(self):
    '''
    Get the ids of all the descriptors in the registry.
    @return array, never None
    '''
    return list()


  def getPreferredDescriptorMapping(self):
    return java_util_Map()


  def addRegistryListener(self, listener
  ):
    '''
    Add a listener to the registry.  Ignore duplicates.
    @param listener

    @type listener
    : com_silabs_ss_platform_api_content_core_registry_IRegistryListener
    '''
    pass


  def ensureSync(self):
    '''
    Ensure the registry's descriptors are synchronized, in the event 
    the registry utilizes lazy loading.

    Note for threading: Registries support single thread re-entrancy during
    loading. They do not support multithreaded re-entrancy during reloading.
    Adding threaded re-entrancy will very quickly and typically consistently
    cause deadlocks.

    This will force any outstanding {@link IRegistryListener}s to be fired.

    (note: clients should not need to call this, though other registry implementations might)
    '''
    pass


  def loadPrefs(self):
    '''
    Load the customized and user descriptors from preferences
    '''
    pass


  def refresh(self):
    '''
    Refresh the registry (scanning for new descriptors) and refresh any
    known descriptors.
    '''
    pass


  def refreshDescriptor(self, _com_silabs_ss_platform_api_content_core_IDescriptor):
    '''
    Refresh a single descriptor from the registry. Note that this will 
    not scan for any new descriptors.
    '''
    pass


  def registerDetector(self, detector
  ):
    '''
    Add a detector for descriptors, invoked via {@link #detectDescriptors(boolean, IProgressMonitor)}
    @param detector

    @type detector
    : com_silabs_ss_platform_api_content_core_registry_IDetector
    '''
    pass


  def removeDetector(self, detector
  ):
    '''
    Remove a detector for descriptors, invoked via {@link #detectDescriptors(boolean, IProgressMonitor)}
    @param detector

    @type detector
    : com_silabs_ss_platform_api_content_core_registry_IDetector
    '''
    pass


  def removeRegistryListener(self, listener
  ):
    '''
    Remove a listener to the registry.  Ignore missing listener.
    @param listener

    @type listener
    : com_silabs_ss_platform_api_content_core_registry_IRegistryListener
    '''
    pass


  def resetRegistry(self):
    '''
    Reset the registry, throwing away its preferences, all transient descriptors, removing all
    listeners, and resetting its sync state.
    '''
    pass


  def resetSync(self):
    '''
    Clear the registry's sync state, so that the next #ensureSync() will do work.

    (note: clients should not need to call this, though other registry implementations might)
    '''
    pass


  def savePrefs(self):
    '''
    Save the customized and user descriptors to preferences
    '''
    pass


class com_silabs_ss_platform_api_rcp_core_IStatusReporterListener(object):
  '''
  '''
  def statusReported(self, _org_eclipse_core_runtime_IStatus):
    pass


class com_silabs_ss_platform_api_rcp_core_ITypedFilter(object):
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


class com_silabs_ss_platform_api_rcp_core_StatusReporter(object):
  '''
  This class wraps common logging and error reporting tasks centered around
  {@link IStatus}.

  Note: for UI plugins, use StatusReporterUI.
   *
   *
  '''
  def statusSeverity(self, _com_silabs_java_utils_enums_Severity):
    return int()


  def isRealMultiStatus(self, _org_eclipse_core_runtime_IStatus):
    return bool()


  def newCoreException(self, _str):
    return org_eclipse_core_runtime_CoreException()


  def newCoreException(self, _str, _java_lang_Throwable):
    return org_eclipse_core_runtime_CoreException()


  def newCodeStatus(self, _int, _str, _java_lang_Throwable, _int):
    return org_eclipse_core_runtime_IStatus()


  def newErrorStatus(self, _str):
    return org_eclipse_core_runtime_IStatus()


  def newErrorStatus(self, _str, _java_lang_Throwable):
    return org_eclipse_core_runtime_IStatus()


  def newInfoStatus(self, _str):
    return org_eclipse_core_runtime_IStatus()


  def newInfoStatus(self, _str, _java_lang_Throwable):
    return org_eclipse_core_runtime_IStatus()


  def newStatus(self, _int, _str, _java_lang_Throwable):
    return org_eclipse_core_runtime_IStatus()


  def newWarningStatus(self, _str):
    return org_eclipse_core_runtime_IStatus()


  def newWarningStatus(self, _str, _java_lang_Throwable):
    return org_eclipse_core_runtime_IStatus()


  def simplifyStatus(self, status):
    '''
    Simplify a status where the main text has no message, but it is inside
    the exception.
    	 *
    @param status
    @type status: org_eclipse_core_runtime_IStatus
    @return 
    '''
    return org_eclipse_core_runtime_IStatus()


  def addListener(self, _com_silabs_ss_platform_api_rcp_core_IStatusReporterListener):
    '''
    Add a listener to the reporter.
    	 *
    @returns void
    '''
    pass


  def log(self, _com_silabs_java_utils_enums_Severity, _str):
    '''
    Perform the actual logging.
    	 *
    @returns void
    '''
    pass


  def log(self, _com_silabs_java_utils_enums_Severity, _str, _java_lang_Throwable):
    '''
    Perform the actual logging.
    	 *
    @returns void
    '''
    pass


  def log(self, _org_eclipse_core_runtime_IStatus):
    '''
    Perform the actual logging.
    	 *
    @returns void
    '''
    pass


  def logError(self, _str):
    pass


  def logError(self, _str, _java_lang_Throwable):
    pass


  def logException(self, _java_lang_Throwable):
    pass


  def logInfo(self, _str):
    pass


  def logInfo(self, _str, _java_lang_Throwable):
    pass


  def logWarning(self, _str):
    pass


  def logWarning(self, _str, _java_lang_Throwable):
    pass


  def removeListener(self, _com_silabs_ss_platform_api_rcp_core_IStatusReporterListener):
    '''
    Remove a listener from the reporter.
    	 *
    @returns void
    '''
    pass


class com_silabs_ss_platform_api_rcp_core_extensions_IExtensionElementHandler(object):
  '''
  This interface wraps some boilerplate code related to dynamically managing
  objects that are constructed based on extensions. 
   *
  '''
  def handle(self, element, added, context):
    '''
    Handle the addition or removal of the given configuration element.
    @param element the configuration element
    @param added if True, called for
    initially present extensions as well as elements added dynamically;
    else, False when extension is removed dynamically
    @param context client-defined data -- usually a parent object used when recursively
    iterating extensions to construct a tree
    @throws Exception if the content of the element is unexpected (logged by caller)

    @type element: org_eclipse_core_runtime_IConfigurationElement
    @type added: bool
    @type context: object
    '''
    pass


class com_silabs_ss_platform_api_rcp_core_extensions_IExtensionManager(object):
  '''
  This provides common services that enable easy implementation of a service
  that reacts to specific XML elements when certain extensions are added and
  removed from a system.

  There should be one manager for a given extension point, and all top-level
  elements in the extension XML should be registered with {@link #addHandler(str, IExtensionElementHandler)},
  or else warnings will be reported when it appears that no handler is registered
  for a given configuration element.
   *
  '''
  def addHandler(self, elementName, handler
  ):
    '''
    Add a handler for the given element name that appears in extension point XML.
    @param elementName
    @param handler

    @type elementName: str
    @type handler
    : com_silabs_ss_platform_api_rcp_core_extensions_IExtensionElementHandler
    '''
    pass


  def addPostStartupHook(self, runnable
  ):
    '''
    Register a runnable to be invoked after the extension manager starts up.
    At the time such a runnable is called, all the extensions will have been {@link #handle(IConfigurationElement, boolean, object)}'d.
    @param runnable

    @type runnable
    : java_lang_Runnable
    '''
    pass


  def dispose(self):
    '''
    Dispose the manager
    '''
    pass


  def handle(self, el, context, _object):
    '''
    Invoke the handler for adding or removing the given element.  Ignores filters.
    Intended to be used by recursive extension element handlers.  All exceptions are caught
    and logged.
    @param el
    @param context context from recursive invocation; None for top-level invocation

    @type el: org_eclipse_core_runtime_IConfigurationElement
    @type context: bool
    '''
    pass


  def startup(self):
    '''
    Start the manager (after handlers are registered).
    	 *
    After starting up, all startup hooks are invoked and removed.
    '''
    pass


class com_silabs_ss_platform_api_rcp_core_variables_IOperatorHandler(object):
  '''
  This interface, used with {@link IVariableLookup}, allows modifying the
  value fetched from a variable lookup by applying operations upon it.
   *
  '''
  def operate(self, operation, object):
    '''
    Handle a particular operation, returning a new value.
    @param operation
    @param object
    @type operation: str
    @type object: object
    @return updated object
    @throws CoreException for unknown operation, execution error, etc.
    '''
    return object()


  def splitVariableAndOperations(self, varWithOperations):
    '''
    Decompose a variable reference, possibly with operations, 
    into an array starting with the variable name, followed by
    each operation.  The parsing is completely up to the handler.
    @param varWithOperations
    @type varWithOperations: str
    @return 
    '''
    return list()


class com_silabs_ss_platform_api_rcp_core_variables_IVariableLookup(object):
  '''
  This interface is a generic callback which allows
  looking up variables by name and fetching their values.

  Note that this should not be used for new implementations.
  Users should prefer {@link IKeyedVariableLookup}.
  @see VariableSubstitutionEngine

  *
  '''
  def init(self):
    self.variableNames = self.getVariableNames()

  def getValue(self, var):
    '''
    Resolve a variable by name.
    @param var the variable name
    @type var: str
    @return expanded value or None if variable not recognized
    '''
    return object()


  def getVariableNames(self):
    '''
    Get all the known variable names
    @return non-None array of names
    '''
    return list()


class com_silabs_ss_platform_api_rcp_core_variables_IVariableScope(object):
  '''
  This is represents a modifiable set of variables arranged in a
  lexical scope hierarchy.  Variables defined in one scope override
  those in its parent, etc.
   *
  '''
  def init(self):
    self.parent = self.getParent()

    self.variableStore = self.getVariableStore()

    self.localNames = self.getLocalNames()

  def getParent(self):
    '''
    Get the calling scope
    @return scope or None if the receiver is the root
    '''
    return com_silabs_ss_platform_api_rcp_core_variables_IVariableScope()


  def getVariableStore(self):
    '''
    Get the custom variable lookup strategy for the scope
    @return lookup, never None
    '''
    return com_silabs_ss_platform_api_rcp_core_variables_IVariableStore()


  def findLocalValue(self, name):
    '''
    Find the variable in this scope only
    @param name variable name
    @type name: str
    @return value or None
    '''
    return object()


  def getValue(self, name):
    '''
    Search for the variable in the scope chain, starting
    from current scope, and while None, progressing
    to the parent until the root is reached.
    @param name variable name
    @type name: str
    @return value or None
    '''
    return object()


  def getLocalNames(self):
    '''
    Get the locally defined names.
    '''
    return list()


class com_silabs_ss_platform_api_rcp_core_variables_IVariableStore(com_silabs_ss_platform_api_rcp_core_variables_IVariableLookup):
  '''
  This extension to {@link IVariableLookup} allows modifying
  variables.

  Note that this should not be used for new implementations.
  Users should prefer {@link IKeyedVariableStore}.
   *
  '''
  def resetValue(self, name):
    '''
    Undefine a variable in this scope
    @param name variable name

    @type name: str
    '''
    pass


  def setValue(self, name, value):
    '''
    Change the variable
    @param name variable name
    @param value variable's value

    @type name: str
    @type value: object
    '''
    pass


class com_silabs_ss_platform_api_rcp_core_variables_IWritableVariableScope(com_silabs_ss_platform_api_rcp_core_variables_IVariableScope):
  '''
  *
  '''
  def mergeFrom(self, from_, overwrite):
    '''
    Merge the definitions from the given scope into
    the receiver.
    @param from source
    @param overwrite if True, overwrite existing definitions in the receiver,
    else, only merge new definitions

    @type from_: com_silabs_ss_platform_api_rcp_core_variables_IVariableScope
    @type overwrite: bool
    '''
    pass


  def setValue(self, name, value):
    '''
    Set a variable in this scope
    @param name variable name
    @param value variable's value

    @type name: str
    @type value: object
    '''
    pass


  def setVariableStore(self, lookup):
    '''
    Set the custom variable lookup strategy for the scope
    @param lookup new strategy or None for default (map)

    @type lookup: com_silabs_ss_platform_api_rcp_core_variables_IVariableStore
    '''
    pass


class com_silabs_ss_platform_api_scripting_core_IScript(com_silabs_ss_platform_api_content_core_IDescriptor):
  '''
  This interface represents a script engine supported by SLS.
   *
  '''
  def init(self):
    self.lockingObjects = self.getLockingObjects()

  FEATURE_ARRAY_INDEXING = int
  '''
  This feature provides array access on a class, e.g. "foo[index]"
  @see #wrapClass(Class)

  @value 1
  '''

  FEATURE_ATTRIBUTE_READING = int
  '''
  This feature provides attribute reading access on a class, e.g. "foo.bar"
  @see #wrapClass(Class)

  @value 2
  '''

  def equals(self, _object):
    '''
    Returns True if the {@code obj} has the same class and the same id.
    @see object#equals(object)
    '''
    return bool()


  def isBuiltin(self):
    '''
    Tell whether the descriptor (and entity) are considered built in to the product.
    This may be used to distinguish bundled descriptors vs. ones discovered on
    the user's system.
    @see CoreProperties#BUILTIN
    '''
    return bool()


  def isHidden(self):
    '''
    Tell whether the object is intended to be hidden from UI.
    @see CoreProperties#HIDDEN
    '''
    return bool()


  def isWrappedObject(self, obj):
    '''
    Return whether the input object has been wrapped by this script.
    Some java implementations check/cast actual class instances rather
    than just interfaces.
    @param obj the object to check
    @type obj: object
    @return True if the object is wrapped, False otherwise
    '''
    return bool()


  def copy(self):
    '''
    Deep-copy the receiver
    @return new copy
    '''
    return com_silabs_ss_platform_api_content_core_IDescriptor()


  def getPropertyAccess(self):
    '''
    Get the full property access for the descriptor.
    '''
    return com_silabs_ss_platform_api_content_core_IPropertyAccess()


  def getPropertyMapper(self):
    '''
    Get the property mapper for the descriptor.
    '''
    return com_silabs_ss_platform_api_content_core_IPropertyMapper()


  def getRegistry(self):
    '''
    Get the owning registry.
    @return registry, non-None if descriptor is contained in a registry
    '''
    return com_silabs_ss_platform_api_content_core_registry_IRegistry()


  def wrapCheckedException(self, _java_lang_Throwable):
    '''
    Wrap a checked exception for the script
    '''
    return com_silabs_ss_platform_api_scripting_core_ISLSScriptAPI_Exception()


  def wrapObjectAsCheckedException(self, _object):
    '''
    Wrap an object in a checked exception for the script
    @return TODO
    '''
    return com_silabs_ss_platform_api_scripting_core_ISLSScriptAPI_Exception()


  def createConfiguration(self):
    '''
    Create a configuration object for use in creating a script engine.
    @param contextBundle bundle whose classes must be accessible (or None)
    @return new engine
    @throws CoreException if any problems arise
    '''
    return com_silabs_ss_platform_api_scripting_core_IScriptEngineConfiguration()


  def hashCode(self):
    '''
    Returns the hash code of the receiver's id.
    @see object#hashCode()
    '''
    return int()


  def wrapClass(self, javaClass):
    '''
    Wrap a class for use by script, adding script extension features to its class interface.
    @param javaClass a class or interface, possibly implementing extension interfaces
    @type javaClass: java_lang_Class
    @return same object or equivalent script object
    @throws ScriptException
    @see {@link IScriptArrayIndexingClassExtension}
    @see {@link IScriptAttributeReadingClassExtension}
    '''
    return java_lang_Class()


  def getProperty(self, key):
    '''
    Get the value of a property for the receiver, parent chain, or default if not defined in any of them.
    @param key name of a property in receiver's scope or fully qualified property name
    @type key: str
    @return value, in the Java type represented by the property's {@link IType}, or a string if the
    property is not registerted in the property scope.  The value may be the default if not explicitly
    set, or None if no such property is known in the receiver's or parent chain's properties
    @throws IllegalArgumentException if property value does not conform to type
    @see IPropertyAccess#getValue(str)
    '''
    return object()


  def getProperty(self, key, _com_silabs_ss_platform_api_content_core_IType):
    '''
    Get the value of a property for the receiver, parent chain, or default if not defined in any of them.
    @param key name of a property in receiver's scope or fully qualified property name
    @type key: str
    @return value, in the Java type represented by the property's {@link IType}, or a string if the
    property is not registerted in the property scope.  The value may be the default if not explicitly
    set, or None if no such property is known in the receiver's or parent chain's properties
    @throws IllegalArgumentException if property value does not conform to type
    @see IPropertyAccess#getValue(str)
    '''
    return object()


  def getProperty(self, key, _str):
    '''
    Get the value of a property for the receiver, parent chain, or default if not defined in any of them.
    @param key name of a property in receiver's scope or fully qualified property name
    @type key: str
    @return value, in the Java type represented by the property's {@link IType}, or a string if the
    property is not registerted in the property scope.  The value may be the default if not explicitly
    set, or None if no such property is known in the receiver's or parent chain's properties
    @throws IllegalArgumentException if property value does not conform to type
    @see IPropertyAccess#getValue(str)
    '''
    return object()


  def invokeFunction(self, func, args):
    '''
    Invoke a wrapped function in the script
    @param func function object (typically fetched from {@link ScriptEngine#get(str)})
    @param args zero or more arguments
    @type func: object
    @type args: list
    @return value of invocation
    @throws ScriptException
    '''
    return object()


  def unwrapObject(self, scriptObj):
    '''
    Unwrap an object from script into its Java equivalent.
    @param scriptObj object in script hierarchy
    @type scriptObj: object
    @return same object or equivalent Java object
    '''
    return object()


  def wrapFunction(self, obj, klass, name, argTypes):
    '''
    Wrap a Java function for use in scripting.
    @param obj an object which is the target of a method (None for statics or for unbound call)
    @param klass class with the method to call
    @param name name of the method
    @param argTypes zero or more argument types
    @type obj: object
    @type klass: java_lang_Class
    @type name: str
    @type argTypes: list
    @return wrapped object, suitable for script (e.g. for {@link #invokeFunction(object, object...)})
    @throws ScriptException
    '''
    return object()


  def wrapObject(self, javaObj):
    '''
    Wrap an object for consumption by script.
    @param javaObj
    @type javaObj: object
    @return same object or equivalent script object
    '''
    return object()


  def getLockingObjects(self):
    '''
    Return the objects (if any) that this scripting engine locks on.
    @return list of objects that the engine locks on or None
    '''
    return list()


  def getDescription(self):
    '''
    Human-readable description of the value for UI.

    This description is interpreted as HTML.

    @return description, never None (but may be blank)
    '''
    return str()


  def getId(self):
    '''
    The fully qualified identifer for this entity, including the ids of its parents, up to an implementation-defined root.
    '''
    return str()


  def getLabel(self):
    '''
    The label for the item, displayed in UI.
    @return label, never None
    '''
    return str()


  def getName(self):
    '''
    The unique name for this item within its parent.   See {@link #getId()} for the full unique identifier.
    '''
    return str()


  def toString(self):
    '''
    Return the id and label.
    @return str
    '''
    return str()


  def getLabel(self):
    '''
    Label for the value, if it appears in UI.  This label is plain text.

    This may be a derived value, sourced from the wrapped MDescriptor.  If
    that value is None or blank, a label is automatically
    generated from the {@link #getName()}.
    @return label, never None
    '''
    return str()


  def formatException(self, t):
    '''
    Format an exception thrown from a script (e.g. for printing to user)
    @param t throwable -- most likely {@link ScriptException}
    @type t: java_lang_Exception
    @return string for formatted exception
    @see Exception#printStackTrace()
    '''
    return str()


  def gatherListProperty(self, _str):
    return list()


  def createEngine(self, config):
    '''
    Create a new script engine instance which can access Java code from the given bundle.
    @param config configuration object or None for defaults
    @type config: com_silabs_ss_platform_api_scripting_core_IScriptEngineConfiguration
    @return new engine
    @throws CoreException if any problems arise
    '''
    return javax_script_ScriptEngine()


  def getInstallationPath(self):
    '''
    Get the path where the installation lives on the system.
    @return path
    @throws IOException if path cannot be resolved
    @see CoreProperties#INSTALLATION_PATH
    '''
    return org_eclipse_core_runtime_IPath()


  def addContextBundle(self, context, bundle
  ):
    '''
    Add the given bundle to the classpath of the script context, 
    if the script supports lookup of Java classes.
    @param context
    @param bundle

    @type context: com_silabs_ss_platform_api_scripting_core_ScriptEngineContext
    @type bundle
    : org_osgi_framework_Bundle
    '''
    pass


  def disposeEngine(self, engine
  ):
    '''
    Fully shut down a script engine (e.g. by disposing modules)
    @param engine

    @type engine
    : javax_script_ScriptEngine
    '''
    pass


class com_silabs_ss_platform_api_scripting_core_IScriptEngineConfiguration(object):
  '''
  This intterface represents the configuration for a script engine, as passed to
  {@link IScript#createEngine(IScriptEngineConfiguration)}.
   *
  '''
  def init(self):
    self.scriptMonitors = self.getScriptMonitors()

    self.scriptArguments = self.getScriptArguments()

    self.scriptFilePath = self.getScriptFilePath()

    self.workingDirectory = self.getWorkingDirectory()

    self.userLibraryPaths = self.getUserLibraryPaths()

    self.contextBundle = self.getContextBundle()

  def createConsoleScriptMonitor(self, liveForever, newConsole, consoleName):
    '''
    This creates an {@link IScriptStreamMonitor} that dumps script
    output/stderr to an appropriate console (stdout or an Eclipse console)
    depending on whether the platform is headless or not.
    @param liveForever if True, keep the monitor active beyond the
    ScriptEngine's original 'eval' call.  This would be used when you expect
    callbacks to be preserved for use beyond that call.
    @param newConsole
    @param consoleName
    @type liveForever: bool
    @type newConsole: bool
    @type consoleName: str
    @return new monitor (you should add ot set the monitor)
    '''
    return com_silabs_ss_platform_api_scripting_core_IScriptMonitor()


  def getScriptMonitors(self):
    '''
    Get all the script stream monitors to attach to each invocation
    of a ScriptEngine.
    '''
    return list()


  def getScriptArguments(self):
    '''
    Get the arguments to the script. This does not include the
    script name.
    @return argument array or None if unset
    '''
    return list()


  def getScriptFilePath(self):
    '''
    Get the path of the script, to be shown in stack traces.

    This does not have any relation to running the script -- once
    running, use {@link ScriptEngine#get(ScriptEngine.FILENAME)}.
    @param scriptPath or None if unset
    '''
    return org_eclipse_core_runtime_IPath()


  def getWorkingDirectory(self):
    '''
    Get the working directory in which to invoke the script
    @return path or None for no change
    '''
    return org_eclipse_core_runtime_IPath()


  def getUserLibraryPaths(self):
    '''
    Get the set of paths against which script library dependencies are resolved.
    This is interpreted in a script-specific manner.
    @return non-None array of directory paths
    '''
    return list()


  def getContextBundle(self):
    '''
    Get the bundle against which Java class lookups will occur.

    This is used to set up the ClassLoader when the script engine
    references Java classes.  The tree of dependencies starting at
    this bundle will be visible.
    '''
    return org_osgi_framework_Bundle()


  def addScriptMonitor(self, _com_silabs_ss_platform_api_scripting_core_IScriptMonitor):
    '''
    Add a script stream monitor to attach to each invocation
    of a ScriptEngine.
    '''
    pass


  def addUserLibraryPath(self, dirPath):
    '''
    Add a path against which script library dependencies are resolved.
    This is interpreted in a script-specific manner.
    @param dirPath a path to add

    @type dirPath: org_eclipse_core_runtime_IPath
    '''
    pass


  def setContextBundle(self, bundle):
    '''
    Set the bundle against which Java class lookups will occur

    This is used to set up the ClassLoader when the script engine
    references Java classes.  The tree of dependencies starting at
    this bundle will be visible.
    @param bundle the root bundle, or None

    @type bundle: org_osgi_framework_Bundle
    '''
    pass


  def setScriptArguments(self, args):
    '''
    Set the arguments (argv) of the script.  This does not include the
    script name
    @param args argument array or None if unset

    @type args: list
    '''
    pass


  def setScriptFilePath(self, scriptPath):
    '''
    Set the path of the script, to be shown in stack traces.

    This does not have any relation to running the script -- you still
    need to invoke {@link ScriptEngine#eval(java.io.Reader)}.
    @param scriptPath or None if unset

    @type scriptPath: org_eclipse_core_runtime_IPath
    '''
    pass


  def setScriptMonitors(self, _list):
    '''
    Set all the script stream monitors to attach to each invocation
    of a ScriptEngine.
    '''
    pass


  def setUserLibraryPaths(self, dirPaths
  ):
    '''
    Set the paths against which script library dependencies are resolved.
    These are interpreted in a script-specific manner.
    @param dirPaths

    @type dirPaths
    : list
    '''
    pass


  def setWorkingDirectory(self, workingDir):
    '''
    Get the working directory in which to invoke the script
    @param workingDir path or None for no change

    @type workingDir: org_eclipse_core_runtime_IPath
    '''
    pass


class com_silabs_ss_platform_api_scripting_core_IScriptMonitor(object):
  '''
  This is an interface which may be attached to an {@link IScriptEngineConfiguration} to handle
  events during the lifetime of a script.
  '''
  def isLiveForever(self):
    '''
    If True, the monitor continues to operate after the call to {@link #scriptFinished(object, ScriptException)},
    when it is known that the script is still active (e.g. registered callbacks).
    @return 
    '''
    return bool()


  def scriptFinished(self, result, exception):
    '''
    Report that the script has terminated, possibly with an exception.
    @param result
    @param exception if None, successful completion, else, the error that terminated the script

    @type result: object
    @type exception: javax_script_ScriptException
    '''
    pass


  def scriptStarted(self, script, engine
  ):
    '''
    Assign the script engine, once created.
    @param script
    @param engine

    @type script: com_silabs_ss_platform_api_scripting_core_IScript
    @type engine
    : javax_script_ScriptEngine
    '''
    pass


class com_silabs_ss_platform_api_scripting_core_ScriptEngineContext(object):
  '''
  This defines the context for a loaded script.
   *
  '''
  def init(self):
    self.script = self.getScript()

    self.configuration = self.getConfiguration()

    self.engine = self.getEngine()

  def getScript(self):
    return com_silabs_ss_platform_api_scripting_core_IScript()


  def getConfiguration(self):
    return com_silabs_ss_platform_api_scripting_core_IScriptEngineConfiguration()


  def getEngine(self):
    return javax_script_ScriptEngine()


class com_silabs_ss_platform_api_sdk_core_ISDK(com_silabs_ss_platform_api_content_core_manager_IDescribableVersionedEntity):
  '''
  This describes an SDK, which is defined as an externally available set
  of buildable content (headers, libraries), example code, documentation,
  which is associated with a set of compatible part groups and/or parts and
  toolchains.

  This interface represents a fully-instantiated and installed SDK in the system,
  as opposed to the descriptor, which represents only the metadata.
  @see ISDKDescriptor
  *
  '''
  def init(self):
    self.appnotesFiles = self.getAppnotesFiles()

    self.demosFiles = self.getDemosFiles()

    self.modulesFiles = self.getModulesFiles()

    self.templatesFiles = self.getTemplatesFiles()

  def equals(self, _object):
    '''
    Returns True if the {@code obj} has the same class and the same id.
    @see object#equals(object)
    '''
    return bool()


  def isBuiltin(self):
    '''
    Tell whether the descriptor (and entity) are considered built in to the product.
    This may be used to distinguish bundled descriptors vs. ones discovered on
    the user's system.
    @see CoreProperties#BUILTIN
    '''
    return bool()


  def isHidden(self):
    '''
    Tell whether the object is intended to be hidden from UI.
    @see CoreProperties#HIDDEN
    '''
    return bool()


  def copy(self):
    '''
    Deep-copy the receiver
    @return new copy
    '''
    return com_silabs_ss_platform_api_content_core_IDescriptor()


  def getDescriptor(self):
    return com_silabs_ss_platform_api_content_core_IDescriptor()


  def getPropertyAccess(self):
    '''
    Get the full property access for the descriptor.
    '''
    return com_silabs_ss_platform_api_content_core_IPropertyAccess()


  def getPropertyMapper(self):
    '''
    Get the property mapper for the descriptor.
    '''
    return com_silabs_ss_platform_api_content_core_IPropertyMapper()


  def getManager(self):
    return com_silabs_ss_platform_api_content_core_manager_IManager()


  def getRegistry(self):
    '''
    Get the owning registry.
    @return registry, non-None if descriptor is contained in a registry
    '''
    return com_silabs_ss_platform_api_content_core_registry_IRegistry()


  def hashCode(self):
    '''
    Returns the hash code of the receiver's id.
    @see object#hashCode()
    '''
    return int()


  def getProperty(self, key):
    '''
    Get the value of a property for the receiver, parent chain, or default if not defined in any of them.
    @param key name of a property in receiver's scope or fully qualified property name
    @type key: str
    @return value, in the Java type represented by the property's {@link IType}, or a string if the
    property is not registerted in the property scope.  The value may be the default if not explicitly
    set, or None if no such property is known in the receiver's or parent chain's properties
    @throws IllegalArgumentException if property value does not conform to type
    @see IPropertyAccess#getValue(str)
    '''
    return object()


  def getProperty(self, key, _com_silabs_ss_platform_api_content_core_IType):
    '''
    Get the value of a property for the receiver, parent chain, or default if not defined in any of them.
    @param key name of a property in receiver's scope or fully qualified property name
    @type key: str
    @return value, in the Java type represented by the property's {@link IType}, or a string if the
    property is not registerted in the property scope.  The value may be the default if not explicitly
    set, or None if no such property is known in the receiver's or parent chain's properties
    @throws IllegalArgumentException if property value does not conform to type
    @see IPropertyAccess#getValue(str)
    '''
    return object()


  def getProperty(self, key, _str):
    '''
    Get the value of a property for the receiver, parent chain, or default if not defined in any of them.
    @param key name of a property in receiver's scope or fully qualified property name
    @type key: str
    @return value, in the Java type represented by the property's {@link IType}, or a string if the
    property is not registerted in the property scope.  The value may be the default if not explicitly
    set, or None if no such property is known in the receiver's or parent chain's properties
    @throws IllegalArgumentException if property value does not conform to type
    @see IPropertyAccess#getValue(str)
    '''
    return object()


  def getDescription(self):
    '''
    Human-readable description of the value for UI.

    This description is interpreted as HTML.

    @return description, never None (but may be blank)
    '''
    return str()


  def getId(self):
    '''
    The fully qualified identifer for this entity, including the ids of its parents, up to an implementation-defined root.
    '''
    return str()


  def getLabel(self):
    '''
    The label for the item, displayed in UI.
    @return label, never None
    '''
    return str()


  def getName(self):
    '''
    The unique name for this item within its parent.   See {@link #getId()} for the full unique identifier.
    '''
    return str()


  def toString(self):
    '''
    Return the id and label.
    @return str
    '''
    return str()


  def getLabel(self):
    '''
    Label for the value, if it appears in UI.  This label is plain text.

    This may be a derived value, sourced from the wrapped MDescriptor.  If
    that value is None or blank, a label is automatically
    generated from the {@link #getName()}.
    @return label, never None
    '''
    return str()


  def getId(self):
    '''
    Get the id and version catenated as '&lt;id&gt;:&lt;version&gt;'.
    @see IDescriptor#getId()
    @see IVersionable#getVersion()
    '''
    return str()


  def getUnversionedId(self):
    '''
    Get the id without the version.
    @return id which may not be unique
    '''
    return str()


  def gatherListProperty(self, _str):
    return list()


  def getAppnotesFiles(self):
    '''
    Get the absolute path to the file listing the appnotes for this SDK, if any
    @return path, or None if none exists
    @see SDKProperties#APPNOTES_FILES
    '''
    return list()


  def getDemosFiles(self):
    '''
    Get the absolute path to the file listing the demos for this SDK, if any
    @return path, or None if none exists
    @see SDKProperties#DEMOS_FILES
    '''
    return list()


  def getModulesFiles(self):
    '''
    Get the absolute path to the file listing the modules for this SDK, if any
    @return path, or None if none exists
    @see SDKProperties#MODULES_FILES
    '''
    return list()


  def getTemplatesFiles(self):
    '''
    Get the absolute path to the file listing the templates for this SDK, if any
    @return path, or None if none exists
    @see SDKProperties#deTEMPLATES_FILE
    '''
    return list()


  def getInstallationPath(self):
    '''
    Get the path where the installation lives on the system.
    @return path
    @throws IOException if path cannot be resolved
    @see CoreProperties#INSTALLATION_PATH
    '''
    return org_eclipse_core_runtime_IPath()


class com_silabs_ss_platform_api_sdk_core_ISDKDescriptor(com_silabs_ss_platform_api_content_core_IVersionedDescriptor):
  '''
  This describes an SDK, which is defined as an externally available set
  of buildable content (headers, libraries), example code, documentation,
  which is associated with a set of compatible part groups and/or parts and
  toolchains.
   *
  '''
  def init(self):
    self.registry = self.getRegistry()

  def equals(self, _object):
    '''
    Returns True if the {@code obj} has the same class and the same id.
    @see object#equals(object)
    '''
    return bool()


  def isBuiltin(self):
    '''
    Tell whether the descriptor (and entity) are considered built in to the product.
    This may be used to distinguish bundled descriptors vs. ones discovered on
    the user's system.
    @see CoreProperties#BUILTIN
    '''
    return bool()


  def isHidden(self):
    '''
    Tell whether the object is intended to be hidden from UI.
    @see CoreProperties#HIDDEN
    '''
    return bool()


  def copy(self):
    '''
    Deep-copy the receiver
    @return new copy
    '''
    return com_silabs_ss_platform_api_content_core_IDescriptor()


  def getPropertyAccess(self):
    '''
    Get the full property access for the descriptor.
    '''
    return com_silabs_ss_platform_api_content_core_IPropertyAccess()


  def getPropertyMapper(self):
    '''
    Get the property mapper for the descriptor.
    '''
    return com_silabs_ss_platform_api_content_core_IPropertyMapper()


  def getRegistry(self):
    '''
    Get the owning registry.
    @return registry, non-None if descriptor is contained in a registry
    '''
    return com_silabs_ss_platform_api_content_core_registry_IRegistry()


  def getRegistry(self):
    return com_silabs_ss_platform_api_content_core_registry_IRegistry()


  def hashCode(self):
    '''
    Returns the hash code of the receiver's id.
    @see object#hashCode()
    '''
    return int()


  def getProperty(self, key):
    '''
    Get the value of a property for the receiver, parent chain, or default if not defined in any of them.
    @param key name of a property in receiver's scope or fully qualified property name
    @type key: str
    @return value, in the Java type represented by the property's {@link IType}, or a string if the
    property is not registerted in the property scope.  The value may be the default if not explicitly
    set, or None if no such property is known in the receiver's or parent chain's properties
    @throws IllegalArgumentException if property value does not conform to type
    @see IPropertyAccess#getValue(str)
    '''
    return object()


  def getProperty(self, key, _com_silabs_ss_platform_api_content_core_IType):
    '''
    Get the value of a property for the receiver, parent chain, or default if not defined in any of them.
    @param key name of a property in receiver's scope or fully qualified property name
    @type key: str
    @return value, in the Java type represented by the property's {@link IType}, or a string if the
    property is not registerted in the property scope.  The value may be the default if not explicitly
    set, or None if no such property is known in the receiver's or parent chain's properties
    @throws IllegalArgumentException if property value does not conform to type
    @see IPropertyAccess#getValue(str)
    '''
    return object()


  def getProperty(self, key, _str):
    '''
    Get the value of a property for the receiver, parent chain, or default if not defined in any of them.
    @param key name of a property in receiver's scope or fully qualified property name
    @type key: str
    @return value, in the Java type represented by the property's {@link IType}, or a string if the
    property is not registerted in the property scope.  The value may be the default if not explicitly
    set, or None if no such property is known in the receiver's or parent chain's properties
    @throws IllegalArgumentException if property value does not conform to type
    @see IPropertyAccess#getValue(str)
    '''
    return object()


  def getDescription(self):
    '''
    Human-readable description of the value for UI.

    This description is interpreted as HTML.

    @return description, never None (but may be blank)
    '''
    return str()


  def getId(self):
    '''
    The fully qualified identifer for this entity, including the ids of its parents, up to an implementation-defined root.
    '''
    return str()


  def getLabel(self):
    '''
    The label for the item, displayed in UI.
    @return label, never None
    '''
    return str()


  def getName(self):
    '''
    The unique name for this item within its parent.   See {@link #getId()} for the full unique identifier.
    '''
    return str()


  def toString(self):
    '''
    Return the id and label.
    @return str
    '''
    return str()


  def getLabel(self):
    '''
    Label for the value, if it appears in UI.  This label is plain text.

    This may be a derived value, sourced from the wrapped MDescriptor.  If
    that value is None or blank, a label is automatically
    generated from the {@link #getName()}.
    @return label, never None
    '''
    return str()


  def getId(self):
    '''
    Get the id and version catenated as '&lt;id&gt;:&lt;version&gt;'.
    @see IDescriptor#getId()
    @see IVersionable#getVersion()
    '''
    return str()


  def getUnversionedId(self):
    '''
    Get the id without the version.  This may be the same as {@link #getName()},
    which never has a version attached.
    @return id, which may not be unique
    '''
    return str()


  def gatherListProperty(self, _str):
    return list()


  def getInstallationPath(self):
    '''
    Get the path where the installation lives on the system.
    @return path
    @throws IOException if path cannot be resolved
    @see CoreProperties#INSTALLATION_PATH
    '''
    return org_eclipse_core_runtime_IPath()


class com_silabs_ss_support_mcu_api_part_core_IExecutionCompleteCallback(object):
  '''
  @since 4.1
  *
  '''
  def executionComplete(self, status
  ):
    '''
    Called when execution of an asynchronous operation completes
    @param status

    @type status
    : org_eclipse_core_runtime_IStatus
    '''
    pass


class com_silabs_ss_support_mcu_api_part_core_IIntelHexFile(object):
  '''
  The interface to an intel hex file in memory
  @since 4.1
  '''
  def init(self):
    self.numSections = self.getNumSections()

    self.contents = self.getContents()

  def getBytes(self, sectionIndex):
    '''
    @param sectionIndex
    @type sectionIndex: int
    @return the byte array of the section at sectionIndex
    '''
    return array.array()


  def getAddress(self, sectionIndex):
    '''
    @param sectionIndex
    @type sectionIndex: int
    @return the 16 bit address of the section at sectionIndex
    '''
    return int()


  def getNumSections(self):
    '''
    @return the number of contiguous sections in this image
    '''
    return int()


  def getContents(self):
    '''
    @return the contents of the hex file
    '''
    return str()


  def addSection(self, address, bytes):
    '''
    Add a section to the hex image file
    @param address
    @param bytes
    @throws IllegalArgumentException if section intersects an existing section

    @type address: int
    @type bytes: array.array
    '''
    pass


class org_eclipse_core_resources_FileInfoMatcherDescription(object):
  def init(self):
    self.arguments = self.getArguments()

    self.id = self.getId()

  def equals(self, _object):
    return bool()


  def hashCode(self):
    return int()


  def getArguments(self):
    return object()


  def getId(self):
    return str()


class org_eclipse_core_resources_IBuildConfiguration(org_eclipse_core_runtime_IAdaptable):
  def init(self):
    self.name = self.getName()

    self.project = self.getProject()

  DEFAULT_CONFIG_NAME = str
  '''
  '''

  def getName(self):
    return str()


  def getProject(self):
    return org_eclipse_core_resources_IProject()


class org_eclipse_core_resources_ICommand(object):
  def init(self):
    self.builderName = self.getBuilderName()

    self.arguments = self.getArguments()

  def isBuilding(self, _int):
    return bool()


  def isConfigurable(self):
    return bool()


  def getBuilderName(self):
    return str()


  def getArguments(self):
    return java_util_Map()


  def setArguments(self, _java_util_Map):
    pass


  def setBuilderName(self, _str):
    pass


  def setBuilding(self, _int, _bool):
    pass


class org_eclipse_core_resources_IContainer(org_eclipse_core_resources_IResource):
  def init(self):
    self.defaultCharset = self.getDefaultCharset()

    self.filters = self.getFilters()

  DO_NOT_CHECK_EXISTENCE = int
  '''
  '''

  EXCLUDE_DERIVED = int
  '''
  '''

  INCLUDE_HIDDEN = int
  '''
  '''

  INCLUDE_PHANTOMS = int
  '''
  '''

  INCLUDE_TEAM_PRIVATE_MEMBERS = int
  '''
  '''

  def exists(self, _org_eclipse_core_runtime_IPath):
    return bool()


  def getDefaultCharset(self):
    return str()


  def getDefaultCharset(self, _bool):
    return str()


  def getFile(self, _org_eclipse_core_runtime_IPath):
    return org_eclipse_core_resources_IFile()


  def findDeletedMembersWithHistory(self, _int, _org_eclipse_core_runtime_IProgressMonitor):
    return list()


  def getFolder(self, _org_eclipse_core_runtime_IPath):
    return org_eclipse_core_resources_IFolder()


  def findMember(self, _str):
    return org_eclipse_core_resources_IResource()


  def findMember(self, _str, _bool):
    return org_eclipse_core_resources_IResource()


  def findMember(self, _org_eclipse_core_runtime_IPath):
    return org_eclipse_core_resources_IResource()


  def findMember(self, _org_eclipse_core_runtime_IPath, _bool):
    return org_eclipse_core_resources_IResource()


  def createFilter(self, _int, _org_eclipse_core_resources_FileInfoMatcherDescription, _int, _org_eclipse_core_runtime_IProgressMonitor):
    return org_eclipse_core_resources_IResourceFilterDescription()


  def getFilters(self):
    return list()


  def members(self):
    return list()


  def members(self, _bool):
    return list()


  def members(self, _int):
    return list()


  def setDefaultCharset(self, _str):
    pass


  def setDefaultCharset(self, _str, _org_eclipse_core_runtime_IProgressMonitor):
    pass


class org_eclipse_core_resources_IEncodedStorage(org_eclipse_core_resources_IStorage):
  def init(self):
    self.charset = self.getCharset()

  def getCharset(self):
    return str()


class org_eclipse_core_resources_IFile(org_eclipse_core_resources_IResource):
  def init(self):
    self.encoding = self.getEncoding()

    self.contents = self.getContents()

    self.charset = self.getCharset()

    self.name = self.getName()

    self.fullPath = self.getFullPath()

    self.contentDescription = self.getContentDescription()

  ENCODING_ISO_8859_1 = int
  '''
  '''

  ENCODING_UNKNOWN = int
  '''
  '''

  ENCODING_US_ASCII = int
  '''
  '''

  ENCODING_UTF_16 = int
  '''
  '''

  ENCODING_UTF_16BE = int
  '''
  '''

  ENCODING_UTF_16LE = int
  '''
  '''

  ENCODING_UTF_8 = int
  '''
  '''

  def isReadOnly(self):
    return bool()


  def getEncoding(self):
    return int()


  def getContents(self):
    return java_io_InputStream()


  def getContents(self, _bool):
    return java_io_InputStream()


  def getCharset(self):
    return str()


  def getCharset(self, _bool):
    return str()


  def getCharsetFor(self, _java_io_Reader):
    return str()


  def getName(self):
    return str()


  def getHistory(self, _org_eclipse_core_runtime_IProgressMonitor):
    return list()


  def getFullPath(self):
    return org_eclipse_core_runtime_IPath()


  def getContentDescription(self):
    return org_eclipse_core_runtime_content_IContentDescription()


  def appendContents(self, _java_io_InputStream, _bool, _bool, _org_eclipse_core_runtime_IProgressMonitor):
    pass


  def appendContents(self, _java_io_InputStream, _int, _org_eclipse_core_runtime_IProgressMonitor):
    pass


  def create(self, _java_io_InputStream, _bool, _org_eclipse_core_runtime_IProgressMonitor):
    pass


  def create(self, _java_io_InputStream, _int, _org_eclipse_core_runtime_IProgressMonitor):
    pass


  def createLink(self, _java_net_URI, _int, _org_eclipse_core_runtime_IProgressMonitor):
    pass


  def createLink(self, _org_eclipse_core_runtime_IPath, _int, _org_eclipse_core_runtime_IProgressMonitor):
    pass


  def delete(self, _bool, _bool, _org_eclipse_core_runtime_IProgressMonitor):
    pass


  def move(self, _org_eclipse_core_runtime_IPath, _bool, _bool, _org_eclipse_core_runtime_IProgressMonitor):
    pass


  def setCharset(self, _str):
    pass


  def setCharset(self, _str, _org_eclipse_core_runtime_IProgressMonitor):
    pass


  def setContents(self, _java_io_InputStream, _bool, _bool, _org_eclipse_core_runtime_IProgressMonitor):
    pass


  def setContents(self, _java_io_InputStream, _int, _org_eclipse_core_runtime_IProgressMonitor):
    pass


  def setContents(self, _org_eclipse_core_resources_IFileState, _bool, _bool, _org_eclipse_core_runtime_IProgressMonitor):
    pass


  def setContents(self, _org_eclipse_core_resources_IFileState, _int, _org_eclipse_core_runtime_IProgressMonitor):
    pass


class org_eclipse_core_resources_IFileState(org_eclipse_core_resources_IEncodedStorage):
  def init(self):
    self.contents = self.getContents()

    self.name = self.getName()

    self.modificationTime = self.getModificationTime()

    self.fullPath = self.getFullPath()

  def exists(self):
    return bool()


  def isReadOnly(self):
    return bool()


  def getContents(self):
    return java_io_InputStream()


  def getName(self):
    return str()


  def getModificationTime(self):
    return int()


  def getFullPath(self):
    return org_eclipse_core_runtime_IPath()


class org_eclipse_core_resources_IFilterMatcherDescriptor(object):
  def init(self):
    self.argumentType = self.getArgumentType()

    self.description = self.getDescription()

    self.id = self.getId()

    self.name = self.getName()

  ARGUMENT_TYPE_FILTER_MATCHER = str
  '''
  '''

  ARGUMENT_TYPE_FILTER_MATCHERS = str
  '''
  '''

  ARGUMENT_TYPE_NONE = str
  '''
  '''

  ARGUMENT_TYPE_STRING = str
  '''
  '''

  def isFirstOrdering(self):
    return bool()


  def getArgumentType(self):
    return str()


  def getDescription(self):
    return str()


  def getId(self):
    return str()


  def getName(self):
    return str()


class org_eclipse_core_resources_IFolder(org_eclipse_core_resources_IContainer):
  def getFile(self, _str):
    return org_eclipse_core_resources_IFile()


  def getFolder(self, _str):
    return org_eclipse_core_resources_IFolder()


  def create(self, _bool, _bool, _org_eclipse_core_runtime_IProgressMonitor):
    pass


  def create(self, _int, _bool, _org_eclipse_core_runtime_IProgressMonitor):
    pass


  def createLink(self, _java_net_URI, _int, _org_eclipse_core_runtime_IProgressMonitor):
    pass


  def createLink(self, _org_eclipse_core_runtime_IPath, _int, _org_eclipse_core_runtime_IProgressMonitor):
    pass


  def delete(self, _bool, _bool, _org_eclipse_core_runtime_IProgressMonitor):
    pass


  def move(self, _org_eclipse_core_runtime_IPath, _bool, _bool, _org_eclipse_core_runtime_IProgressMonitor):
    pass


class org_eclipse_core_resources_IMarker(org_eclipse_core_runtime_IAdaptable):
  def init(self):
    self.type = self.getType()

    self.attributes = self.getAttributes()

    self.creationTime = self.getCreationTime()

    self.id = self.getId()

    self.resource = self.getResource()

  BOOKMARK = str
  '''
  '''

  CHAR_END = str
  '''
  '''

  CHAR_START = str
  '''
  '''

  DONE = str
  '''
  '''

  LINE_NUMBER = str
  '''
  '''

  LOCATION = str
  '''
  '''

  MARKER = str
  '''
  '''

  MESSAGE = str
  '''
  '''

  PRIORITY = str
  '''
  '''

  PRIORITY_HIGH = int
  '''
  '''

  PRIORITY_LOW = int
  '''
  '''

  PRIORITY_NORMAL = int
  '''
  '''

  PROBLEM = str
  '''
  '''

  SEVERITY = str
  '''
  '''

  SEVERITY_ERROR = int
  '''
  '''

  SEVERITY_INFO = int
  '''
  '''

  SEVERITY_WARNING = int
  '''
  '''

  SOURCE_ID = str
  '''
  '''

  TASK = str
  '''
  '''

  TEXT = str
  '''
  '''

  TRANSIENT = str
  '''
  '''

  USER_EDITABLE = str
  '''
  '''

  def equals(self, _object):
    return bool()


  def exists(self):
    return bool()


  def getAttribute(self, _str, _bool):
    return bool()


  def isSubtypeOf(self, _str):
    return bool()


  def getAttribute(self, _str, _int):
    return int()


  def getAttribute(self, _str):
    return object()


  def getAttributes(self, _list):
    return list()


  def getAttribute(self, _str, _str):
    return str()


  def getType(self):
    return str()


  def getAttributes(self):
    return java_util_Map()


  def getCreationTime(self):
    return int()


  def getId(self):
    return int()


  def getResource(self):
    return org_eclipse_core_resources_IResource()


  def delete(self):
    pass


  def setAttribute(self, _str, _bool):
    pass


  def setAttribute(self, _str, _int):
    pass


  def setAttribute(self, _str, _object):
    pass


  def setAttributes(self, _list, _list):
    pass


  def setAttributes(self, _java_util_Map):
    pass


class org_eclipse_core_resources_IPathVariableChangeEvent(object):
  def init(self):
    self.type = self.getType()

    self.source = self.getSource()

    self.variableName = self.getVariableName()

    self.value = self.getValue()

  VARIABLE_CHANGED = int
  '''
  '''

  VARIABLE_CREATED = int
  '''
  '''

  VARIABLE_DELETED = int
  '''
  '''

  def getType(self):
    return int()


  def getSource(self):
    return object()


  def getVariableName(self):
    return str()


  def getValue(self):
    return org_eclipse_core_runtime_IPath()


class org_eclipse_core_resources_IPathVariableChangeListener(java_util_EventListener):
  def pathVariableChanged(self, _org_eclipse_core_resources_IPathVariableChangeEvent):
    pass


class org_eclipse_core_resources_IPathVariableManager(object):
  def init(self):
    self.pathVariableNames = self.getPathVariableNames()

  def isDefined(self, _str):
    return bool()


  def isUserDefined(self, _str):
    return bool()


  def convertFromUserEditableFormat(self, _str, _bool):
    return str()


  def convertToUserEditableFormat(self, _str, _bool):
    return str()


  def getPathVariableNames(self):
    return list()


  def convertToRelative(self, _java_net_URI, _bool, _str):
    return java_net_URI()


  def getURIValue(self, _str):
    return java_net_URI()


  def getVariableRelativePathLocation(self, _java_net_URI):
    return java_net_URI()


  def resolveURI(self, _java_net_URI):
    return java_net_URI()


  def getValue(self, _str):
    return org_eclipse_core_runtime_IPath()


  def resolvePath(self, _org_eclipse_core_runtime_IPath):
    return org_eclipse_core_runtime_IPath()


  def validateName(self, _str):
    return org_eclipse_core_runtime_IStatus()


  def validateValue(self, _java_net_URI):
    return org_eclipse_core_runtime_IStatus()


  def validateValue(self, _org_eclipse_core_runtime_IPath):
    return org_eclipse_core_runtime_IStatus()


  def addChangeListener(self, _org_eclipse_core_resources_IPathVariableChangeListener):
    pass


  def removeChangeListener(self, _org_eclipse_core_resources_IPathVariableChangeListener):
    pass


  def setURIValue(self, _str, _java_net_URI):
    pass


  def setValue(self, _str, _org_eclipse_core_runtime_IPath):
    pass


class org_eclipse_core_resources_IProject(org_eclipse_core_resources_IContainer):
  def init(self):
    self.activeBuildConfig = self.getActiveBuildConfig()

    self.buildConfigs = self.getBuildConfigs()

    self.description = self.getDescription()

    self.referencedProjects = self.getReferencedProjects()

    self.referencingProjects = self.getReferencingProjects()

    self.contentTypeMatcher = self.getContentTypeMatcher()

  SNAPSHOT_TREE = int
  '''
  '''

  def hasBuildConfig(self, _str):
    return bool()


  def hasNature(self, _str):
    return bool()


  def isNatureEnabled(self, _str):
    return bool()


  def isOpen(self):
    return bool()


  def getActiveBuildConfig(self):
    return org_eclipse_core_resources_IBuildConfiguration()


  def getBuildConfig(self, _str):
    return org_eclipse_core_resources_IBuildConfiguration()


  def getBuildConfigs(self):
    return list()


  def getReferencedBuildConfigs(self, _str, _bool):
    return list()


  def getFile(self, _str):
    return org_eclipse_core_resources_IFile()


  def getFolder(self, _str):
    return org_eclipse_core_resources_IFolder()


  def getDescription(self):
    return org_eclipse_core_resources_IProjectDescription()


  def getNature(self, _str):
    return org_eclipse_core_resources_IProjectNature()


  def getReferencedProjects(self):
    return list()


  def getReferencingProjects(self):
    return list()


  def getPluginWorkingLocation(self, _org_eclipse_core_runtime_IPluginDescriptor):
    return org_eclipse_core_runtime_IPath()


  def getWorkingLocation(self, _str):
    return org_eclipse_core_runtime_IPath()


  def getContentTypeMatcher(self):
    return org_eclipse_core_runtime_content_IContentTypeMatcher()


  def build(self, _int, _str, _java_util_Map, _org_eclipse_core_runtime_IProgressMonitor):
    pass


  def build(self, _int, _org_eclipse_core_runtime_IProgressMonitor):
    pass


  def build(self, _org_eclipse_core_resources_IBuildConfiguration, _int, _org_eclipse_core_runtime_IProgressMonitor):
    pass


  def close(self, _org_eclipse_core_runtime_IProgressMonitor):
    pass


  def create(self, _org_eclipse_core_resources_IProjectDescription, _int, _org_eclipse_core_runtime_IProgressMonitor):
    pass


  def create(self, _org_eclipse_core_resources_IProjectDescription, _org_eclipse_core_runtime_IProgressMonitor):
    pass


  def create(self, _org_eclipse_core_runtime_IProgressMonitor):
    pass


  def delete(self, _bool, _bool, _org_eclipse_core_runtime_IProgressMonitor):
    pass


  def loadSnapshot(self, _int, _java_net_URI, _org_eclipse_core_runtime_IProgressMonitor):
    pass


  def move(self, _org_eclipse_core_resources_IProjectDescription, _bool, _org_eclipse_core_runtime_IProgressMonitor):
    pass


  def open(self, _int, _org_eclipse_core_runtime_IProgressMonitor):
    pass


  def open(self, _org_eclipse_core_runtime_IProgressMonitor):
    pass


  def saveSnapshot(self, _int, _java_net_URI, _org_eclipse_core_runtime_IProgressMonitor):
    pass


  def setDescription(self, _org_eclipse_core_resources_IProjectDescription, _int, _org_eclipse_core_runtime_IProgressMonitor):
    pass


  def setDescription(self, _org_eclipse_core_resources_IProjectDescription, _org_eclipse_core_runtime_IProgressMonitor):
    pass


class org_eclipse_core_resources_IProjectDescription(object):
  def init(self):
    self.comment = self.getComment()

    self.name = self.getName()

    self.natureIds = self.getNatureIds()

    self.locationURI = self.getLocationURI()

    self.buildSpec = self.getBuildSpec()

    self.dynamicReferences = self.getDynamicReferences()

    self.referencedProjects = self.getReferencedProjects()

    self.location = self.getLocation()

  DESCRIPTION_FILE_NAME = str
  '''
  '''

  def hasNature(self, _str):
    return bool()


  def getComment(self):
    return str()


  def getName(self):
    return str()


  def getNatureIds(self):
    return list()


  def getLocationURI(self):
    return java_net_URI()


  def getBuildConfigReferences(self, _str):
    return list()


  def newCommand(self):
    return org_eclipse_core_resources_ICommand()


  def getBuildSpec(self):
    return list()


  def getDynamicReferences(self):
    return list()


  def getReferencedProjects(self):
    return list()


  def getLocation(self):
    return org_eclipse_core_runtime_IPath()


  def setActiveBuildConfig(self, _str):
    pass


  def setBuildConfigReferences(self, _str, _list):
    pass


  def setBuildConfigs(self, _list):
    pass


  def setBuildSpec(self, _list):
    pass


  def setComment(self, _str):
    pass


  def setDynamicReferences(self, _list):
    pass


  def setLocation(self, _org_eclipse_core_runtime_IPath):
    pass


  def setLocationURI(self, _java_net_URI):
    pass


  def setName(self, _str):
    pass


  def setNatureIds(self, _list):
    pass


  def setReferencedProjects(self, _list):
    pass


class org_eclipse_core_resources_IProjectNature(object):
  def init(self):
    self.project = self.getProject()

  def getProject(self):
    return org_eclipse_core_resources_IProject()


  def configure(self):
    pass


  def deconfigure(self):
    pass


  def setProject(self, _org_eclipse_core_resources_IProject):
    pass


class org_eclipse_core_resources_IProjectNatureDescriptor(object):
  def init(self):
    self.label = self.getLabel()

    self.natureId = self.getNatureId()

    self.natureSetIds = self.getNatureSetIds()

    self.requiredNatureIds = self.getRequiredNatureIds()

  def isLinkingAllowed(self):
    return bool()


  def getLabel(self):
    return str()


  def getNatureId(self):
    return str()


  def getNatureSetIds(self):
    return list()


  def getRequiredNatureIds(self):
    return list()


class org_eclipse_core_resources_IResource(org_eclipse_core_runtime_IAdaptable):
  def init(self):
    self.type = self.getType()

    self.fileExtension = self.getFileExtension()

    self.name = self.getName()

    self.locationURI = self.getLocationURI()

    self.rawLocationURI = self.getRawLocationURI()

    self.persistentProperties = self.getPersistentProperties()

    self.sessionProperties = self.getSessionProperties()

    self.localTimeStamp = self.getLocalTimeStamp()

    self.modificationStamp = self.getModificationStamp()

    self.parent = self.getParent()

    self.pathVariableManager = self.getPathVariableManager()

    self.project = self.getProject()

    self.workspace = self.getWorkspace()

    self.resourceAttributes = self.getResourceAttributes()

    self.fullPath = self.getFullPath()

    self.location = self.getLocation()

    self.projectRelativePath = self.getProjectRelativePath()

    self.rawLocation = self.getRawLocation()

  ALLOW_MISSING_LOCAL = int
  '''
  '''

  ALWAYS_DELETE_PROJECT_CONTENT = int
  '''
  '''

  AVOID_NATURE_CONFIG = int
  '''
  '''

  BACKGROUND_REFRESH = int
  '''
  '''

  CHECK_ANCESTORS = int
  '''
  '''

  DEPTH_INFINITE = int
  '''
  '''

  DEPTH_ONE = int
  '''
  '''

  DEPTH_ZERO = int
  '''
  '''

  DERIVED = int
  '''
  '''

  FILE = int
  '''
  '''

  FOLDER = int
  '''
  '''

  FORCE = int
  '''
  '''

  HIDDEN = int
  '''
  '''

  KEEP_HISTORY = int
  '''
  '''

  NEVER_DELETE_PROJECT_CONTENT = int
  '''
  '''

  NONE = int
  '''
  '''

  NULL_STAMP = int
  '''
  '''

  PROJECT = int
  '''
  '''

  REPLACE = int
  '''
  '''

  ROOT = int
  '''
  '''

  SHALLOW = int
  '''
  '''

  TEAM_PRIVATE = int
  '''
  '''

  VIRTUAL = int
  '''
  '''

  def equals(self, _object):
    return bool()


  def exists(self):
    return bool()


  def isAccessible(self):
    return bool()


  def isDerived(self):
    return bool()


  def isDerived(self, _int):
    return bool()


  def isHidden(self):
    return bool()


  def isHidden(self, _int):
    return bool()


  def isLinked(self):
    return bool()


  def isLinked(self, _int):
    return bool()


  def isLocal(self, _int):
    return bool()


  def isPhantom(self):
    return bool()


  def isReadOnly(self):
    return bool()


  def isSynchronized(self, _int):
    return bool()


  def isTeamPrivateMember(self):
    return bool()


  def isTeamPrivateMember(self, _int):
    return bool()


  def isVirtual(self):
    return bool()


  def findMaxProblemSeverity(self, _str, _bool, _int):
    return int()


  def getType(self):
    return int()


  def getSessionProperty(self, _org_eclipse_core_runtime_QualifiedName):
    return object()


  def getFileExtension(self):
    return str()


  def getName(self):
    return str()


  def getPersistentProperty(self, _org_eclipse_core_runtime_QualifiedName):
    return str()


  def getLocationURI(self):
    return java_net_URI()


  def getRawLocationURI(self):
    return java_net_URI()


  def getPersistentProperties(self):
    return java_util_Map()


  def getSessionProperties(self):
    return java_util_Map()


  def getLocalTimeStamp(self):
    return int()


  def getModificationStamp(self):
    return int()


  def setLocalTimeStamp(self, _int):
    return int()


  def getParent(self):
    return org_eclipse_core_resources_IContainer()


  def createMarker(self, _str):
    return org_eclipse_core_resources_IMarker()


  def findMarker(self, _int):
    return org_eclipse_core_resources_IMarker()


  def getMarker(self, _int):
    return org_eclipse_core_resources_IMarker()


  def findMarkers(self, _str, _bool, _int):
    return list()


  def getPathVariableManager(self):
    return org_eclipse_core_resources_IPathVariableManager()


  def getProject(self):
    return org_eclipse_core_resources_IProject()


  def createProxy(self):
    return org_eclipse_core_resources_IResourceProxy()


  def getWorkspace(self):
    return org_eclipse_core_resources_IWorkspace()


  def getResourceAttributes(self):
    return org_eclipse_core_resources_ResourceAttributes()


  def getFullPath(self):
    return org_eclipse_core_runtime_IPath()


  def getLocation(self):
    return org_eclipse_core_runtime_IPath()


  def getProjectRelativePath(self):
    return org_eclipse_core_runtime_IPath()


  def getRawLocation(self):
    return org_eclipse_core_runtime_IPath()


  def accept(self, _org_eclipse_core_resources_IResourceProxyVisitor, _int):
    pass


  def accept(self, _org_eclipse_core_resources_IResourceProxyVisitor, _int, _int):
    pass


  def accept(self, _org_eclipse_core_resources_IResourceVisitor):
    pass


  def accept(self, _org_eclipse_core_resources_IResourceVisitor, _int, _bool):
    pass


  def accept(self, _org_eclipse_core_resources_IResourceVisitor, _int, _int):
    pass


  def clearHistory(self, _org_eclipse_core_runtime_IProgressMonitor):
    pass


  def copy(self, _org_eclipse_core_resources_IProjectDescription, _bool, _org_eclipse_core_runtime_IProgressMonitor):
    pass


  def copy(self, _org_eclipse_core_resources_IProjectDescription, _int, _org_eclipse_core_runtime_IProgressMonitor):
    pass


  def copy(self, _org_eclipse_core_runtime_IPath, _bool, _org_eclipse_core_runtime_IProgressMonitor):
    pass


  def copy(self, _org_eclipse_core_runtime_IPath, _int, _org_eclipse_core_runtime_IProgressMonitor):
    pass


  def delete(self, _bool, _org_eclipse_core_runtime_IProgressMonitor):
    pass


  def delete(self, _int, _org_eclipse_core_runtime_IProgressMonitor):
    pass


  def deleteMarkers(self, _str, _bool, _int):
    pass


  def move(self, _org_eclipse_core_resources_IProjectDescription, _bool, _bool, _org_eclipse_core_runtime_IProgressMonitor):
    pass


  def move(self, _org_eclipse_core_resources_IProjectDescription, _int, _org_eclipse_core_runtime_IProgressMonitor):
    pass


  def move(self, _org_eclipse_core_runtime_IPath, _bool, _org_eclipse_core_runtime_IProgressMonitor):
    pass


  def move(self, _org_eclipse_core_runtime_IPath, _int, _org_eclipse_core_runtime_IProgressMonitor):
    pass


  def refreshLocal(self, _int, _org_eclipse_core_runtime_IProgressMonitor):
    pass


  def revertModificationStamp(self, _int):
    pass


  def setDerived(self, _bool):
    pass


  def setDerived(self, _bool, _org_eclipse_core_runtime_IProgressMonitor):
    pass


  def setHidden(self, _bool):
    pass


  def setLocal(self, _bool, _int, _org_eclipse_core_runtime_IProgressMonitor):
    pass


  def setPersistentProperty(self, _org_eclipse_core_runtime_QualifiedName, _str):
    pass


  def setReadOnly(self, _bool):
    pass


  def setResourceAttributes(self, _org_eclipse_core_resources_ResourceAttributes):
    pass


  def setSessionProperty(self, _org_eclipse_core_runtime_QualifiedName, _object):
    pass


  def setTeamPrivateMember(self, _bool):
    pass


  def touch(self, _org_eclipse_core_runtime_IProgressMonitor):
    pass


class org_eclipse_core_resources_IResourceChangeEvent(object):
  def init(self):
    self.buildKind = self.getBuildKind()

    self.type = self.getType()

    self.source = self.getSource()

    self.resource = self.getResource()

    self.delta = self.getDelta()

  POST_AUTO_BUILD = int
  '''
  '''

  POST_BUILD = int
  '''
  '''

  POST_CHANGE = int
  '''
  '''

  PRE_AUTO_BUILD = int
  '''
  '''

  PRE_BUILD = int
  '''
  '''

  PRE_CLOSE = int
  '''
  '''

  PRE_DELETE = int
  '''
  '''

  PRE_REFRESH = int
  '''
  '''

  def getBuildKind(self):
    return int()


  def getType(self):
    return int()


  def getSource(self):
    return object()


  def findMarkerDeltas(self, _str, _bool):
    return list()


  def getResource(self):
    return org_eclipse_core_resources_IResource()


  def getDelta(self):
    return org_eclipse_core_resources_IResourceDelta()


class org_eclipse_core_resources_IResourceChangeListener(java_util_EventListener):
  def resourceChanged(self, _org_eclipse_core_resources_IResourceChangeEvent):
    pass


class org_eclipse_core_resources_IResourceDelta(org_eclipse_core_runtime_IAdaptable):
  def init(self):
    self.flags = self.getFlags()

    self.kind = self.getKind()

    self.markerDeltas = self.getMarkerDeltas()

    self.resource = self.getResource()

    self.affectedChildren = self.getAffectedChildren()

    self.fullPath = self.getFullPath()

    self.movedFromPath = self.getMovedFromPath()

    self.movedToPath = self.getMovedToPath()

    self.projectRelativePath = self.getProjectRelativePath()

  ADDED = int
  '''
  '''

  ADDED_PHANTOM = int
  '''
  '''

  ALL_WITH_PHANTOMS = int
  '''
  '''

  CHANGED = int
  '''
  '''

  CONTENT = int
  '''
  '''

  COPIED_FROM = int
  '''
  '''

  DERIVED_CHANGED = int
  '''
  '''

  DESCRIPTION = int
  '''
  '''

  ENCODING = int
  '''
  '''

  LOCAL_CHANGED = int
  '''
  '''

  MARKERS = int
  '''
  '''

  MOVED_FROM = int
  '''
  '''

  MOVED_TO = int
  '''
  '''

  NO_CHANGE = int
  '''
  '''

  OPEN = int
  '''
  '''

  REMOVED = int
  '''
  '''

  REMOVED_PHANTOM = int
  '''
  '''

  REPLACED = int
  '''
  '''

  SYNC = int
  '''
  '''

  TYPE = int
  '''
  '''

  def getFlags(self):
    return int()


  def getKind(self):
    return int()


  def getMarkerDeltas(self):
    return list()


  def getResource(self):
    return org_eclipse_core_resources_IResource()


  def findMember(self, _org_eclipse_core_runtime_IPath):
    return org_eclipse_core_resources_IResourceDelta()


  def getAffectedChildren(self):
    return list()


  def getAffectedChildren(self, _int):
    return list()


  def getAffectedChildren(self, _int, _int):
    return list()


  def getFullPath(self):
    return org_eclipse_core_runtime_IPath()


  def getMovedFromPath(self):
    return org_eclipse_core_runtime_IPath()


  def getMovedToPath(self):
    return org_eclipse_core_runtime_IPath()


  def getProjectRelativePath(self):
    return org_eclipse_core_runtime_IPath()


  def accept(self, _org_eclipse_core_resources_IResourceDeltaVisitor):
    pass


  def accept(self, _org_eclipse_core_resources_IResourceDeltaVisitor, _bool):
    pass


  def accept(self, _org_eclipse_core_resources_IResourceDeltaVisitor, _int):
    pass


class org_eclipse_core_resources_IResourceDeltaVisitor(object):
  def visit(self, _org_eclipse_core_resources_IResourceDelta):
    return bool()


class org_eclipse_core_resources_IResourceFilterDescription(object):
  def init(self):
    self.type = self.getType()

    self.fileInfoMatcherDescription = self.getFileInfoMatcherDescription()

    self.resource = self.getResource()

  EXCLUDE_ALL = int
  '''
  '''

  FILES = int
  '''
  '''

  FOLDERS = int
  '''
  '''

  INCLUDE_ONLY = int
  '''
  '''

  INHERITABLE = int
  '''
  '''

  def getType(self):
    return int()


  def getFileInfoMatcherDescription(self):
    return org_eclipse_core_resources_FileInfoMatcherDescription()


  def getResource(self):
    return org_eclipse_core_resources_IResource()


  def delete(self, _int, _org_eclipse_core_runtime_IProgressMonitor):
    pass


class org_eclipse_core_resources_IResourceProxy(object):
  def init(self):
    self.type = self.getType()

    self.name = self.getName()

    self.modificationStamp = self.getModificationStamp()

  def isAccessible(self):
    return bool()


  def isDerived(self):
    return bool()


  def isHidden(self):
    return bool()


  def isLinked(self):
    return bool()


  def isPhantom(self):
    return bool()


  def isTeamPrivateMember(self):
    return bool()


  def getType(self):
    return int()


  def getSessionProperty(self, _org_eclipse_core_runtime_QualifiedName):
    return object()


  def getName(self):
    return str()


  def getModificationStamp(self):
    return int()


  def requestResource(self):
    return org_eclipse_core_resources_IResource()


  def requestFullPath(self):
    return org_eclipse_core_runtime_IPath()


class org_eclipse_core_resources_IResourceProxyVisitor(object):
  def visit(self, _org_eclipse_core_resources_IResourceProxy):
    return bool()


class org_eclipse_core_resources_IResourceRuleFactory(object):
  def buildRule(self):
    return org_eclipse_core_runtime_jobs_ISchedulingRule()


  def charsetRule(self, _org_eclipse_core_resources_IResource):
    return org_eclipse_core_runtime_jobs_ISchedulingRule()


  def copyRule(self, _org_eclipse_core_resources_IResource, _org_eclipse_core_resources_IResource):
    return org_eclipse_core_runtime_jobs_ISchedulingRule()


  def createRule(self, _org_eclipse_core_resources_IResource):
    return org_eclipse_core_runtime_jobs_ISchedulingRule()


  def deleteRule(self, _org_eclipse_core_resources_IResource):
    return org_eclipse_core_runtime_jobs_ISchedulingRule()


  def derivedRule(self, _org_eclipse_core_resources_IResource):
    return org_eclipse_core_runtime_jobs_ISchedulingRule()


  def markerRule(self, _org_eclipse_core_resources_IResource):
    return org_eclipse_core_runtime_jobs_ISchedulingRule()


  def modifyRule(self, _org_eclipse_core_resources_IResource):
    return org_eclipse_core_runtime_jobs_ISchedulingRule()


  def moveRule(self, _org_eclipse_core_resources_IResource, _org_eclipse_core_resources_IResource):
    return org_eclipse_core_runtime_jobs_ISchedulingRule()


  def refreshRule(self, _org_eclipse_core_resources_IResource):
    return org_eclipse_core_runtime_jobs_ISchedulingRule()


  def validateEditRule(self, _list):
    return org_eclipse_core_runtime_jobs_ISchedulingRule()


class org_eclipse_core_resources_IResourceVisitor(object):
  def visit(self, _org_eclipse_core_resources_IResource):
    return bool()


class org_eclipse_core_resources_ISaveContext(object):
  def init(self):
    self.kind = self.getKind()

    self.previousSaveNumber = self.getPreviousSaveNumber()

    self.saveNumber = self.getSaveNumber()

    self.project = self.getProject()

    self.files = self.getFiles()

  FULL_SAVE = int
  '''
  '''

  PROJECT_SAVE = int
  '''
  '''

  SNAPSHOT = int
  '''
  '''

  def getKind(self):
    return int()


  def getPreviousSaveNumber(self):
    return int()


  def getSaveNumber(self):
    return int()


  def getProject(self):
    return org_eclipse_core_resources_IProject()


  def lookup(self, _org_eclipse_core_runtime_IPath):
    return org_eclipse_core_runtime_IPath()


  def getFiles(self):
    return list()


  def map(self, _org_eclipse_core_runtime_IPath, _org_eclipse_core_runtime_IPath):
    pass


  def needDelta(self):
    pass


  def needSaveNumber(self):
    pass


class org_eclipse_core_resources_ISaveParticipant(java_util_EventListener):
  def doneSaving(self, _org_eclipse_core_resources_ISaveContext):
    pass


  def prepareToSave(self, _org_eclipse_core_resources_ISaveContext):
    pass


  def rollback(self, _org_eclipse_core_resources_ISaveContext):
    pass


  def saving(self, _org_eclipse_core_resources_ISaveContext):
    pass


class org_eclipse_core_resources_ISavedState(object):
  def init(self):
    self.saveNumber = self.getSaveNumber()

    self.files = self.getFiles()

  def getSaveNumber(self):
    return int()


  def lookup(self, _org_eclipse_core_runtime_IPath):
    return org_eclipse_core_runtime_IPath()


  def getFiles(self):
    return list()


  def processResourceChangeEvents(self, _org_eclipse_core_resources_IResourceChangeListener):
    pass


class org_eclipse_core_resources_IStorage(org_eclipse_core_runtime_IAdaptable):
  def init(self):
    self.contents = self.getContents()

    self.name = self.getName()

    self.fullPath = self.getFullPath()

  def isReadOnly(self):
    return bool()


  def getContents(self):
    return java_io_InputStream()


  def getName(self):
    return str()


  def getFullPath(self):
    return org_eclipse_core_runtime_IPath()


class org_eclipse_core_resources_ISynchronizer(object):
  def init(self):
    self.partners = self.getPartners()

  def getSyncInfo(self, _org_eclipse_core_runtime_QualifiedName, _org_eclipse_core_resources_IResource):
    return array.array()


  def getPartners(self):
    return list()


  def accept(self, _org_eclipse_core_runtime_QualifiedName, _org_eclipse_core_resources_IResource, _org_eclipse_core_resources_IResourceVisitor, _int):
    pass


  def add(self, _org_eclipse_core_runtime_QualifiedName):
    pass


  def flushSyncInfo(self, _org_eclipse_core_runtime_QualifiedName, _org_eclipse_core_resources_IResource, _int):
    pass


  def remove(self, _org_eclipse_core_runtime_QualifiedName):
    pass


  def setSyncInfo(self, _org_eclipse_core_runtime_QualifiedName, _org_eclipse_core_resources_IResource, _array_array):
    pass


class org_eclipse_core_resources_IWorkspace(org_eclipse_core_runtime_IAdaptable):
  def init(self):
    self.danglingReferences = self.getDanglingReferences()

    self.filterMatcherDescriptors = self.getFilterMatcherDescriptors()

    self.pathVariableManager = self.getPathVariableManager()

    self.natureDescriptors = self.getNatureDescriptors()

    self.ruleFactory = self.getRuleFactory()

    self.synchronizer = self.getSynchronizer()

    self.description = self.getDescription()

    self.root = self.getRoot()

  AVOID_UPDATE = int
  '''
  '''

  SERVICE_NAME = str
  '''
  '''

  VALIDATE_PROMPT = object
  '''
  '''

  class ProjectOrder(object):
    hasCycles = bool
    '''
    @ivar hasCycles
    '''

    knots = list
    '''
    @ivar knots
    '''

    projects = list
    '''
    @ivar projects
    '''

  def isAutoBuilding(self):
    return bool()


  def isTreeLocked(self):
    return bool()


  def sortNatureSet(self, _list):
    return list()


  def getDanglingReferences(self):
    return java_util_Map()


  def newBuildConfig(self, _str, _str):
    return org_eclipse_core_resources_IBuildConfiguration()


  def getFilterMatcherDescriptor(self, _str):
    return org_eclipse_core_resources_IFilterMatcherDescriptor()


  def getFilterMatcherDescriptors(self):
    return list()


  def getPathVariableManager(self):
    return org_eclipse_core_resources_IPathVariableManager()


  def loadProjectDescription(self, _java_io_InputStream):
    return org_eclipse_core_resources_IProjectDescription()


  def loadProjectDescription(self, _org_eclipse_core_runtime_IPath):
    return org_eclipse_core_resources_IProjectDescription()


  def newProjectDescription(self, _str):
    return org_eclipse_core_resources_IProjectDescription()


  def getNatureDescriptor(self, _str):
    return org_eclipse_core_resources_IProjectNatureDescriptor()


  def getNatureDescriptors(self):
    return list()


  def computePrerequisiteOrder(self, _list):
    return list()


  def getRuleFactory(self):
    return org_eclipse_core_resources_IResourceRuleFactory()


  def addSaveParticipant(self, _str, _org_eclipse_core_resources_ISaveParticipant):
    return org_eclipse_core_resources_ISavedState()


  def addSaveParticipant(self, _org_eclipse_core_runtime_Plugin, _org_eclipse_core_resources_ISaveParticipant):
    return org_eclipse_core_resources_ISavedState()


  def getSynchronizer(self):
    return org_eclipse_core_resources_ISynchronizer()


  def computeProjectOrder(self, _list):
    return org_eclipse_core_resources_IWorkspace.ProjectOrder()


  def getDescription(self):
    return org_eclipse_core_resources_IWorkspaceDescription()


  def getRoot(self):
    return org_eclipse_core_resources_IWorkspaceRoot()


  def copy(self, _list, _org_eclipse_core_runtime_IPath, _bool, _org_eclipse_core_runtime_IProgressMonitor):
    return org_eclipse_core_runtime_IStatus()


  def copy(self, _list, _org_eclipse_core_runtime_IPath, _int, _org_eclipse_core_runtime_IProgressMonitor):
    return org_eclipse_core_runtime_IStatus()


  def delete(self, _list, _bool, _org_eclipse_core_runtime_IProgressMonitor):
    return org_eclipse_core_runtime_IStatus()


  def delete(self, _list, _int, _org_eclipse_core_runtime_IProgressMonitor):
    return org_eclipse_core_runtime_IStatus()


  def move(self, _list, _org_eclipse_core_runtime_IPath, _bool, _org_eclipse_core_runtime_IProgressMonitor):
    return org_eclipse_core_runtime_IStatus()


  def move(self, _list, _org_eclipse_core_runtime_IPath, _int, _org_eclipse_core_runtime_IProgressMonitor):
    return org_eclipse_core_runtime_IStatus()


  def save(self, _bool, _org_eclipse_core_runtime_IProgressMonitor):
    return org_eclipse_core_runtime_IStatus()


  def validateEdit(self, _list, _object):
    return org_eclipse_core_runtime_IStatus()


  def validateFiltered(self, _org_eclipse_core_resources_IResource):
    return org_eclipse_core_runtime_IStatus()


  def validateLinkLocation(self, _org_eclipse_core_resources_IResource, _org_eclipse_core_runtime_IPath):
    return org_eclipse_core_runtime_IStatus()


  def validateLinkLocationURI(self, _org_eclipse_core_resources_IResource, _java_net_URI):
    return org_eclipse_core_runtime_IStatus()


  def validateName(self, _str, _int):
    return org_eclipse_core_runtime_IStatus()


  def validateNatureSet(self, _list):
    return org_eclipse_core_runtime_IStatus()


  def validatePath(self, _str, _int):
    return org_eclipse_core_runtime_IStatus()


  def validateProjectLocation(self, _org_eclipse_core_resources_IProject, _org_eclipse_core_runtime_IPath):
    return org_eclipse_core_runtime_IStatus()


  def validateProjectLocationURI(self, _org_eclipse_core_resources_IProject, _java_net_URI):
    return org_eclipse_core_runtime_IStatus()


  def addResourceChangeListener(self, _org_eclipse_core_resources_IResourceChangeListener):
    pass


  def addResourceChangeListener(self, _org_eclipse_core_resources_IResourceChangeListener, _int):
    pass


  def build(self, _int, _org_eclipse_core_runtime_IProgressMonitor):
    pass


  def build(self, _list, _int, _bool, _org_eclipse_core_runtime_IProgressMonitor):
    pass


  def checkpoint(self, _bool):
    pass


  def deleteMarkers(self, _list):
    pass


  def forgetSavedTree(self, _str):
    pass


  def removeResourceChangeListener(self, _org_eclipse_core_resources_IResourceChangeListener):
    pass


  def removeSaveParticipant(self, _str):
    pass


  def removeSaveParticipant(self, _org_eclipse_core_runtime_Plugin):
    pass


  def run(self, _org_eclipse_core_resources_IWorkspaceRunnable, _org_eclipse_core_runtime_IProgressMonitor):
    pass


  def run(self, _org_eclipse_core_resources_IWorkspaceRunnable, _org_eclipse_core_runtime_jobs_ISchedulingRule, _int, _org_eclipse_core_runtime_IProgressMonitor):
    pass


  def setDescription(self, _org_eclipse_core_resources_IWorkspaceDescription):
    pass


class org_eclipse_core_resources_IWorkspaceDescription(object):
  def init(self):
    self.maxBuildIterations = self.getMaxBuildIterations()

    self.maxFileStates = self.getMaxFileStates()

    self.buildOrder = self.getBuildOrder()

    self.fileStateLongevity = self.getFileStateLongevity()

    self.maxFileStateSize = self.getMaxFileStateSize()

    self.snapshotInterval = self.getSnapshotInterval()

  def isApplyFileStatePolicy(self):
    return bool()


  def isAutoBuilding(self):
    return bool()


  def getMaxBuildIterations(self):
    return int()


  def getMaxFileStates(self):
    return int()


  def getBuildOrder(self):
    return list()


  def getFileStateLongevity(self):
    return int()


  def getMaxFileStateSize(self):
    return int()


  def getSnapshotInterval(self):
    return int()


  def setApplyFileStatePolicy(self, _bool):
    pass


  def setAutoBuilding(self, _bool):
    pass


  def setBuildOrder(self, _list):
    pass


  def setFileStateLongevity(self, _int):
    pass


  def setMaxBuildIterations(self, _int):
    pass


  def setMaxFileStateSize(self, _int):
    pass


  def setMaxFileStates(self, _int):
    pass


  def setSnapshotInterval(self, _int):
    pass


class org_eclipse_core_resources_IWorkspaceRoot(org_eclipse_core_resources_IContainer):
  def init(self):
    self.projects = self.getProjects()

  def getContainerForLocation(self, _org_eclipse_core_runtime_IPath):
    return org_eclipse_core_resources_IContainer()


  def findContainersForLocation(self, _org_eclipse_core_runtime_IPath):
    return list()


  def findContainersForLocationURI(self, _java_net_URI):
    return list()


  def findContainersForLocationURI(self, _java_net_URI, _int):
    return list()


  def getFileForLocation(self, _org_eclipse_core_runtime_IPath):
    return org_eclipse_core_resources_IFile()


  def findFilesForLocation(self, _org_eclipse_core_runtime_IPath):
    return list()


  def findFilesForLocationURI(self, _java_net_URI):
    return list()


  def findFilesForLocationURI(self, _java_net_URI, _int):
    return list()


  def getProject(self, _str):
    return org_eclipse_core_resources_IProject()


  def getProjects(self):
    return list()


  def getProjects(self, _int):
    return list()


  def delete(self, _bool, _bool, _org_eclipse_core_runtime_IProgressMonitor):
    pass


class org_eclipse_core_resources_IWorkspaceRunnable(object):
  def run(self, _org_eclipse_core_runtime_IProgressMonitor):
    pass


class org_eclipse_core_resources_ResourceAttributes(object):
  def isArchive(self):
    return bool()


  def isExecutable(self):
    return bool()


  def isHidden(self):
    return bool()


  def isReadOnly(self):
    return bool()


  def isSet(self, _int):
    return bool()


  def isSymbolicLink(self):
    return bool()


  def toString(self):
    return str()


  def fromFile(self, _java_io_File):
    return org_eclipse_core_resources_ResourceAttributes()


  def set(self, _int, _bool):
    pass


  def setArchive(self, _bool):
    pass


  def setExecutable(self, _bool):
    pass


  def setHidden(self, _bool):
    pass


  def setReadOnly(self, _bool):
    pass


  def setSymbolicLink(self, _bool):
    pass


class org_eclipse_core_runtime_CoreException(java_lang_Exception):
  def init(self):
    self.status = self.getStatus()

    self.cause = self.getCause()

  def getStatus(self):
    return org_eclipse_core_runtime_IStatus()


  def getCause(self):
    return java_lang_Throwable()


  def printStackTrace(self):
    pass


  def printStackTrace(self, _java_io_PrintStream):
    pass


  def printStackTrace(self, _java_io_PrintWriter):
    pass


  serialVersionUID = int
  '''
  '''

class org_eclipse_core_runtime_IAdaptable(object):
  def getAdapter(self, _java_lang_Class):
    return object()


class org_eclipse_core_runtime_IConfigurationElement(object):
  def init(self):
    self.parent = self.getParent()

    self.name = self.getName()

    self.namespace = self.getNamespace()

    self.namespaceIdentifier = self.getNamespaceIdentifier()

    self.value = self.getValue()

    self.valueAsIs = self.getValueAsIs()

    self.attributeNames = self.getAttributeNames()

    self.children = self.getChildren()

    self.contributor = self.getContributor()

    self.declaringExtension = self.getDeclaringExtension()

  def equals(self, _object):
    return bool()


  def isValid(self):
    return bool()


  def createExecutableExtension(self, _str):
    return object()


  def getParent(self):
    return object()


  def getAttribute(self, _str):
    return str()


  def getAttribute(self, _str, _str):
    return str()


  def getAttributeAsIs(self, _str):
    return str()


  def getName(self):
    return str()


  def getNamespace(self):
    return str()


  def getNamespaceIdentifier(self):
    return str()


  def getValue(self):
    return str()


  def getValue(self, _str):
    return str()


  def getValueAsIs(self):
    return str()


  def getAttributeNames(self):
    return list()


  def getChildren(self):
    return list()


  def getChildren(self, _str):
    return list()


  def getContributor(self):
    return org_eclipse_core_runtime_IContributor()


  def getDeclaringExtension(self):
    return org_eclipse_core_runtime_IExtension()


class org_eclipse_core_runtime_IContributor(object):
  def init(self):
    self.name = self.getName()

  def getName(self):
    return str()


class org_eclipse_core_runtime_IExtension(object):
  def init(self):
    self.extensionPointUniqueIdentifier = self.getExtensionPointUniqueIdentifier()

    self.label = self.getLabel()

    self.namespace = self.getNamespace()

    self.namespaceIdentifier = self.getNamespaceIdentifier()

    self.simpleIdentifier = self.getSimpleIdentifier()

    self.uniqueIdentifier = self.getUniqueIdentifier()

    self.configurationElements = self.getConfigurationElements()

    self.contributor = self.getContributor()

    self.declaringPluginDescriptor = self.getDeclaringPluginDescriptor()

  def equals(self, _object):
    return bool()


  def isValid(self):
    return bool()


  def getExtensionPointUniqueIdentifier(self):
    return str()


  def getLabel(self):
    return str()


  def getLabel(self, _str):
    return str()


  def getNamespace(self):
    return str()


  def getNamespaceIdentifier(self):
    return str()


  def getSimpleIdentifier(self):
    return str()


  def getUniqueIdentifier(self):
    return str()


  def getConfigurationElements(self):
    return list()


  def getContributor(self):
    return org_eclipse_core_runtime_IContributor()


  def getDeclaringPluginDescriptor(self):
    return org_eclipse_core_runtime_IPluginDescriptor()


class org_eclipse_core_runtime_ILog(object):
  def init(self):
    self.bundle = self.getBundle()

  def getBundle(self):
    return org_osgi_framework_Bundle()


  def addLogListener(self, _org_eclipse_core_runtime_ILogListener):
    pass


  def log(self, _org_eclipse_core_runtime_IStatus):
    pass


  def removeLogListener(self, _org_eclipse_core_runtime_ILogListener):
    pass


class org_eclipse_core_runtime_ILogListener(java_util_EventListener):
  def logging(self, _org_eclipse_core_runtime_IStatus, _str):
    pass


class org_eclipse_core_runtime_IPath(java_lang_Cloneable):
  def init(self):
    self.device = self.getDevice()

    self.fileExtension = self.getFileExtension()

  DEVICE_SEPARATOR = char
  '''
  '''

  SEPARATOR = char
  '''
  '''

  def equals(self, _object):
    return bool()


  def hasTrailingSeparator(self):
    return bool()


  def isAbsolute(self):
    return bool()


  def isEmpty(self):
    return bool()


  def isPrefixOf(self, _org_eclipse_core_runtime_IPath):
    return bool()


  def isRoot(self):
    return bool()


  def isUNC(self):
    return bool()


  def isValidPath(self, _str):
    return bool()


  def isValidSegment(self, _str):
    return bool()


  def matchingFirstSegments(self, _org_eclipse_core_runtime_IPath):
    return int()


  def segmentCount(self):
    return int()


  def toFile(self):
    return java_io_File()


  def clone(self):
    return object()


  def getDevice(self):
    return str()


  def getFileExtension(self):
    return str()


  def lastSegment(self):
    return str()


  def segment(self, _int):
    return str()


  def toOSString(self):
    return str()


  def toPortableString(self):
    return str()


  def toString(self):
    return str()


  def segments(self):
    return list()


  def addFileExtension(self, _str):
    return org_eclipse_core_runtime_IPath()


  def addTrailingSeparator(self):
    return org_eclipse_core_runtime_IPath()


  def append(self, _str):
    return org_eclipse_core_runtime_IPath()


  def append(self, _org_eclipse_core_runtime_IPath):
    return org_eclipse_core_runtime_IPath()


  def makeAbsolute(self):
    return org_eclipse_core_runtime_IPath()


  def makeRelative(self):
    return org_eclipse_core_runtime_IPath()


  def makeRelativeTo(self, _org_eclipse_core_runtime_IPath):
    return org_eclipse_core_runtime_IPath()


  def makeUNC(self, _bool):
    return org_eclipse_core_runtime_IPath()


  def removeFileExtension(self):
    return org_eclipse_core_runtime_IPath()


  def removeFirstSegments(self, _int):
    return org_eclipse_core_runtime_IPath()


  def removeLastSegments(self, _int):
    return org_eclipse_core_runtime_IPath()


  def removeTrailingSeparator(self):
    return org_eclipse_core_runtime_IPath()


  def setDevice(self, _str):
    return org_eclipse_core_runtime_IPath()


  def uptoSegment(self, _int):
    return org_eclipse_core_runtime_IPath()


class org_eclipse_core_runtime_IPluginDescriptor(object):
  pass
class org_eclipse_core_runtime_IProgressMonitor(object):
  UNKNOWN = int
  '''
  '''

  def isCanceled(self):
    return bool()


  def beginTask(self, _str, _int):
    pass


  def done(self):
    pass


  def internalWorked(self, _float):
    pass


  def setCanceled(self, _bool):
    pass


  def setTaskName(self, _str):
    pass


  def subTask(self, _str):
    pass


  def worked(self, _int):
    pass


class org_eclipse_core_runtime_IStatus(object):
  def init(self):
    self.code = self.getCode()

    self.severity = self.getSeverity()

    self.message = self.getMessage()

    self.plugin = self.getPlugin()

    self.exception = self.getException()

    self.children = self.getChildren()

  CANCEL = int
  '''
  '''

  ERROR = int
  '''
  '''

  INFO = int
  '''
  '''

  OK = int
  '''
  '''

  WARNING = int
  '''
  '''

  def isMultiStatus(self):
    return bool()


  def isOK(self):
    return bool()


  def matches(self, _int):
    return bool()


  def getCode(self):
    return int()


  def getSeverity(self):
    return int()


  def getMessage(self):
    return str()


  def getPlugin(self):
    return str()


  def getException(self):
    return java_lang_Throwable()


  def getChildren(self):
    return list()


class org_eclipse_core_runtime_InvalidRegistryObjectException(java_lang_RuntimeException):
  MESSAGE = str
  '''
  '''

  serialVersionUID = int
  '''
  '''

class org_eclipse_core_runtime_Plugin(object):
  def init(self):
    self.debugOptions = self.getDebugOptions()

    self.log = self.getLog()

    self.stateLocation = self.getStateLocation()

    self.descriptor = self.getDescriptor()

    self.pluginPreferences = self.getPluginPreferences()

    self.bundle = self.getBundle()

  PLUGIN_PREFERENCE_SCOPE = str
  '''
  '''

  PREFERENCES_DEFAULT_OVERRIDE_BASE_NAME = str
  '''
  '''

  PREFERENCES_DEFAULT_OVERRIDE_FILE_NAME = str
  '''
  '''

  def initializeDescriptor(self, _str):
    return org_eclipse_core_runtime_IPluginDescriptor()


  def getDebugOptions(self):
    return org_eclipse_osgi_service_debug_DebugOptions()


  def initializeDefaultPluginPreferences(self):
    pass


  def isDebugging(self):
    return bool()


  def openStream(self, _org_eclipse_core_runtime_IPath):
    return java_io_InputStream()


  def openStream(self, _org_eclipse_core_runtime_IPath, _bool):
    return java_io_InputStream()


  def find(self, _org_eclipse_core_runtime_IPath):
    return java_net_URL()


  def find(self, _org_eclipse_core_runtime_IPath, _java_util_Map):
    return java_net_URL()


  def getLog(self):
    return org_eclipse_core_runtime_ILog()


  def getStateLocation(self):
    return org_eclipse_core_runtime_IPath()


  def getDescriptor(self):
    return org_eclipse_core_runtime_IPluginDescriptor()


  def getPluginPreferences(self):
    return org_eclipse_core_runtime_Preferences()


  def getBundle(self):
    return org_osgi_framework_Bundle()


  def internalInitializeDefaultPluginPreferences(self):
    pass


  def savePluginPreferences(self):
    pass


  def toString(self):
    return str()


  def setDebugging(self, _bool):
    pass


  def shutdown(self):
    pass


  def start(self, _org_osgi_framework_BundleContext):
    pass


  def startup(self):
    pass


  def stop(self, _org_osgi_framework_BundleContext):
    pass


class org_eclipse_core_runtime_Preferences(object):
  BOOLEAN_DEFAULT_DEFAULT = bool
  '''
  '''

  DOUBLE_DEFAULT_DEFAULT = float
  '''
  '''

  EMPTY_STRING_ARRAY = list
  '''
  '''

  FALSE = str
  '''
  '''

  FLOAT_DEFAULT_DEFAULT = float
  '''
  '''

  INT_DEFAULT_DEFAULT = int
  '''
  '''

  LONG_DEFAULT_DEFAULT = int
  '''
  '''

  PT_PREFERENCES = str
  '''
  '''

  STRING_DEFAULT_DEFAULT = str
  '''
  '''

  TRUE = str
  '''
  '''

  class IPropertyChangeListener(java_util_EventListener):
    def propertyChange(self, _org_eclipse_core_runtime_Preferences_PropertyChangeEvent):
      pass


  class PropertyChangeEvent(java_util_EventObject):
    def init(self):
      self.newValue = self.getNewValue()

      self.oldValue = self.getOldValue()

      self.property = self.getProperty()

    def getNewValue(self):
      return object()


    def getOldValue(self):
      return object()


    def getProperty(self):
      return str()


    serialVersionUID = int
    '''
    '''

  def convertToDouble(self, _str, _float):
    return float()


  def convertToFloat(self, _str, _float):
    return float()


  def convertToInt(self, _str, _int):
    return int()


  def convertToLong(self, _str, _int):
    return int()


  def firePropertyChangeEvent(self, _str, _object, _object):
    pass


  def contains(self, _str):
    return bool()


  def getBoolean(self, _str):
    return bool()


  def getDefaultBoolean(self, _str):
    return bool()


  def isDefault(self, _str):
    return bool()


  def needsSaving(self):
    return bool()


  def getDefaultDouble(self, _str):
    return float()


  def getDouble(self, _str):
    return float()


  def getDefaultFloat(self, _str):
    return float()


  def getFloat(self, _str):
    return float()


  def getDefaultInt(self, _str):
    return int()


  def getInt(self, _str):
    return int()


  def getDefaultString(self, _str):
    return str()


  def getString(self, _str):
    return str()


  def defaultPropertyNames(self):
    return list()


  def propertyNames(self):
    return list()


  def getDefaultLong(self, _str):
    return int()


  def getLong(self, _str):
    return int()


  def validatePreferenceVersions(self, _org_eclipse_core_runtime_IPath):
    return org_eclipse_core_runtime_IStatus()


  def exportPreferences(self, _org_eclipse_core_runtime_IPath):
    pass


  def importPreferences(self, _org_eclipse_core_runtime_IPath):
    pass


  def addPropertyChangeListener(self, _org_eclipse_core_runtime_Preferences_IPropertyChangeListener):
    pass


  def load(self, _java_io_InputStream):
    pass


  def removePropertyChangeListener(self, _org_eclipse_core_runtime_Preferences_IPropertyChangeListener):
    pass


  def setDefault(self, _str, _bool):
    pass


  def setDefault(self, _str, _float):
    pass


  def setDefault(self, _str, _float):
    pass


  def setDefault(self, _str, _int):
    pass


  def setDefault(self, _str, _str):
    pass


  def setDefault(self, _str, _int):
    pass


  def setToDefault(self, _str):
    pass


  def setValue(self, _str, _bool):
    pass


  def setValue(self, _str, _float):
    pass


  def setValue(self, _str, _float):
    pass


  def setValue(self, _str, _int):
    pass


  def setValue(self, _str, _str):
    pass


  def setValue(self, _str, _int):
    pass


  def store(self, _java_io_OutputStream, _str):
    pass


class org_eclipse_core_runtime_QualifiedName(object):
  def init(self):
    self.localName = self.getLocalName()

    self.qualifier = self.getQualifier()

  def equals(self, _object):
    return bool()


  def hashCode(self):
    return int()


  def getLocalName(self):
    return str()


  def getQualifier(self):
    return str()


  def toString(self):
    return str()


class org_eclipse_core_runtime_content_IContentDescription(object):
  def init(self):
    self.charset = self.getCharset()

    self.contentType = self.getContentType()

  ALL = list
  '''
  '''

  BOM_UTF_16BE = array.array
  '''
  '''

  BOM_UTF_16LE = array.array
  '''
  '''

  BOM_UTF_8 = array.array
  '''
  '''

  BYTE_ORDER_MARK = org_eclipse_core_runtime_QualifiedName
  '''
  '''

  CHARSET = org_eclipse_core_runtime_QualifiedName
  '''
  '''

  def isRequested(self, _org_eclipse_core_runtime_QualifiedName):
    return bool()


  def getProperty(self, _org_eclipse_core_runtime_QualifiedName):
    return object()


  def getCharset(self):
    return str()


  def getContentType(self):
    return org_eclipse_core_runtime_content_IContentType()


  def setProperty(self, _org_eclipse_core_runtime_QualifiedName, _object):
    pass


class org_eclipse_core_runtime_content_IContentType(org_eclipse_core_runtime_content_IContentTypeSettings):
  def init(self):
    self.defaultCharset = self.getDefaultCharset()

    self.id = self.getId()

    self.name = self.getName()

    self.defaultDescription = self.getDefaultDescription()

    self.baseType = self.getBaseType()

  FILE_EXTENSION_SPEC = int
  '''
  '''

  FILE_NAME_SPEC = int
  '''
  '''

  IGNORE_PRE_DEFINED = int
  '''
  '''

  IGNORE_USER_DEFINED = int
  '''
  '''

  def isAssociatedWith(self, _str):
    return bool()


  def isAssociatedWith(self, _str, _org_eclipse_core_runtime_preferences_IScopeContext):
    return bool()


  def isKindOf(self, _org_eclipse_core_runtime_content_IContentType):
    return bool()


  def getDefaultCharset(self):
    return str()


  def getId(self):
    return str()


  def getName(self):
    return str()


  def getFileSpecs(self, _int):
    return list()


  def getDefaultDescription(self):
    return org_eclipse_core_runtime_content_IContentDescription()


  def getDescriptionFor(self, _java_io_InputStream, _list):
    return org_eclipse_core_runtime_content_IContentDescription()


  def getDescriptionFor(self, _java_io_Reader, _list):
    return org_eclipse_core_runtime_content_IContentDescription()


  def getBaseType(self):
    return org_eclipse_core_runtime_content_IContentType()


  def getSettings(self, _org_eclipse_core_runtime_preferences_IScopeContext):
    return org_eclipse_core_runtime_content_IContentTypeSettings()


class org_eclipse_core_runtime_content_IContentTypeMatcher(object):
  def getDescriptionFor(self, _java_io_InputStream, _str, _list):
    return org_eclipse_core_runtime_content_IContentDescription()


  def getDescriptionFor(self, _java_io_Reader, _str, _list):
    return org_eclipse_core_runtime_content_IContentDescription()


  def findContentTypeFor(self, _java_io_InputStream, _str):
    return org_eclipse_core_runtime_content_IContentType()


  def findContentTypeFor(self, _str):
    return org_eclipse_core_runtime_content_IContentType()


  def findContentTypesFor(self, _java_io_InputStream, _str):
    return list()


  def findContentTypesFor(self, _str):
    return list()


class org_eclipse_core_runtime_content_IContentTypeSettings(object):
  def init(self):
    self.defaultCharset = self.getDefaultCharset()

    self.id = self.getId()

  FILE_EXTENSION_SPEC = int
  '''
  '''

  FILE_NAME_SPEC = int
  '''
  '''

  def getDefaultCharset(self):
    return str()


  def getId(self):
    return str()


  def getFileSpecs(self, _int):
    return list()


  def addFileSpec(self, _str, _int):
    pass


  def removeFileSpec(self, _str, _int):
    pass


  def setDefaultCharset(self, _str):
    pass


class org_eclipse_core_runtime_jobs_ISchedulingRule(object):
  def contains(self, _org_eclipse_core_runtime_jobs_ISchedulingRule):
    return bool()


  def isConflicting(self, _org_eclipse_core_runtime_jobs_ISchedulingRule):
    return bool()


class org_eclipse_core_runtime_preferences_IEclipsePreferences(org_osgi_service_prefs_Preferences):
  class INodeChangeListener(object):
    def added(self, _org_eclipse_core_runtime_preferences_IEclipsePreferences_NodeChangeEvent):
      pass


    def removed(self, _org_eclipse_core_runtime_preferences_IEclipsePreferences_NodeChangeEvent):
      pass


  class IPreferenceChangeListener(object):
    def preferenceChange(self, _org_eclipse_core_runtime_preferences_IEclipsePreferences_PreferenceChangeEvent):
      pass


  class NodeChangeEvent(java_util_EventObject):
    def init(self):
      self.child = self.getChild()

      self.parent = self.getParent()

    def getChild(self):
      return org_osgi_service_prefs_Preferences()


    def getParent(self):
      return org_osgi_service_prefs_Preferences()


    serialVersionUID = int
    '''
    '''

  class PreferenceChangeEvent(java_util_EventObject):
    def init(self):
      self.newValue = self.getNewValue()

      self.oldValue = self.getOldValue()

      self.key = self.getKey()

      self.node = self.getNode()

    def getNewValue(self):
      return object()


    def getOldValue(self):
      return object()


    def getKey(self):
      return str()


    def getNode(self):
      return org_osgi_service_prefs_Preferences()


    serialVersionUID = int
    '''
    '''

  def node(self, _str):
    return org_osgi_service_prefs_Preferences()


  def accept(self, _org_eclipse_core_runtime_preferences_IPreferenceNodeVisitor):
    pass


  def addNodeChangeListener(self, _org_eclipse_core_runtime_preferences_IEclipsePreferences_INodeChangeListener):
    pass


  def addPreferenceChangeListener(self, _org_eclipse_core_runtime_preferences_IEclipsePreferences_IPreferenceChangeListener):
    pass


  def removeNode(self):
    pass


  def removeNodeChangeListener(self, _org_eclipse_core_runtime_preferences_IEclipsePreferences_INodeChangeListener):
    pass


  def removePreferenceChangeListener(self, _org_eclipse_core_runtime_preferences_IEclipsePreferences_IPreferenceChangeListener):
    pass


class org_eclipse_core_runtime_preferences_IPreferenceNodeVisitor(object):
  def visit(self, _org_eclipse_core_runtime_preferences_IEclipsePreferences):
    return bool()


class org_eclipse_core_runtime_preferences_IScopeContext(object):
  def init(self):
    self.name = self.getName()

    self.location = self.getLocation()

  def getName(self):
    return str()


  def getLocation(self):
    return org_eclipse_core_runtime_IPath()


  def getNode(self, _str):
    return org_eclipse_core_runtime_preferences_IEclipsePreferences()


class org_eclipse_emf_common_notify_Adapter(object):
  def init(self):
    self.target = self.getTarget()

  class Internal(org_eclipse_emf_common_notify_Adapter):
    def unsetTarget(self, _org_eclipse_emf_common_notify_Notifier):
      pass


  def isAdapterForType(self, _object):
    return bool()


  def getTarget(self):
    return org_eclipse_emf_common_notify_Notifier()


  def notifyChanged(self, _org_eclipse_emf_common_notify_Notification):
    pass


  def setTarget(self, _org_eclipse_emf_common_notify_Notifier):
    pass


class org_eclipse_emf_common_notify_AdapterFactory(object):
  def isFactoryForType(self, _object):
    return bool()


  def adapt(self, _object, _object):
    return object()


  def adapt(self, _org_eclipse_emf_common_notify_Notifier, _object):
    return org_eclipse_emf_common_notify_Adapter()


  def adaptNew(self, _org_eclipse_emf_common_notify_Notifier, _object):
    return org_eclipse_emf_common_notify_Adapter()


  def adaptAllNew(self, _org_eclipse_emf_common_notify_Notifier):
    pass


class org_eclipse_emf_common_notify_Notification(object):
  def init(self):
    self.newBooleanValue = self.getNewBooleanValue()

    self.oldBooleanValue = self.getOldBooleanValue()

    self.newByteValue = self.getNewByteValue()

    self.oldByteValue = self.getOldByteValue()

    self.newCharValue = self.getNewCharValue()

    self.oldCharValue = self.getOldCharValue()

    self.newDoubleValue = self.getNewDoubleValue()

    self.oldDoubleValue = self.getOldDoubleValue()

    self.newFloatValue = self.getNewFloatValue()

    self.oldFloatValue = self.getOldFloatValue()

    self.eventType = self.getEventType()

    self.newIntValue = self.getNewIntValue()

    self.oldIntValue = self.getOldIntValue()

    self.position = self.getPosition()

    self.feature = self.getFeature()

    self.newValue = self.getNewValue()

    self.notifier = self.getNotifier()

    self.oldValue = self.getOldValue()

    self.newStringValue = self.getNewStringValue()

    self.oldStringValue = self.getOldStringValue()

    self.newLongValue = self.getNewLongValue()

    self.oldLongValue = self.getOldLongValue()

    self.newShortValue = self.getNewShortValue()

    self.oldShortValue = self.getOldShortValue()

  ADD = int
  '''
  '''

  ADD_MANY = int
  '''
  '''

  CREATE = int
  '''
  '''

  EVENT_TYPE_COUNT = int
  '''
  '''

  MOVE = int
  '''
  '''

  NO_FEATURE_ID = int
  '''
  '''

  NO_INDEX = int
  '''
  '''

  REMOVE = int
  '''
  '''

  REMOVE_MANY = int
  '''
  '''

  REMOVING_ADAPTER = int
  '''
  '''

  RESOLVE = int
  '''
  '''

  SET = int
  '''
  '''

  UNSET = int
  '''
  '''

  def getNewBooleanValue(self):
    return bool()


  def getOldBooleanValue(self):
    return bool()


  def isReset(self):
    return bool()


  def isTouch(self):
    return bool()


  def merge(self, _org_eclipse_emf_common_notify_Notification):
    return bool()


  def wasSet(self):
    return bool()


  def getNewByteValue(self):
    return int()


  def getOldByteValue(self):
    return int()


  def getNewCharValue(self):
    return char()


  def getOldCharValue(self):
    return char()


  def getNewDoubleValue(self):
    return float()


  def getOldDoubleValue(self):
    return float()


  def getNewFloatValue(self):
    return float()


  def getOldFloatValue(self):
    return float()


  def getEventType(self):
    return int()


  def getFeatureID(self, _java_lang_Class):
    return int()


  def getNewIntValue(self):
    return int()


  def getOldIntValue(self):
    return int()


  def getPosition(self):
    return int()


  def getFeature(self):
    return object()


  def getNewValue(self):
    return object()


  def getNotifier(self):
    return object()


  def getOldValue(self):
    return object()


  def getNewStringValue(self):
    return str()


  def getOldStringValue(self):
    return str()


  def getNewLongValue(self):
    return int()


  def getOldLongValue(self):
    return int()


  def getNewShortValue(self):
    return int()


  def getOldShortValue(self):
    return int()


class org_eclipse_emf_common_notify_NotificationChain(object):
  def add(self, _org_eclipse_emf_common_notify_Notification):
    return bool()


  def dispatch(self):
    pass


class org_eclipse_emf_common_notify_Notifier(object):
  def eDeliver(self):
    return bool()


  def eAdapters(self):
    return list()


  def eNotify(self, _org_eclipse_emf_common_notify_Notification):
    pass


  def eSetDeliver(self, _bool):
    pass


class org_eclipse_emf_common_util_EList(list):
  def move(self, _int, _int):
    return object()


  def move(self, _int, _object):
    pass


class org_eclipse_emf_common_util_EMap(list):
  class InternalMapView(java_util_Map):
    def eMap(self):
      return list()


  def containsKey(self, _object):
    return bool()


  def containsValue(self, _object):
    return bool()


  def indexOfKey(self, _object):
    return int()


  def get(self, _object):
    return object()


  def put(self, _object, _object):
    return object()


  def removeKey(self, _object):
    return object()


  def values(self):
    return list()


  def map(self):
    return java_util_Map()


  def entrySet(self):
    return list()


  def keySet(self):
    return list()


  def putAll(self, _java_util_Map):
    pass


  def putAll(self, _list):
    pass


class org_eclipse_emf_common_util_Enumerator(object):
  def init(self):
    self.value = self.getValue()

    self.literal = self.getLiteral()

    self.name = self.getName()

  def getValue(self):
    return int()


  def getLiteral(self):
    return str()


  def getName(self):
    return str()


class org_eclipse_emf_common_util_InterningSet(list):
  def get(self, _object):
    return object()


  def intern(self, _object):
    return object()


class org_eclipse_emf_common_util_Pool(list):
  def init(self):
    self.readLock = self.getReadLock()

    self.writeLock = self.getWriteLock()

  def ensureCapacity(self):
    return bool()


  def addEntry(self, _bool, _object, _org_eclipse_emf_common_util_Pool_AccessUnit):
    return object()


  def access(self, _bool, _org_eclipse_emf_common_util_Pool_AccessUnit):
    pass


  def doIntern(self, _bool, _org_eclipse_emf_common_util_Pool_AccessUnit):
    return object()


  def newDefaultAccessUnits(self):
    return org_eclipse_emf_common_util_Pool_AccessUnit_Queue()


  def getEntry(self, _int):
    return org_eclipse_emf_common_util_WeakInterningHashSet_Entry()


  def newExternalEntry(self, _object, _int):
    return org_eclipse_emf_common_util_WeakInterningHashSet_Entry()


  def cleanup(self):
    pass


  def doCleanup(self):
    pass


  def add(self, _object):
    return bool()


  def contains(self, _object):
    return bool()


  def containsAll(self, _list):
    return bool()


  def equals(self, _object):
    return bool()


  def remove(self, _object):
    return bool()


  def removeAll(self, _list):
    return bool()


  def retainAll(self, _list):
    return bool()


  def hashCode(self):
    return int()


  def get(self, _object):
    return object()


  def intern(self, _object):
    return object()


  def toArray(self):
    return list()


  def toArray(self, _list):
    return list()


  def toString(self):
    return str()


  def iterator(self):
    return java_util_Iterator()


  def getReadLock(self):
    return java_util_concurrent_locks_Lock()


  def getWriteLock(self):
    return java_util_concurrent_locks_Lock()


  def clear(self):
    pass


  def grow(self, _int):
    pass


  serialVersionUID = int
  '''
  '''

class org_eclipse_emf_common_util_Pool_AccessUnit(object):
  def init(self):
    self.value = self.getValue()

    self.entry = self.getEntry()

    self.internalizedValue = self.getInternalizedValue()

  def setArbitraryValue(self, _object):
    return bool()


  def getValue(self):
    return object()


  def setValue(self, _object):
    pass


  def matches(self, _object):
    return bool()


  def getEntry(self):
    return org_eclipse_emf_common_util_WeakInterningHashSet_Entry()


  def rematches(self, _object, _org_eclipse_emf_common_util_WeakInterningHashSet_Entry):
    return bool()


  def getInternalizedValue(self):
    return object()


  def match(self):
    return object()


  def add(self, _object, _org_eclipse_emf_common_util_WeakInterningHashSet_Entry):
    pass


  def reset(self, _bool):
    pass


class org_eclipse_emf_common_util_Pool_AccessUnit_Queue(java_util_concurrent_atomic_AtomicReference):
  def newAccessUnit(self):
    return org_eclipse_emf_common_util_Pool_AccessUnit()


  def pop(self, _bool):
    return org_eclipse_emf_common_util_Pool_AccessUnit()


  def push(self, _org_eclipse_emf_common_util_Pool_AccessUnit, _bool):
    pass


  serialVersionUID = int
  '''
  '''

class org_eclipse_emf_common_util_TreeIterator(java_util_Iterator):
  def prune(self):
    pass


class org_eclipse_emf_common_util_URI(object):
  def init(self):
    self.cachedString = self.getCachedString()

  ALPHANUM_HI = int
  '''
  '''

  ALPHANUM_LO = int
  '''
  '''

  ALPHA_HI = int
  '''
  '''

  ALPHA_LO = int
  '''
  '''

  ARCHIVE_IDENTIFIER = char
  '''
  '''

  ARCHIVE_SCHEMES = list
  '''
  '''

  ARCHIVE_SEPARATOR = str
  '''
  '''

  AUTHORITY_SEPARATOR = str
  '''
  '''

  AUTHORITY_SEPARATOR_HASH_CODE = int
  '''
  '''

  DEBUG = bool
  '''
  '''

  DEVICE_IDENTIFIER = char
  '''
  '''

  DIGIT_HI = int
  '''
  '''

  DIGIT_LO = int
  '''
  '''

  ENCODE_PLATFORM_RESOURCE_URIS = bool
  '''
  '''

  ESCAPE = char
  '''
  '''

  FILE_EXTENSION_SEPARATOR = char
  '''
  '''

  FRAGMENT_FIRST_SEPARATOR = int
  '''
  '''

  FRAGMENT_LAST_SEPARATOR = int
  '''
  '''

  FRAGMENT_NONE = int
  '''
  '''

  FRAGMENT_SEPARATOR = char
  '''
  '''

  HEX_DIGITS = array.array
  '''
  '''

  HEX_HI = int
  '''
  '''

  HEX_LO = int
  '''
  '''

  MAJOR_SEPARATOR_HI = int
  '''
  '''

  MAJOR_SEPARATOR_LO = int
  '''
  '''

  NO_SEGMENTS = list
  '''
  '''

  ONE_EMPTY_SEGMENT = list
  '''
  '''

  ONE_SELF_SEGMENT = list
  '''
  '''

  PATH_CHAR_HI = int
  '''
  '''

  PATH_CHAR_LO = int
  '''
  '''

  PLATFORM_SEGMENT_RESERVED_HI = int
  '''
  '''

  PLATFORM_SEGMENT_RESERVED_LO = int
  '''
  '''

  POOL = list
  '''
  '''

  PORT_SEPARATOR = char
  '''
  '''

  QUERY_SEPARATOR = char
  '''
  '''

  RESERVED_HI = int
  '''
  '''

  RESERVED_LO = int
  '''
  '''

  SCHEME_ARCHIVE = str
  '''
  '''

  SCHEME_ARCHIVE_HASH_CODE = int
  '''
  '''

  SCHEME_FILE = str
  '''
  '''

  SCHEME_FILE_HASH_CODE = int
  '''
  '''

  SCHEME_HTTP = str
  '''
  '''

  SCHEME_HTTP_HASH_CODE = int
  '''
  '''

  SCHEME_JAR = str
  '''
  '''

  SCHEME_JAR_HASH_CODE = int
  '''
  '''

  SCHEME_PLATFORM = str
  '''
  '''

  SCHEME_PLATFORM_HASH_CODE = int
  '''
  '''

  SCHEME_SEPARATOR = char
  '''
  '''

  SCHEME_ZIP = str
  '''
  '''

  SCHEME_ZIP_HASH_CODE = int
  '''
  '''

  SEGMENT_CHAR_HI = int
  '''
  '''

  SEGMENT_CHAR_LO = int
  '''
  '''

  SEGMENT_EMPTY = str
  '''
  '''

  SEGMENT_END_HI = int
  '''
  '''

  SEGMENT_END_LO = int
  '''
  '''

  SEGMENT_PARENT = str
  '''
  '''

  SEGMENT_PLUGIN = str
  '''
  '''

  SEGMENT_RESOURCE = str
  '''
  '''

  SEGMENT_SELF = str
  '''
  '''

  SEGMENT_SEPARATOR = char
  '''
  '''

  UNRESERVED_HI = int
  '''
  '''

  UNRESERVED_LO = int
  '''
  '''

  URIC_HI = int
  '''
  '''

  URIC_LO = int
  '''
  '''

  USER_INFO_SEPARATOR = char
  '''
  '''

  def hasDeviceOrPath(self):
    return bool()


  def isBase(self):
    return bool()


  def matches(self, _int, _bool, _str, _str, _str, _bool, _list, _str):
    return bool()


  def matches(self, _str):
    return bool()


  def matches(self, _str, _str):
    return bool()


  def segmentsEqual(self, _org_eclipse_emf_common_util_URI):
    return bool()


  def getCachedString(self):
    return str()


  def collapseSegments(self, _bool):
    return list()


  def rawSegments(self):
    return list()


  def rawAppendFragment(self, _java_lang_CharSequence):
    return org_eclipse_emf_common_util_URI()


  def contains(self, _str, _int, _int):
    return bool()


  def equals(self, _object, _object):
    return bool()


  def isEscaped(self, _str, _int):
    return bool()


  def matches(self, _char, _int, _int):
    return bool()


  def validateURI(self, _bool, _str, _str, _str, _bool, _list, _str, _str):
    return bool()


  def unescape(self, _char, _char):
    return char()


  def valueOf(self, _char):
    return int()


  def splitInternFragment(self, _str):
    return java_lang_CharSequence()


  def encode(self, _str, _int, _int, _bool):
    return str()


  def encodeURI(self, _str, _bool, _int):
    return str()


  def firstInvalidSegment(self, _list):
    return str()


  def highBitmask(self, _char):
    return int()


  def highBitmask(self, _char, _char):
    return int()


  def highBitmask(self, _str):
    return int()


  def lowBitmask(self, _char):
    return int()


  def lowBitmask(self, _char, _char):
    return int()


  def lowBitmask(self, _str):
    return int()


  def appendEscaped(self, _java_lang_StringBuffer, _int):
    pass


  def cacheString(self, _str):
    pass


  def flushCachedString(self):
    pass


  def hasAbsolutePath(self):
    return bool()


  def hasAuthority(self):
    return bool()


  def hasDevice(self):
    return bool()


  def hasEmptyPath(self):
    return bool()


  def hasFragment(self):
    return bool()


  def hasOpaquePart(self):
    return bool()


  def hasPath(self):
    return bool()


  def hasQuery(self):
    return bool()


  def hasRelativePath(self):
    return bool()


  def hasTrailingPathSeparator(self):
    return bool()


  def isArchive(self):
    return bool()


  def isCurrentDocumentReference(self):
    return bool()


  def isEmpty(self):
    return bool()


  def isFile(self):
    return bool()


  def isHierarchical(self):
    return bool()


  def isPlatform(self):
    return bool()


  def isPlatformPlugin(self):
    return bool()


  def isPlatformResource(self):
    return bool()


  def isPrefix(self):
    return bool()


  def isRelative(self):
    return bool()


  def hashCode(self):
    return int()


  def segmentCount(self):
    return int()


  def authority(self):
    return str()


  def device(self):
    return str()


  def devicePath(self):
    return str()


  def fileExtension(self):
    return str()


  def fragment(self):
    return str()


  def host(self):
    return str()


  def lastSegment(self):
    return str()


  def opaquePart(self):
    return str()


  def path(self):
    return str()


  def port(self):
    return str()


  def query(self):
    return str()


  def scheme(self):
    return str()


  def segment(self, _int):
    return str()


  def toFileString(self):
    return str()


  def toPlatformString(self, _bool):
    return str()


  def userInfo(self):
    return str()


  def segments(self):
    return list()


  def segmentsList(self):
    return list()


  def appendFileExtension(self, _str):
    return org_eclipse_emf_common_util_URI()


  def appendFragment(self, _str):
    return org_eclipse_emf_common_util_URI()


  def appendQuery(self, _str):
    return org_eclipse_emf_common_util_URI()


  def appendSegment(self, _str):
    return org_eclipse_emf_common_util_URI()


  def appendSegments(self, _list):
    return org_eclipse_emf_common_util_URI()


  def deresolve(self, _org_eclipse_emf_common_util_URI):
    return org_eclipse_emf_common_util_URI()


  def deresolve(self, _org_eclipse_emf_common_util_URI, _bool, _bool, _bool):
    return org_eclipse_emf_common_util_URI()


  def replacePrefix(self, _org_eclipse_emf_common_util_URI, _org_eclipse_emf_common_util_URI):
    return org_eclipse_emf_common_util_URI()


  def resolve(self, _org_eclipse_emf_common_util_URI):
    return org_eclipse_emf_common_util_URI()


  def resolve(self, _org_eclipse_emf_common_util_URI, _bool):
    return org_eclipse_emf_common_util_URI()


  def trimFileExtension(self):
    return org_eclipse_emf_common_util_URI()


  def trimFragment(self):
    return org_eclipse_emf_common_util_URI()


  def trimQuery(self):
    return org_eclipse_emf_common_util_URI()


  def trimSegments(self, _int):
    return org_eclipse_emf_common_util_URI()


  def isArchiveScheme(self, _str):
    return bool()


  def validArchiveAuthority(self, _str):
    return bool()


  def validAuthority(self, _str):
    return bool()


  def validDevice(self, _str):
    return bool()


  def validFragment(self, _str):
    return bool()


  def validJarAuthority(self, _str):
    return bool()


  def validOpaquePart(self, _str):
    return bool()


  def validQuery(self, _str):
    return bool()


  def validScheme(self, _str):
    return bool()


  def validSegment(self, _str):
    return bool()


  def validSegments(self, _list):
    return bool()


  def decode(self, _str):
    return str()


  def encodeAuthority(self, _str, _bool):
    return str()


  def encodeFragment(self, _str, _bool):
    return str()


  def encodeOpaquePart(self, _str, _bool):
    return str()


  def encodeQuery(self, _str, _bool):
    return str()


  def encodeSegment(self, _str, _bool):
    return str()


  def createDeviceURI(self, _str):
    return org_eclipse_emf_common_util_URI()


  def createFileURI(self, _str):
    return org_eclipse_emf_common_util_URI()


  def createGenericURI(self, _str, _str, _str):
    return org_eclipse_emf_common_util_URI()


  def createHierarchicalURI(self, _str, _str, _str, _str, _str):
    return org_eclipse_emf_common_util_URI()


  def createHierarchicalURI(self, _str, _str, _str, _list, _str, _str):
    return org_eclipse_emf_common_util_URI()


  def createHierarchicalURI(self, _list, _str, _str):
    return org_eclipse_emf_common_util_URI()


  def createPlatformPluginURI(self, _str, _bool):
    return org_eclipse_emf_common_util_URI()


  def createPlatformResourceURI(self, _str):
    return org_eclipse_emf_common_util_URI()


  def createPlatformResourceURI(self, _str, _bool):
    return org_eclipse_emf_common_util_URI()


  def createURI(self, _str):
    return org_eclipse_emf_common_util_URI()


  def createURI(self, _str, _bool):
    return org_eclipse_emf_common_util_URI()


  def createURI(self, _str, _bool, _int):
    return org_eclipse_emf_common_util_URI()


  def createURIWithCache(self, _str):
    return org_eclipse_emf_common_util_URI()


class org_eclipse_emf_common_util_URI_URIPool(list):
  def newCachedToString(self, _org_eclipse_emf_common_util_URI, _str):
    return java_lang_ref_WeakReference()


  def intern(self, _bool, _bool, _str, _str, _str, _bool, _list, _str, _int):
    return org_eclipse_emf_common_util_URI()


  def intern(self, _bool, _int, _bool, _str, _str, _str, _bool, _list, _str):
    return org_eclipse_emf_common_util_URI()


  def intern(self, _str):
    return org_eclipse_emf_common_util_URI()


  def intern(self, _str, _str, _bool):
    return org_eclipse_emf_common_util_URI()


  def internFile(self, _str):
    return org_eclipse_emf_common_util_URI()


  def doCleanup(self):
    pass


  serialVersionUID = int
  '''
  '''

class org_eclipse_emf_common_util_WeakInterningHashSet(list):
  NULL_ENTRY = org_eclipse_emf_common_util_WeakInterningHashSet_Entry
  '''
  '''

  PRIME_CAPACITIES = array.array
  '''
  '''

  def rehash(self, _list):
    pass


  def doGrow(self, _int):
    pass


  def readObject(self, _java_io_ObjectInputStream):
    pass


  def writeObject(self, _java_io_ObjectOutputStream):
    pass


  def ensureCapacity(self):
    return bool()


  def equals(self, _object, _object):
    return bool()


  def removeEntry(self, _int, _org_eclipse_emf_common_util_WeakInterningHashSet_Entry):
    return bool()


  def newEntry(self, _object, _int):
    return org_eclipse_emf_common_util_WeakInterningHashSet_Entry()


  def hashCode(self, _object):
    return int()


  def asInstance(self, _object):
    return object()


  def getEntry(self, _int):
    return org_eclipse_emf_common_util_WeakInterningHashSet_Entry()


  def newExternalEntry(self, _object, _int):
    return org_eclipse_emf_common_util_WeakInterningHashSet_Entry()


  def newInternalEntry(self, _object, _int):
    return org_eclipse_emf_common_util_WeakInterningHashSet_Entry()


  def nullEntry(self):
    return org_eclipse_emf_common_util_WeakInterningHashSet_Entry()


  def newEntries(self, _int):
    return list()


  def index(self, _int, _int):
    return int()


  def addEntry(self, _int, _org_eclipse_emf_common_util_WeakInterningHashSet_Entry):
    pass


  def cleanup(self):
    pass


  def putEntry(self, _int, _org_eclipse_emf_common_util_WeakInterningHashSet_Entry):
    pass


  def removeEntry(self, _org_eclipse_emf_common_util_WeakInterningHashSet_Entry):
    pass


  def add(self, _object):
    return bool()


  def contains(self, _object):
    return bool()


  def remove(self, _object):
    return bool()


  def size(self):
    return int()


  def get(self, _object):
    return object()


  def intern(self, _object):
    return object()


  def iterator(self):
    return java_util_Iterator()


  def clear(self):
    pass


  def dump(self):
    pass


  def grow(self, _int):
    pass


  serialVersionUID = int
  '''
  '''

class org_eclipse_emf_common_util_WeakInterningHashSet_Entry(java_lang_ref_WeakReference):
  def init(self):
    self.nextEntry = self.getNextEntry()

  hashCode = int
  '''
  @ivar hashCode
  '''

  def doClear(self):
    pass


  def getNextEntry(self):
    return org_eclipse_emf_common_util_WeakInterningHashSet_Entry()


  def clear(self, _list):
    pass


  def toString(self):
    return str()


  def clear(self):
    pass


  next = org_eclipse_emf_common_util_WeakInterningHashSet_Entry
  '''
  @ivar next
  '''

class org_eclipse_emf_ecore_EAnnotation(org_eclipse_emf_ecore_EModelElement):
  def init(self):
    self.source = self.getSource()

    self.contents = self.getContents()

    self.references = self.getReferences()

    self.details = self.getDetails()

    self.eModelElement = self.getEModelElement()

  def getSource(self):
    return str()


  def getContents(self):
    return list()


  def getReferences(self):
    return list()


  def getDetails(self):
    return list()


  def getEModelElement(self):
    return org_eclipse_emf_ecore_EModelElement()


  def setEModelElement(self, _org_eclipse_emf_ecore_EModelElement):
    pass


  def setSource(self, _str):
    pass


class org_eclipse_emf_ecore_EAttribute(org_eclipse_emf_ecore_EStructuralFeature):
  def init(self):
    self.eAttributeType = self.getEAttributeType()

  def isID(self):
    return bool()


  def getEAttributeType(self):
    return org_eclipse_emf_ecore_EDataType()


  def setID(self, _bool):
    pass


class org_eclipse_emf_ecore_EClass(org_eclipse_emf_ecore_EClassifier):
  def init(self):
    self.featureCount = self.getFeatureCount()

    self.operationCount = self.getOperationCount()

    self.eAllAttributes = self.getEAllAttributes()

    self.eAllContainments = self.getEAllContainments()

    self.eAllGenericSuperTypes = self.getEAllGenericSuperTypes()

    self.eAllOperations = self.getEAllOperations()

    self.eAllReferences = self.getEAllReferences()

    self.eAllStructuralFeatures = self.getEAllStructuralFeatures()

    self.eAllSuperTypes = self.getEAllSuperTypes()

    self.eAttributes = self.getEAttributes()

    self.eGenericSuperTypes = self.getEGenericSuperTypes()

    self.eOperations = self.getEOperations()

    self.eReferences = self.getEReferences()

    self.eStructuralFeatures = self.getEStructuralFeatures()

    self.eSuperTypes = self.getESuperTypes()

    self.eIDAttribute = self.getEIDAttribute()

  def isAbstract(self):
    return bool()


  def isInterface(self):
    return bool()


  def isSuperTypeOf(self, _org_eclipse_emf_ecore_EClass):
    return bool()


  def getFeatureCount(self):
    return int()


  def getFeatureID(self, _org_eclipse_emf_ecore_EStructuralFeature):
    return int()


  def getOperationCount(self):
    return int()


  def getOperationID(self, _org_eclipse_emf_ecore_EOperation):
    return int()


  def getEAllAttributes(self):
    return list()


  def getEAllContainments(self):
    return list()


  def getEAllGenericSuperTypes(self):
    return list()


  def getEAllOperations(self):
    return list()


  def getEAllReferences(self):
    return list()


  def getEAllStructuralFeatures(self):
    return list()


  def getEAllSuperTypes(self):
    return list()


  def getEAttributes(self):
    return list()


  def getEGenericSuperTypes(self):
    return list()


  def getEOperations(self):
    return list()


  def getEReferences(self):
    return list()


  def getEStructuralFeatures(self):
    return list()


  def getESuperTypes(self):
    return list()


  def getEIDAttribute(self):
    return org_eclipse_emf_ecore_EAttribute()


  def getFeatureType(self, _org_eclipse_emf_ecore_EStructuralFeature):
    return org_eclipse_emf_ecore_EGenericType()


  def getEOperation(self, _int):
    return org_eclipse_emf_ecore_EOperation()


  def getOverride(self, _org_eclipse_emf_ecore_EOperation):
    return org_eclipse_emf_ecore_EOperation()


  def getEStructuralFeature(self, _int):
    return org_eclipse_emf_ecore_EStructuralFeature()


  def getEStructuralFeature(self, _str):
    return org_eclipse_emf_ecore_EStructuralFeature()


  def setAbstract(self, _bool):
    pass


  def setInterface(self, _bool):
    pass


class org_eclipse_emf_ecore_EClassifier(org_eclipse_emf_ecore_ENamedElement):
  def init(self):
    self.classifierID = self.getClassifierID()

    self.instanceClass = self.getInstanceClass()

    self.defaultValue = self.getDefaultValue()

    self.instanceClassName = self.getInstanceClassName()

    self.instanceTypeName = self.getInstanceTypeName()

    self.eTypeParameters = self.getETypeParameters()

    self.ePackage = self.getEPackage()

  def isInstance(self, _object):
    return bool()


  def getClassifierID(self):
    return int()


  def getInstanceClass(self):
    return java_lang_Class()


  def getDefaultValue(self):
    return object()


  def getInstanceClassName(self):
    return str()


  def getInstanceTypeName(self):
    return str()


  def getETypeParameters(self):
    return list()


  def getEPackage(self):
    return org_eclipse_emf_ecore_EPackage()


  def setInstanceClass(self, _java_lang_Class):
    pass


  def setInstanceClassName(self, _str):
    pass


  def setInstanceTypeName(self, _str):
    pass


class org_eclipse_emf_ecore_EDataType(org_eclipse_emf_ecore_EClassifier):
  class Internal(org_eclipse_emf_ecore_EDataType):
    def init(self):
      self.conversionDelegate = self.getConversionDelegate()

    class ConversionDelegate(object):
      class Factory(object):
        class Descriptor(object):
          def init(self):
            self.factory = self.getFactory()

          def getFactory(self):
            return org_eclipse_emf_ecore_EDataType.Internal.ConversionDelegate.Factory.Factory()


        class Registry(java_util_Map):
          INSTANCE = org_eclipse_emf_ecore_EDataType.Internal.ConversionDelegate.Factory.Registry
          '''
          '''

          class Impl(java_util_HashMap):
            def get(self, _object):
              return object()


            def getFactory(self, _str):
              return org_eclipse_emf_ecore_EDataType.Internal.ConversionDelegate.Factory.Registry.Factory()


            serialVersionUID = int
            '''
            '''

          def getFactory(self, _str):
            return org_eclipse_emf_ecore_EDataType.Internal.ConversionDelegate.Factory.Factory()


        def createConversionDelegate(self, _org_eclipse_emf_ecore_EDataType):
          return org_eclipse_emf_ecore_EDataType.Internal.ConversionDelegate.ConversionDelegate()


      def createFromString(self, _str):
        return object()


      def convertToString(self, _object):
        return str()


    def getConversionDelegate(self):
      return org_eclipse_emf_ecore_EDataType.ConversionDelegate()


    def setConversionDelegate(self, _org_eclipse_emf_ecore_EDataType_Internal_ConversionDelegate):
      pass


  def isSerializable(self):
    return bool()


  def setSerializable(self, _bool):
    pass


class org_eclipse_emf_ecore_EEnum(org_eclipse_emf_ecore_EDataType):
  def init(self):
    self.eLiterals = self.getELiterals()

  def getELiterals(self):
    return list()


  def getEEnumLiteral(self, _int):
    return org_eclipse_emf_ecore_EEnumLiteral()


  def getEEnumLiteral(self, _str):
    return org_eclipse_emf_ecore_EEnumLiteral()


  def getEEnumLiteralByLiteral(self, _str):
    return org_eclipse_emf_ecore_EEnumLiteral()


class org_eclipse_emf_ecore_EEnumLiteral(org_eclipse_emf_ecore_ENamedElement):
  def init(self):
    self.value = self.getValue()

    self.literal = self.getLiteral()

    self.instance = self.getInstance()

    self.eEnum = self.getEEnum()

  def getValue(self):
    return int()


  def getLiteral(self):
    return str()


  def getInstance(self):
    return org_eclipse_emf_common_util_Enumerator()


  def getEEnum(self):
    return org_eclipse_emf_ecore_EEnum()


  def setInstance(self, _org_eclipse_emf_common_util_Enumerator):
    pass


  def setLiteral(self, _str):
    pass


  def setValue(self, _int):
    pass


class org_eclipse_emf_ecore_EFactory(org_eclipse_emf_ecore_EModelElement):
  def init(self):
    self.ePackage = self.getEPackage()

  def createFromString(self, _org_eclipse_emf_ecore_EDataType, _str):
    return object()


  def convertToString(self, _org_eclipse_emf_ecore_EDataType, _object):
    return str()


  def create(self, _org_eclipse_emf_ecore_EClass):
    return org_eclipse_emf_ecore_EObject()


  def getEPackage(self):
    return org_eclipse_emf_ecore_EPackage()


  def setEPackage(self, _org_eclipse_emf_ecore_EPackage):
    pass


class org_eclipse_emf_ecore_EGenericType(org_eclipse_emf_ecore_EObject):
  def init(self):
    self.eTypeArguments = self.getETypeArguments()

    self.eClassifier = self.getEClassifier()

    self.eRawType = self.getERawType()

    self.eLowerBound = self.getELowerBound()

    self.eUpperBound = self.getEUpperBound()

    self.eTypeParameter = self.getETypeParameter()

  def isInstance(self, _object):
    return bool()


  def getETypeArguments(self):
    return list()


  def getEClassifier(self):
    return org_eclipse_emf_ecore_EClassifier()


  def getERawType(self):
    return org_eclipse_emf_ecore_EClassifier()


  def getELowerBound(self):
    return org_eclipse_emf_ecore_EGenericType()


  def getEUpperBound(self):
    return org_eclipse_emf_ecore_EGenericType()


  def getETypeParameter(self):
    return org_eclipse_emf_ecore_ETypeParameter()


  def setEClassifier(self, _org_eclipse_emf_ecore_EClassifier):
    pass


  def setELowerBound(self, _org_eclipse_emf_ecore_EGenericType):
    pass


  def setETypeParameter(self, _org_eclipse_emf_ecore_ETypeParameter):
    pass


  def setEUpperBound(self, _org_eclipse_emf_ecore_EGenericType):
    pass


class org_eclipse_emf_ecore_EModelElement(org_eclipse_emf_ecore_EObject):
  def init(self):
    self.eAnnotations = self.getEAnnotations()

  def getEAnnotations(self):
    return list()


  def getEAnnotation(self, _str):
    return org_eclipse_emf_ecore_EAnnotation()


class org_eclipse_emf_ecore_ENamedElement(org_eclipse_emf_ecore_EModelElement):
  def init(self):
    self.name = self.getName()

  def getName(self):
    return str()


  def setName(self, _str):
    pass


class org_eclipse_emf_ecore_EObject(org_eclipse_emf_common_notify_Notifier):
  def eIsProxy(self):
    return bool()


  def eIsSet(self, _org_eclipse_emf_ecore_EStructuralFeature):
    return bool()


  def eGet(self, _org_eclipse_emf_ecore_EStructuralFeature):
    return object()


  def eGet(self, _org_eclipse_emf_ecore_EStructuralFeature, _bool):
    return object()


  def eInvoke(self, _org_eclipse_emf_ecore_EOperation, _list):
    return object()


  def eContents(self):
    return list()


  def eCrossReferences(self):
    return list()


  def eAllContents(self):
    return org_eclipse_emf_common_util_TreeIterator()


  def eClass(self):
    return org_eclipse_emf_ecore_EClass()


  def eContainer(self):
    return org_eclipse_emf_ecore_EObject()


  def eContainmentFeature(self):
    return org_eclipse_emf_ecore_EReference()


  def eContainingFeature(self):
    return org_eclipse_emf_ecore_EStructuralFeature()


  def eResource(self):
    return org_eclipse_emf_ecore_resource_Resource()


  def eSet(self, _org_eclipse_emf_ecore_EStructuralFeature, _object):
    pass


  def eUnset(self, _org_eclipse_emf_ecore_EStructuralFeature):
    pass


class org_eclipse_emf_ecore_EOperation(org_eclipse_emf_ecore_ETypedElement):
  def init(self):
    self.operationID = self.getOperationID()

    self.eExceptions = self.getEExceptions()

    self.eGenericExceptions = self.getEGenericExceptions()

    self.eParameters = self.getEParameters()

    self.eTypeParameters = self.getETypeParameters()

    self.eContainingClass = self.getEContainingClass()

  class Internal(org_eclipse_emf_ecore_EOperation):
    def init(self):
      self.invocationDelegate = self.getInvocationDelegate()

    class InvocationDelegate(object):
      class Factory(object):
        class Descriptor(object):
          def init(self):
            self.factory = self.getFactory()

          def getFactory(self):
            return org_eclipse_emf_ecore_EOperation.Internal.InvocationDelegate.Factory.Factory()


        class Registry(java_util_Map):
          INSTANCE = org_eclipse_emf_ecore_EOperation.Internal.InvocationDelegate.Factory.Registry
          '''
          '''

          class Impl(java_util_HashMap):
            def get(self, _object):
              return object()


            def getFactory(self, _str):
              return org_eclipse_emf_ecore_EOperation.Internal.InvocationDelegate.Factory.Registry.Factory()


            serialVersionUID = int
            '''
            '''

          def getFactory(self, _str):
            return org_eclipse_emf_ecore_EOperation.Internal.InvocationDelegate.Factory.Factory()


        def createInvocationDelegate(self, _org_eclipse_emf_ecore_EOperation):
          return org_eclipse_emf_ecore_EOperation.Internal.InvocationDelegate.InvocationDelegate()


      def dynamicInvoke(self, _org_eclipse_emf_ecore_InternalEObject, _list):
        return object()


    def getInvocationDelegate(self):
      return org_eclipse_emf_ecore_EOperation.InvocationDelegate()


    def setInvocationDelegate(self, _org_eclipse_emf_ecore_EOperation_Internal_InvocationDelegate):
      pass


  def isOverrideOf(self, _org_eclipse_emf_ecore_EOperation):
    return bool()


  def getOperationID(self):
    return int()


  def getEExceptions(self):
    return list()


  def getEGenericExceptions(self):
    return list()


  def getEParameters(self):
    return list()


  def getETypeParameters(self):
    return list()


  def getEContainingClass(self):
    return org_eclipse_emf_ecore_EClass()


class org_eclipse_emf_ecore_EPackage(org_eclipse_emf_ecore_ENamedElement):
  def init(self):
    self.nsPrefix = self.getNsPrefix()

    self.nsURI = self.getNsURI()

    self.eClassifiers = self.getEClassifiers()

    self.eSubpackages = self.getESubpackages()

    self.eFactoryInstance = self.getEFactoryInstance()

    self.eSuperPackage = self.getESuperPackage()

  class Descriptor(object):
    def init(self):
      self.eFactory = self.getEFactory()

      self.ePackage = self.getEPackage()

    def getEFactory(self):
      return org_eclipse_emf_ecore_EFactory()


    def getEPackage(self):
      return org_eclipse_emf_ecore_EPackage()


  class Registry(java_util_Map):
    INSTANCE = org_eclipse_emf_ecore_EPackage.Registry
    '''
    '''

    def getEFactory(self, _str):
      return org_eclipse_emf_ecore_EFactory()


    def getEPackage(self, _str):
      return org_eclipse_emf_ecore_EPackage()


  def getNsPrefix(self):
    return str()


  def getNsURI(self):
    return str()


  def getEClassifiers(self):
    return list()


  def getESubpackages(self):
    return list()


  def getEClassifier(self, _str):
    return org_eclipse_emf_ecore_EClassifier()


  def getEFactoryInstance(self):
    return org_eclipse_emf_ecore_EFactory()


  def getESuperPackage(self):
    return org_eclipse_emf_ecore_EPackage()


  def setEFactoryInstance(self, _org_eclipse_emf_ecore_EFactory):
    pass


  def setNsPrefix(self, _str):
    pass


  def setNsURI(self, _str):
    pass


class org_eclipse_emf_ecore_EParameter(org_eclipse_emf_ecore_ETypedElement):
  def init(self):
    self.eOperation = self.getEOperation()

  def getEOperation(self):
    return org_eclipse_emf_ecore_EOperation()


class org_eclipse_emf_ecore_EReference(org_eclipse_emf_ecore_EStructuralFeature):
  def init(self):
    self.eKeys = self.getEKeys()

    self.eReferenceType = self.getEReferenceType()

    self.eOpposite = self.getEOpposite()

  def isContainer(self):
    return bool()


  def isContainment(self):
    return bool()


  def isResolveProxies(self):
    return bool()


  def getEKeys(self):
    return list()


  def getEReferenceType(self):
    return org_eclipse_emf_ecore_EClass()


  def getEOpposite(self):
    return org_eclipse_emf_ecore_EReference()


  def setContainment(self, _bool):
    pass


  def setEOpposite(self, _org_eclipse_emf_ecore_EReference):
    pass


  def setResolveProxies(self, _bool):
    pass


class org_eclipse_emf_ecore_EStructuralFeature(org_eclipse_emf_ecore_ETypedElement):
  def init(self):
    self.featureID = self.getFeatureID()

    self.containerClass = self.getContainerClass()

    self.defaultValue = self.getDefaultValue()

    self.defaultValueLiteral = self.getDefaultValueLiteral()

    self.eContainingClass = self.getEContainingClass()

  class Internal(org_eclipse_emf_ecore_EStructuralFeature):
    def init(self):
      self.eOpposite = self.getEOpposite()

      self.settingDelegate = self.getSettingDelegate()

      self.featureMapEntryPrototype = self.getFeatureMapEntryPrototype()

    class DynamicValueHolder(object):
      NIL = object
      '''
      '''

      def dynamicGet(self, _int):
        return object()


      def dynamicSet(self, _int, _object):
        pass


      def dynamicUnset(self, _int):
        pass


    class SettingDelegate(object):
      class Factory(object):
        class Descriptor(object):
          def init(self):
            self.factory = self.getFactory()

          def getFactory(self):
            return org_eclipse_emf_ecore_EStructuralFeature.Internal.SettingDelegate.Factory.Factory()


        class Registry(java_util_Map):
          INSTANCE = org_eclipse_emf_ecore_EStructuralFeature.Internal.SettingDelegate.Factory.Registry
          '''
          '''

          class Impl(java_util_HashMap):
            class SimpleEntry(object):
              def init(self):
                self.key = self.getKey()

                self.value = self.getValue()

              def equals(self, _object):
                return bool()


              def hashCode(self):
                return int()


              def getKey(self):
                return object()


              def getValue(self):
                return object()


              def setValue(self, _object):
                return object()


              def toString(self):
                return str()


              serialVersionUID = int
              '''
              '''

            class SimpleImmutableEntry(object):
              def init(self):
                self.key = self.getKey()

                self.value = self.getValue()

              def equals(self, _object):
                return bool()


              def hashCode(self):
                return int()


              def getKey(self):
                return object()


              def getValue(self):
                return object()


              def setValue(self, _object):
                return object()


              def toString(self):
                return str()


              serialVersionUID = int
              '''
              '''

            def get(self, _object):
              return object()


            def getFactory(self, _str):
              return org_eclipse_emf_ecore_EStructuralFeature.Internal.SettingDelegate.Factory.Registry.Factory()


            serialVersionUID = int
            '''
            '''

          def getFactory(self, _str):
            return org_eclipse_emf_ecore_EStructuralFeature.Internal.SettingDelegate.Factory.Factory()


        def createSettingDelegate(self, _org_eclipse_emf_ecore_EStructuralFeature):
          return org_eclipse_emf_ecore_EStructuralFeature.Internal.SettingDelegate.SettingDelegate()


      def dynamicIsSet(self, _org_eclipse_emf_ecore_InternalEObject, _org_eclipse_emf_ecore_EStructuralFeature_Internal_DynamicValueHolder, _int):
        return bool()


      def dynamicGet(self, _org_eclipse_emf_ecore_InternalEObject, _org_eclipse_emf_ecore_EStructuralFeature_Internal_DynamicValueHolder, _int, _bool, _bool):
        return object()


      def dynamicInverseAdd(self, _org_eclipse_emf_ecore_InternalEObject, _org_eclipse_emf_ecore_EStructuralFeature_Internal_DynamicValueHolder, _int, _org_eclipse_emf_ecore_InternalEObject, _org_eclipse_emf_common_notify_NotificationChain):
        return org_eclipse_emf_common_notify_NotificationChain()


      def dynamicInverseRemove(self, _org_eclipse_emf_ecore_InternalEObject, _org_eclipse_emf_ecore_EStructuralFeature_Internal_DynamicValueHolder, _int, _org_eclipse_emf_ecore_InternalEObject, _org_eclipse_emf_common_notify_NotificationChain):
        return org_eclipse_emf_common_notify_NotificationChain()


      def dynamicSetting(self, _org_eclipse_emf_ecore_InternalEObject, _org_eclipse_emf_ecore_EStructuralFeature_Internal_DynamicValueHolder, _int):
        return org_eclipse_emf_ecore_EStructuralFeature.Internal.Setting()


      def dynamicSet(self, _org_eclipse_emf_ecore_InternalEObject, _org_eclipse_emf_ecore_EStructuralFeature_Internal_DynamicValueHolder, _int, _object):
        pass


      def dynamicUnset(self, _org_eclipse_emf_ecore_InternalEObject, _org_eclipse_emf_ecore_EStructuralFeature_Internal_DynamicValueHolder, _int):
        pass


    def isContainer(self):
      return bool()


    def isContainment(self):
      return bool()


    def isFeatureMap(self):
      return bool()


    def isID(self):
      return bool()


    def isResolveProxies(self):
      return bool()


    def getEOpposite(self):
      return org_eclipse_emf_ecore_EReference()


    def getSettingDelegate(self):
      return org_eclipse_emf_ecore_EStructuralFeature.SettingDelegate()


    def getFeatureMapEntryPrototype(self):
      return org_eclipse_emf_ecore_util_FeatureMap_Entry_Internal()


    def setFeatureMapEntryPrototype(self, _org_eclipse_emf_ecore_util_FeatureMap_Entry_Internal):
      pass


    def setSettingDelegate(self, _org_eclipse_emf_ecore_EStructuralFeature_Internal_SettingDelegate):
      pass


  class Setting(object):
    def init(self):
      self.eObject = self.getEObject()

      self.eStructuralFeature = self.getEStructuralFeature()

    def isSet(self):
      return bool()


    def get(self, _bool):
      return object()


    def getEObject(self):
      return org_eclipse_emf_ecore_EObject()


    def getEStructuralFeature(self):
      return org_eclipse_emf_ecore_EStructuralFeature()


    def set(self, _object):
      pass


    def unset(self):
      pass


  def isChangeable(self):
    return bool()


  def isDerived(self):
    return bool()


  def isTransient(self):
    return bool()


  def isUnsettable(self):
    return bool()


  def isVolatile(self):
    return bool()


  def getFeatureID(self):
    return int()


  def getContainerClass(self):
    return java_lang_Class()


  def getDefaultValue(self):
    return object()


  def getDefaultValueLiteral(self):
    return str()


  def getEContainingClass(self):
    return org_eclipse_emf_ecore_EClass()


  def setChangeable(self, _bool):
    pass


  def setDefaultValue(self, _object):
    pass


  def setDefaultValueLiteral(self, _str):
    pass


  def setDerived(self, _bool):
    pass


  def setTransient(self, _bool):
    pass


  def setUnsettable(self, _bool):
    pass


  def setVolatile(self, _bool):
    pass


class org_eclipse_emf_ecore_ETypeParameter(org_eclipse_emf_ecore_ENamedElement):
  def init(self):
    self.eBounds = self.getEBounds()

  def getEBounds(self):
    return list()


class org_eclipse_emf_ecore_ETypedElement(org_eclipse_emf_ecore_ENamedElement):
  def init(self):
    self.lowerBound = self.getLowerBound()

    self.upperBound = self.getUpperBound()

    self.eType = self.getEType()

    self.eGenericType = self.getEGenericType()

  UNBOUNDED_MULTIPLICITY = int
  '''
  '''

  UNSPECIFIED_MULTIPLICITY = int
  '''
  '''

  def isMany(self):
    return bool()


  def isOrdered(self):
    return bool()


  def isRequired(self):
    return bool()


  def isUnique(self):
    return bool()


  def getLowerBound(self):
    return int()


  def getUpperBound(self):
    return int()


  def getEType(self):
    return org_eclipse_emf_ecore_EClassifier()


  def getEGenericType(self):
    return org_eclipse_emf_ecore_EGenericType()


  def setEGenericType(self, _org_eclipse_emf_ecore_EGenericType):
    pass


  def setEType(self, _org_eclipse_emf_ecore_EClassifier):
    pass


  def setLowerBound(self, _int):
    pass


  def setOrdered(self, _bool):
    pass


  def setUnique(self, _bool):
    pass


  def setUpperBound(self, _int):
    pass


class org_eclipse_emf_ecore_InternalEObject(org_eclipse_emf_ecore_EObject):
  EOPPOSITE_FEATURE_BASE = int
  '''
  '''

  class EStore(object):
    NO_INDEX = int
    '''
    '''

    def contains(self, _org_eclipse_emf_ecore_InternalEObject, _org_eclipse_emf_ecore_EStructuralFeature, _object):
      return bool()


    def isEmpty(self, _org_eclipse_emf_ecore_InternalEObject, _org_eclipse_emf_ecore_EStructuralFeature):
      return bool()


    def isSet(self, _org_eclipse_emf_ecore_InternalEObject, _org_eclipse_emf_ecore_EStructuralFeature):
      return bool()


    def hashCode(self, _org_eclipse_emf_ecore_InternalEObject, _org_eclipse_emf_ecore_EStructuralFeature):
      return int()


    def indexOf(self, _org_eclipse_emf_ecore_InternalEObject, _org_eclipse_emf_ecore_EStructuralFeature, _object):
      return int()


    def lastIndexOf(self, _org_eclipse_emf_ecore_InternalEObject, _org_eclipse_emf_ecore_EStructuralFeature, _object):
      return int()


    def size(self, _org_eclipse_emf_ecore_InternalEObject, _org_eclipse_emf_ecore_EStructuralFeature):
      return int()


    def get(self, _org_eclipse_emf_ecore_InternalEObject, _org_eclipse_emf_ecore_EStructuralFeature, _int):
      return object()


    def move(self, _org_eclipse_emf_ecore_InternalEObject, _org_eclipse_emf_ecore_EStructuralFeature, _int, _int):
      return object()


    def remove(self, _org_eclipse_emf_ecore_InternalEObject, _org_eclipse_emf_ecore_EStructuralFeature, _int):
      return object()


    def set(self, _org_eclipse_emf_ecore_InternalEObject, _org_eclipse_emf_ecore_EStructuralFeature, _int, _object):
      return object()


    def toArray(self, _org_eclipse_emf_ecore_InternalEObject, _org_eclipse_emf_ecore_EStructuralFeature):
      return list()


    def toArray(self, _org_eclipse_emf_ecore_InternalEObject, _org_eclipse_emf_ecore_EStructuralFeature, _list):
      return list()


    def create(self, _org_eclipse_emf_ecore_EClass):
      return org_eclipse_emf_ecore_EObject()


    def getContainingFeature(self, _org_eclipse_emf_ecore_InternalEObject):
      return org_eclipse_emf_ecore_EStructuralFeature()


    def getContainer(self, _org_eclipse_emf_ecore_InternalEObject):
      return org_eclipse_emf_ecore_InternalEObject()


    def add(self, _org_eclipse_emf_ecore_InternalEObject, _org_eclipse_emf_ecore_EStructuralFeature, _int, _object):
      pass


    def clear(self, _org_eclipse_emf_ecore_InternalEObject, _org_eclipse_emf_ecore_EStructuralFeature):
      pass


    def unset(self, _org_eclipse_emf_ecore_InternalEObject, _org_eclipse_emf_ecore_EStructuralFeature):
      pass


  def eIsSet(self, _int):
    return bool()


  def eNotificationRequired(self):
    return bool()


  def eBaseStructuralFeatureID(self, _int, _java_lang_Class):
    return int()


  def eContainerFeatureID(self):
    return int()


  def eDerivedOperationID(self, _int, _java_lang_Class):
    return int()


  def eDerivedStructuralFeatureID(self, _int, _java_lang_Class):
    return int()


  def eGet(self, _int, _bool, _bool):
    return object()


  def eGet(self, _org_eclipse_emf_ecore_EStructuralFeature, _bool, _bool):
    return object()


  def eInvoke(self, _int, _list):
    return object()


  def eURIFragmentSegment(self, _org_eclipse_emf_ecore_EStructuralFeature, _org_eclipse_emf_ecore_EObject):
    return str()


  def eBasicRemoveFromContainer(self, _org_eclipse_emf_common_notify_NotificationChain):
    return org_eclipse_emf_common_notify_NotificationChain()


  def eBasicSetContainer(self, _org_eclipse_emf_ecore_InternalEObject, _int, _org_eclipse_emf_common_notify_NotificationChain):
    return org_eclipse_emf_common_notify_NotificationChain()


  def eInverseAdd(self, _org_eclipse_emf_ecore_InternalEObject, _int, _java_lang_Class, _org_eclipse_emf_common_notify_NotificationChain):
    return org_eclipse_emf_common_notify_NotificationChain()


  def eInverseRemove(self, _org_eclipse_emf_ecore_InternalEObject, _int, _java_lang_Class, _org_eclipse_emf_common_notify_NotificationChain):
    return org_eclipse_emf_common_notify_NotificationChain()


  def eSetResource(self, _org_eclipse_emf_ecore_resource_Resource_Internal, _org_eclipse_emf_common_notify_NotificationChain):
    return org_eclipse_emf_common_notify_NotificationChain()


  def eProxyURI(self):
    return org_eclipse_emf_common_util_URI()


  def eObjectForURIFragmentSegment(self, _str):
    return org_eclipse_emf_ecore_EObject()


  def eResolveProxy(self, _org_eclipse_emf_ecore_InternalEObject):
    return org_eclipse_emf_ecore_EObject()


  def eSetting(self, _org_eclipse_emf_ecore_EStructuralFeature):
    return org_eclipse_emf_ecore_EStructuralFeature_Setting()


  def eInternalContainer(self):
    return org_eclipse_emf_ecore_InternalEObject()


  def eStore(self):
    return org_eclipse_emf_ecore_InternalEObject.EStore()


  def eDirectResource(self):
    return org_eclipse_emf_ecore_resource_Resource_Internal()


  def eInternalResource(self):
    return org_eclipse_emf_ecore_resource_Resource_Internal()


  def eSet(self, _int, _object):
    pass


  def eSetClass(self, _org_eclipse_emf_ecore_EClass):
    pass


  def eSetProxyURI(self, _org_eclipse_emf_common_util_URI):
    pass


  def eSetStore(self, _org_eclipse_emf_ecore_InternalEObject_EStore):
    pass


  def eUnset(self, _int):
    pass


class org_eclipse_emf_ecore_resource_ContentHandler(object):
  BYTE_ORDER_MARK_PROPERTY = str
  '''
  '''

  CHARSET_PROPERTY = str
  '''
  '''

  CONTENT_TYPE_PROPERTY = str
  '''
  '''

  INVALID_CONTENT_DESCRIPTION = java_util_Map
  '''
  '''

  LINE_DELIMITER_PROPERTY = str
  '''
  '''

  OPTION_REQUESTED_PROPERTIES = str
  '''
  '''

  UNSPECIFIED_CONTENT_TYPE = str
  '''
  '''

  VALIDITY_PROPERTY = str
  '''
  '''

  class ByteOrderMark(java_lang_Enum):
    UTF_16BE = org_eclipse_emf_ecore_resource_ContentHandler.ByteOrderMark
    '''
    '''

    UTF_16BE_BYTES = array.array
    '''
    '''

    UTF_16LE = org_eclipse_emf_ecore_resource_ContentHandler.ByteOrderMark
    '''
    '''

    UTF_16LE_BYTES = array.array
    '''
    '''

    UTF_8 = org_eclipse_emf_ecore_resource_ContentHandler.ByteOrderMark
    '''
    '''

    UTF_8_BYTES = array.array
    '''
    '''

    def bytes(self):
      return array.array()


    def read(self, _java_io_InputStream):
      return org_eclipse_emf_ecore_resource_ContentHandler.ByteOrderMark()


    def valueOf(self, _str):
      return org_eclipse_emf_ecore_resource_ContentHandler.ByteOrderMark()


    def values(self):
      return list()


  class Registry(java_util_SortedMap):
    HIGH_PRIORITY = int
    '''
    '''

    INSTANCE = org_eclipse_emf_ecore_resource_ContentHandler.Registry
    '''
    '''

    LOW_PRIORITY = int
    '''
    '''

    NORMAL_PRIORITY = int
    '''
    '''

    VERY_HIGH_PRIORITY = int
    '''
    '''

    VERY_LOW_PRIORITY = int
    '''
    '''

    def contentHandlers(self):
      return list()


    def put(self, _int, _org_eclipse_emf_ecore_resource_ContentHandler):
      pass


  class Validity(java_lang_Enum):
    INDETERMINATE = org_eclipse_emf_ecore_resource_ContentHandler.Validity
    '''
    '''

    INVALID = org_eclipse_emf_ecore_resource_ContentHandler.Validity
    '''
    '''

    VALID = org_eclipse_emf_ecore_resource_ContentHandler.Validity
    '''
    '''

    def valueOf(self, _str):
      return org_eclipse_emf_ecore_resource_ContentHandler.Validity()


    def values(self):
      return list()


  def canHandle(self, _org_eclipse_emf_common_util_URI):
    return bool()


  def contentDescription(self, _org_eclipse_emf_common_util_URI, _java_io_InputStream, _java_util_Map, _java_util_Map):
    return java_util_Map()


class org_eclipse_emf_ecore_resource_Resource(org_eclipse_emf_common_notify_Notifier):
  def init(self):
    self.timeStamp = self.getTimeStamp()

    self.contents = self.getContents()

    self.errors = self.getErrors()

    self.warnings = self.getWarnings()

    self.allContents = self.getAllContents()

    self.uRI = self.getURI()

    self.resourceSet = self.getResourceSet()

  OPTION_CIPHER = str
  '''
  '''

  OPTION_LINE_DELIMITER = str
  '''
  '''

  OPTION_LINE_DELIMITER_UNSPECIFIED = str
  '''
  '''

  OPTION_SAVE_ONLY_IF_CHANGED = str
  '''
  '''

  OPTION_SAVE_ONLY_IF_CHANGED_FILE_BUFFER = str
  '''
  '''

  OPTION_SAVE_ONLY_IF_CHANGED_MEMORY_BUFFER = str
  '''
  '''

  OPTION_ZIP = str
  '''
  '''

  RESOURCE__CONTENTS = int
  '''
  '''

  RESOURCE__ERRORS = int
  '''
  '''

  RESOURCE__IS_LOADED = int
  '''
  '''

  RESOURCE__IS_MODIFIED = int
  '''
  '''

  RESOURCE__IS_TRACKING_MODIFICATION = int
  '''
  '''

  RESOURCE__RESOURCE_SET = int
  '''
  '''

  RESOURCE__TIME_STAMP = int
  '''
  '''

  RESOURCE__URI = int
  '''
  '''

  RESOURCE__WARNINGS = int
  '''
  '''

  class Diagnostic(object):
    def init(self):
      self.column = self.getColumn()

      self.line = self.getLine()

      self.location = self.getLocation()

      self.message = self.getMessage()

    def getColumn(self):
      return int()


    def getLine(self):
      return int()


    def getLocation(self):
      return str()


    def getMessage(self):
      return str()


  class Factory(object):
    class Descriptor(object):
      def createFactory(self):
        return org_eclipse_emf_ecore_resource_Resource.Factory.Factory()


    class Registry(object):
      def init(self):
        self.contentTypeToFactoryMap = self.getContentTypeToFactoryMap()

        self.extensionToFactoryMap = self.getExtensionToFactoryMap()

        self.protocolToFactoryMap = self.getProtocolToFactoryMap()

      DEFAULT_CONTENT_TYPE_IDENTIFIER = str
      '''
      '''

      DEFAULT_EXTENSION = str
      '''
      '''

      INSTANCE = org_eclipse_emf_ecore_resource_Resource.Factory.Registry
      '''
      '''

      def getContentTypeToFactoryMap(self):
        return java_util_Map()


      def getExtensionToFactoryMap(self):
        return java_util_Map()


      def getProtocolToFactoryMap(self):
        return java_util_Map()


      def getFactory(self, _org_eclipse_emf_common_util_URI):
        return org_eclipse_emf_ecore_resource_Resource.Factory.Factory()


      def getFactory(self, _org_eclipse_emf_common_util_URI, _str):
        return org_eclipse_emf_ecore_resource_Resource.Factory.Factory()


    def createResource(self, _org_eclipse_emf_common_util_URI):
      return org_eclipse_emf_ecore_resource_Resource()


  class IOWrappedException(java_io_IOException):
    def init(self):
      self.wrappedException = self.getWrappedException()

    def getWrappedException(self):
      return java_lang_Exception()


    serialVersionUID = int
    '''
    '''

  class Internal(org_eclipse_emf_ecore_resource_Resource):
    def isLoading(self):
      return bool()


    def basicSetResourceSet(self, _org_eclipse_emf_ecore_resource_ResourceSet, _org_eclipse_emf_common_notify_NotificationChain):
      return org_eclipse_emf_common_notify_NotificationChain()


    def attached(self, _org_eclipse_emf_ecore_EObject):
      pass


    def detached(self, _org_eclipse_emf_ecore_EObject):
      pass


  def isLoaded(self):
    return bool()


  def isModified(self):
    return bool()


  def isTrackingModification(self):
    return bool()


  def getURIFragment(self, _org_eclipse_emf_ecore_EObject):
    return str()


  def getTimeStamp(self):
    return int()


  def getContents(self):
    return list()


  def getErrors(self):
    return list()


  def getWarnings(self):
    return list()


  def getAllContents(self):
    return org_eclipse_emf_common_util_TreeIterator()


  def getURI(self):
    return org_eclipse_emf_common_util_URI()


  def getEObject(self, _str):
    return org_eclipse_emf_ecore_EObject()


  def getResourceSet(self):
    return org_eclipse_emf_ecore_resource_ResourceSet()


  def delete(self, _java_util_Map):
    pass


  def load(self, _java_io_InputStream, _java_util_Map):
    pass


  def load(self, _java_util_Map):
    pass


  def save(self, _java_io_OutputStream, _java_util_Map):
    pass


  def save(self, _java_util_Map):
    pass


  def setModified(self, _bool):
    pass


  def setTimeStamp(self, _int):
    pass


  def setTrackingModification(self, _bool):
    pass


  def setURI(self, _org_eclipse_emf_common_util_URI):
    pass


  def unload(self):
    pass


class org_eclipse_emf_ecore_resource_ResourceSet(org_eclipse_emf_common_notify_Notifier):
  def init(self):
    self.loadOptions = self.getLoadOptions()

    self.adapterFactories = self.getAdapterFactories()

    self.resources = self.getResources()

    self.allContents = self.getAllContents()

    self.packageRegistry = self.getPackageRegistry()

    self.resourceFactoryRegistry = self.getResourceFactoryRegistry()

    self.uRIConverter = self.getURIConverter()

  RESOURCE_SET__RESOURCES = int
  '''
  '''

  def getLoadOptions(self):
    return java_util_Map()


  def getAdapterFactories(self):
    return list()


  def getResources(self):
    return list()


  def getAllContents(self):
    return org_eclipse_emf_common_util_TreeIterator()


  def getEObject(self, _org_eclipse_emf_common_util_URI, _bool):
    return org_eclipse_emf_ecore_EObject()


  def getPackageRegistry(self):
    return org_eclipse_emf_ecore_EPackage_Registry()


  def createResource(self, _org_eclipse_emf_common_util_URI):
    return org_eclipse_emf_ecore_resource_Resource()


  def createResource(self, _org_eclipse_emf_common_util_URI, _str):
    return org_eclipse_emf_ecore_resource_Resource()


  def getResource(self, _org_eclipse_emf_common_util_URI, _bool):
    return org_eclipse_emf_ecore_resource_Resource()


  def getResourceFactoryRegistry(self):
    return org_eclipse_emf_ecore_resource_Resource_Factory_Registry()


  def getURIConverter(self):
    return org_eclipse_emf_ecore_resource_URIConverter()


  def setPackageRegistry(self, _org_eclipse_emf_ecore_EPackage_Registry):
    pass


  def setResourceFactoryRegistry(self, _org_eclipse_emf_ecore_resource_Resource_Factory_Registry):
    pass


  def setURIConverter(self, _org_eclipse_emf_ecore_resource_URIConverter):
    pass


class org_eclipse_emf_ecore_resource_URIConverter(object):
  def init(self):
    self.uRIMap = self.getURIMap()

    self.contentHandlers = self.getContentHandlers()

    self.uRIHandlers = self.getURIHandlers()

  ATTRIBUTE_ARCHIVE = str
  '''
  '''

  ATTRIBUTE_DIRECTORY = str
  '''
  '''

  ATTRIBUTE_EXECUTABLE = str
  '''
  '''

  ATTRIBUTE_HIDDEN = str
  '''
  '''

  ATTRIBUTE_LENGTH = str
  '''
  '''

  ATTRIBUTE_READ_ONLY = str
  '''
  '''

  ATTRIBUTE_TIME_STAMP = str
  '''
  '''

  INSTANCE = org_eclipse_emf_ecore_resource_URIConverter
  '''
  '''

  NULL_TIME_STAMP = int
  '''
  '''

  OPTION_REQUESTED_ATTRIBUTES = str
  '''
  '''

  OPTION_RESPONSE = str
  '''
  '''

  OPTION_TIMEOUT = str
  '''
  '''

  OPTION_URI_CONVERTER = str
  '''
  '''

  RESPONSE_TIME_STAMP_PROPERTY = str
  '''
  '''

  RESPONSE_URI = str
  '''
  '''

  URI_MAP = java_util_Map
  '''
  '''

  class Cipher(object):
    def decrypt(self, _java_io_InputStream):
      return java_io_InputStream()


    def encrypt(self, _java_io_OutputStream):
      return java_io_OutputStream()


    def finish(self, _java_io_InputStream):
      pass


    def finish(self, _java_io_OutputStream):
      pass


  class Loadable(object):
    def loadResource(self, _org_eclipse_emf_ecore_resource_Resource):
      pass


  class Readable(object):
    def init(self):
      self.encoding = self.getEncoding()

    def asReader(self):
      return java_io_Reader()


    def getEncoding(self):
      return str()


  class ReadableInputStream(java_io_InputStream):
    def init(self):
      self.encoding = self.getEncoding()

    XML_HEADER = java_util_regex_Pattern
    '''
    '''

    def read(self):
      return int()


    def asReader(self):
      return java_io_Reader()


    def getEncoding(self):
      return str()


    def getEncoding(self, _java_io_Reader):
      return str()


    def getEncoding(self, _str):
      return str()


    def reset(self):
      pass


    def close(self):
      pass


  class Saveable(object):
    def saveResource(self, _org_eclipse_emf_ecore_resource_Resource):
      pass


  class Writeable(object):
    def init(self):
      self.encoding = self.getEncoding()

    def asWriter(self):
      return java_io_Writer()


    def getEncoding(self):
      return str()


  class WriteableOutputStream(java_io_OutputStream):
    def init(self):
      self.encoding = self.getEncoding()

    def asWriter(self):
      return java_io_Writer()


    def getEncoding(self):
      return str()


    def close(self):
      pass


    def flush(self):
      pass


    def write(self, _int):
      pass


  def exists(self, _org_eclipse_emf_common_util_URI, _java_util_Map):
    return bool()


  def createInputStream(self, _org_eclipse_emf_common_util_URI):
    return java_io_InputStream()


  def createInputStream(self, _org_eclipse_emf_common_util_URI, _java_util_Map):
    return java_io_InputStream()


  def createOutputStream(self, _org_eclipse_emf_common_util_URI):
    return java_io_OutputStream()


  def createOutputStream(self, _org_eclipse_emf_common_util_URI, _java_util_Map):
    return java_io_OutputStream()


  def contentDescription(self, _org_eclipse_emf_common_util_URI, _java_util_Map):
    return java_util_Map()


  def getAttributes(self, _org_eclipse_emf_common_util_URI, _java_util_Map):
    return java_util_Map()


  def getURIMap(self):
    return java_util_Map()


  def getContentHandlers(self):
    return list()


  def getURIHandlers(self):
    return list()


  def normalize(self, _org_eclipse_emf_common_util_URI):
    return org_eclipse_emf_common_util_URI()


  def getURIHandler(self, _org_eclipse_emf_common_util_URI):
    return org_eclipse_emf_ecore_resource_URIHandler()


  def delete(self, _org_eclipse_emf_common_util_URI, _java_util_Map):
    pass


  def setAttributes(self, _org_eclipse_emf_common_util_URI, _java_util_Map, _java_util_Map):
    pass


class org_eclipse_emf_ecore_resource_URIHandler(object):
  DEFAULT_HANDLERS = list
  '''
  '''

  def canHandle(self, _org_eclipse_emf_common_util_URI):
    return bool()


  def exists(self, _org_eclipse_emf_common_util_URI, _java_util_Map):
    return bool()


  def createInputStream(self, _org_eclipse_emf_common_util_URI, _java_util_Map):
    return java_io_InputStream()


  def createOutputStream(self, _org_eclipse_emf_common_util_URI, _java_util_Map):
    return java_io_OutputStream()


  def contentDescription(self, _org_eclipse_emf_common_util_URI, _java_util_Map):
    return java_util_Map()


  def getAttributes(self, _org_eclipse_emf_common_util_URI, _java_util_Map):
    return java_util_Map()


  def delete(self, _org_eclipse_emf_common_util_URI, _java_util_Map):
    pass


  def setAttributes(self, _org_eclipse_emf_common_util_URI, _java_util_Map, _java_util_Map):
    pass


class org_eclipse_emf_ecore_util_FeatureMap(list):
  class Internal(list):
    def init(self):
      self.modCount = self.getModCount()

      self.eObject = self.getEObject()

      self.wrapper = self.getWrapper()

    class Wrapper(object):
      def featureMap(self):
        return list()


    def addAll(self, _org_eclipse_emf_ecore_EStructuralFeature, _int, _list):
      return bool()


    def addAllUnique(self, _int, _list, _int, _int):
      return bool()


    def addAllUnique(self, _list):
      return bool()


    def addAllUnique(self, _list, _int, _int):
      return bool()


    def basicContains(self, _org_eclipse_emf_ecore_EStructuralFeature, _object):
      return bool()


    def basicContainsAll(self, _org_eclipse_emf_ecore_EStructuralFeature, _list):
      return bool()


    def contains(self, _org_eclipse_emf_ecore_EStructuralFeature, _object):
      return bool()


    def containsAll(self, _org_eclipse_emf_ecore_EStructuralFeature, _list):
      return bool()


    def isEmpty(self, _org_eclipse_emf_ecore_EStructuralFeature):
      return bool()


    def remove(self, _org_eclipse_emf_ecore_EStructuralFeature, _object):
      return bool()


    def removeAll(self, _org_eclipse_emf_ecore_EStructuralFeature, _list):
      return bool()


    def retainAll(self, _org_eclipse_emf_ecore_EStructuralFeature, _list):
      return bool()


    def basicIndexOf(self, _org_eclipse_emf_ecore_EStructuralFeature, _object):
      return int()


    def basicLastIndexOf(self, _org_eclipse_emf_ecore_EStructuralFeature, _object):
      return int()


    def getModCount(self):
      return int()


    def indexOf(self, _org_eclipse_emf_ecore_EStructuralFeature, _object):
      return int()


    def lastIndexOf(self, _org_eclipse_emf_ecore_EStructuralFeature, _object):
      return int()


    def size(self, _org_eclipse_emf_ecore_EStructuralFeature):
      return int()


    def get(self, _org_eclipse_emf_ecore_EStructuralFeature, _int, _bool):
      return object()


    def move(self, _org_eclipse_emf_ecore_EStructuralFeature, _int, _int):
      return object()


    def remove(self, _org_eclipse_emf_ecore_EStructuralFeature, _int):
      return object()


    def resolveProxy(self, _org_eclipse_emf_ecore_EStructuralFeature, _int, _int, _object):
      return object()


    def set(self, _org_eclipse_emf_ecore_EStructuralFeature, _int, _object):
      return object()


    def setUnique(self, _org_eclipse_emf_ecore_EStructuralFeature, _int, _object):
      return object()


    def basicToArray(self, _org_eclipse_emf_ecore_EStructuralFeature):
      return list()


    def basicToArray(self, _org_eclipse_emf_ecore_EStructuralFeature, _list):
      return list()


    def toArray(self, _org_eclipse_emf_ecore_EStructuralFeature):
      return list()


    def toArray(self, _org_eclipse_emf_ecore_EStructuralFeature, _list):
      return list()


    def basicIterator(self, _org_eclipse_emf_ecore_EStructuralFeature):
      return java_util_Iterator()


    def iterator(self, _org_eclipse_emf_ecore_EStructuralFeature):
      return java_util_Iterator()


    def basicList(self, _org_eclipse_emf_ecore_EStructuralFeature):
      return list()


    def basicListIterator(self, _org_eclipse_emf_ecore_EStructuralFeature):
      return java_util_ListIterator()


    def basicListIterator(self, _org_eclipse_emf_ecore_EStructuralFeature, _int):
      return java_util_ListIterator()


    def listIterator(self, _org_eclipse_emf_ecore_EStructuralFeature):
      return java_util_ListIterator()


    def listIterator(self, _org_eclipse_emf_ecore_EStructuralFeature, _int):
      return java_util_ListIterator()


    def basicAdd(self, _org_eclipse_emf_ecore_EStructuralFeature, _object, _org_eclipse_emf_common_notify_NotificationChain):
      return org_eclipse_emf_common_notify_NotificationChain()


    def basicRemove(self, _org_eclipse_emf_ecore_EStructuralFeature, _object, _org_eclipse_emf_common_notify_NotificationChain):
      return org_eclipse_emf_common_notify_NotificationChain()


    def getEObject(self):
      return org_eclipse_emf_ecore_EObject()


    def setting(self, _org_eclipse_emf_ecore_EStructuralFeature):
      return org_eclipse_emf_ecore_EStructuralFeature_Setting()


    def getWrapper(self):
      return org_eclipse_emf_ecore_util_FeatureMap.Wrapper()


    def add(self, _org_eclipse_emf_ecore_EStructuralFeature, _int, _object):
      pass


    def addUnique(self, _org_eclipse_emf_ecore_EStructuralFeature, _int, _object):
      pass


    def addUnique(self, _org_eclipse_emf_ecore_EStructuralFeature, _object):
      pass


    def addUnique(self, _org_eclipse_emf_ecore_util_FeatureMap_Entry_Internal):
      pass


    def clear(self, _org_eclipse_emf_ecore_EStructuralFeature):
      pass


    def move(self, _org_eclipse_emf_ecore_EStructuralFeature, _int, _object):
      pass


    def setWrapper(self, _org_eclipse_emf_ecore_util_FeatureMap_Internal_Wrapper):
      pass


  class ValueListIterator(org_eclipse_emf_ecore_util_EContentsEList_FeatureListIterator):
    def add(self, _org_eclipse_emf_ecore_EStructuralFeature, _object):
      pass


  def add(self, _org_eclipse_emf_ecore_EStructuralFeature, _object):
    return bool()


  def addAll(self, _int, _org_eclipse_emf_ecore_EStructuralFeature, _list):
    return bool()


  def addAll(self, _org_eclipse_emf_ecore_EStructuralFeature, _list):
    return bool()


  def isSet(self, _org_eclipse_emf_ecore_EStructuralFeature):
    return bool()


  def get(self, _org_eclipse_emf_ecore_EStructuralFeature, _bool):
    return object()


  def getValue(self, _int):
    return object()


  def setValue(self, _int, _object):
    return object()


  def list(self, _org_eclipse_emf_ecore_EStructuralFeature):
    return list()


  def getEStructuralFeature(self, _int):
    return org_eclipse_emf_ecore_EStructuralFeature()


  def valueListIterator(self):
    return org_eclipse_emf_ecore_util_FeatureMap.ValueListIterator()


  def valueListIterator(self, _int):
    return org_eclipse_emf_ecore_util_FeatureMap.ValueListIterator()


  def add(self, _int, _org_eclipse_emf_ecore_EStructuralFeature, _object):
    pass


  def set(self, _org_eclipse_emf_ecore_EStructuralFeature, _object):
    pass


  def unset(self, _org_eclipse_emf_ecore_EStructuralFeature):
    pass


class org_eclipse_emf_ecore_util_FeatureMap_Entry(object):
  def init(self):
    self.value = self.getValue()

    self.eStructuralFeature = self.getEStructuralFeature()

  class Internal(org_eclipse_emf_ecore_util_FeatureMap_Entry):
    def inverseAdd(self, _org_eclipse_emf_ecore_InternalEObject, _int, _org_eclipse_emf_common_notify_NotificationChain):
      return org_eclipse_emf_common_notify_NotificationChain()


    def inverseAdd(self, _org_eclipse_emf_ecore_InternalEObject, _object, _int, _org_eclipse_emf_common_notify_NotificationChain):
      return org_eclipse_emf_common_notify_NotificationChain()


    def inverseRemove(self, _org_eclipse_emf_ecore_InternalEObject, _int, _org_eclipse_emf_common_notify_NotificationChain):
      return org_eclipse_emf_common_notify_NotificationChain()


    def inverseRemove(self, _org_eclipse_emf_ecore_InternalEObject, _object, _int, _org_eclipse_emf_common_notify_NotificationChain):
      return org_eclipse_emf_common_notify_NotificationChain()


    def createEntry(self, _object):
      return org_eclipse_emf_ecore_util_FeatureMap_Entry.Internal()


    def createEntry(self, _org_eclipse_emf_ecore_InternalEObject):
      return org_eclipse_emf_ecore_util_FeatureMap_Entry.Internal()


    def validate(self, _object):
      pass


  def getValue(self):
    return object()


  def getEStructuralFeature(self):
    return org_eclipse_emf_ecore_EStructuralFeature()


class org_eclipse_equinox_p2_metadata_IArtifactKey(org_eclipse_equinox_p2_metadata_IVersionedId):
  def init(self):
    self.classifier = self.getClassifier()

    self.id = self.getId()

    self.version = self.getVersion()

  def getClassifier(self):
    return str()


  def getId(self):
    return str()


  def toExternalForm(self):
    return str()


  def getVersion(self):
    return org_eclipse_equinox_p2_metadata_Version()


class org_eclipse_equinox_p2_metadata_ICopyright(object):
  def init(self):
    self.body = self.getBody()

    self.location = self.getLocation()

  def getBody(self):
    return str()


  def getLocation(self):
    return java_net_URI()


class org_eclipse_equinox_p2_metadata_IInstallableUnit(org_eclipse_equinox_p2_metadata_IVersionedId):
  def init(self):
    self.artifacts = self.getArtifacts()

    self.fragments = self.getFragments()

    self.licenses = self.getLicenses()

    self.metaRequirements = self.getMetaRequirements()

    self.providedCapabilities = self.getProvidedCapabilities()

    self.requirements = self.getRequirements()

    self.touchpointData = self.getTouchpointData()

    self.properties = self.getProperties()

    self.copyright = self.getCopyright()

    self.touchpointType = self.getTouchpointType()

    self.updateDescriptor = self.getUpdateDescriptor()

    self.filter = self.getFilter()

  NAMESPACE_IU_ID = str
  '''
  '''

  PROP_BUNDLE_LOCALIZATION = str
  '''
  '''

  PROP_CONTACT = str
  '''
  '''

  PROP_DESCRIPTION = str
  '''
  '''

  PROP_DESCRIPTION_URL = str
  '''
  '''

  PROP_DOC_URL = str
  '''
  '''

  PROP_ICON = str
  '''
  '''

  PROP_NAME = str
  '''
  '''

  PROP_PARTIAL_IU = str
  '''
  '''

  PROP_PROVIDER = str
  '''
  '''

  def equals(self, _object):
    return bool()


  def isResolved(self):
    return bool()


  def isSingleton(self):
    return bool()


  def satisfies(self, _org_eclipse_equinox_p2_metadata_IRequirement):
    return bool()


  def getProperty(self, _str):
    return str()


  def getProperty(self, _str, _str):
    return str()


  def getArtifacts(self):
    return list()


  def getFragments(self):
    return list()


  def getLicenses(self):
    return list()


  def getLicenses(self, _str):
    return list()


  def getMetaRequirements(self):
    return list()


  def getProvidedCapabilities(self):
    return list()


  def getRequirements(self):
    return list()


  def getTouchpointData(self):
    return list()


  def getProperties(self):
    return java_util_Map()


  def getCopyright(self):
    return org_eclipse_equinox_p2_metadata_ICopyright()


  def getCopyright(self, _str):
    return org_eclipse_equinox_p2_metadata_ICopyright()


  def unresolved(self):
    return org_eclipse_equinox_p2_metadata_IInstallableUnit()


  def getTouchpointType(self):
    return org_eclipse_equinox_p2_metadata_ITouchpointType()


  def getUpdateDescriptor(self):
    return org_eclipse_equinox_p2_metadata_IUpdateDescriptor()


  def getFilter(self):
    return org_eclipse_equinox_p2_metadata_expression_IMatchExpression()


class org_eclipse_equinox_p2_metadata_IInstallableUnitFragment(org_eclipse_equinox_p2_metadata_IInstallableUnit):
  def init(self):
    self.host = self.getHost()

  def getHost(self):
    return list()


class org_eclipse_equinox_p2_metadata_ILicense(object):
  def init(self):
    self.body = self.getBody()

    self.uUID = self.getUUID()

    self.location = self.getLocation()

  def equals(self, _object):
    return bool()


  def getBody(self):
    return str()


  def getUUID(self):
    return str()


  def getLocation(self):
    return java_net_URI()


class org_eclipse_equinox_p2_metadata_IProvidedCapability(object):
  def init(self):
    self.name = self.getName()

    self.namespace = self.getNamespace()

    self.version = self.getVersion()

  def equals(self, _object):
    return bool()


  def getName(self):
    return str()


  def getNamespace(self):
    return str()


  def getVersion(self):
    return org_eclipse_equinox_p2_metadata_Version()


class org_eclipse_equinox_p2_metadata_IRequirement(object):
  def init(self):
    self.max = self.getMax()

    self.min = self.getMin()

    self.description = self.getDescription()

    self.filter = self.getFilter()

    self.matches = self.getMatches()

  def isGreedy(self):
    return bool()


  def isMatch(self, _org_eclipse_equinox_p2_metadata_IInstallableUnit):
    return bool()


  def getMax(self):
    return int()


  def getMin(self):
    return int()


  def getDescription(self):
    return str()


  def getFilter(self):
    return org_eclipse_equinox_p2_metadata_expression_IMatchExpression()


  def getMatches(self):
    return org_eclipse_equinox_p2_metadata_expression_IMatchExpression()


class org_eclipse_equinox_p2_metadata_ITouchpointData(object):
  def init(self):
    self.instructions = self.getInstructions()

  def equals(self, _object):
    return bool()


  def getInstructions(self):
    return java_util_Map()


  def getInstruction(self, _str):
    return org_eclipse_equinox_p2_metadata_ITouchpointInstruction()


class org_eclipse_equinox_p2_metadata_ITouchpointInstruction(object):
  def init(self):
    self.body = self.getBody()

    self.importAttribute = self.getImportAttribute()

  def equals(self, _object):
    return bool()


  def getBody(self):
    return str()


  def getImportAttribute(self):
    return str()


class org_eclipse_equinox_p2_metadata_ITouchpointType(object):
  def init(self):
    self.id = self.getId()

    self.version = self.getVersion()

  NONE = org_eclipse_equinox_p2_metadata_ITouchpointType
  '''
  '''

  def equals(self, _object):
    return bool()


  def getId(self):
    return str()


  def getVersion(self):
    return org_eclipse_equinox_p2_metadata_Version()


class org_eclipse_equinox_p2_metadata_IUpdateDescriptor(object):
  def init(self):
    self.severity = self.getSeverity()

    self.description = self.getDescription()

    self.location = self.getLocation()

    self.iUsBeingUpdated = self.getIUsBeingUpdated()

  HIGH = int
  '''
  '''

  NORMAL = int
  '''
  '''

  def isUpdateOf(self, _org_eclipse_equinox_p2_metadata_IInstallableUnit):
    return bool()


  def getSeverity(self):
    return int()


  def getDescription(self):
    return str()


  def getLocation(self):
    return java_net_URI()


  def getIUsBeingUpdated(self):
    return list()


class org_eclipse_equinox_p2_metadata_IVersionFormat(object):
  DEFAULT_MAX_STRING_TRANSLATION = str
  '''
  '''

  DEFAULT_MIN_STRING_TRANSLATION = str
  '''
  '''

  def parse(self, _str):
    return org_eclipse_equinox_p2_metadata_Version()


  def toString(self, _java_lang_StringBuffer):
    pass


class org_eclipse_equinox_p2_metadata_IVersionedId(object):
  def init(self):
    self.id = self.getId()

    self.version = self.getVersion()

  def getId(self):
    return str()


  def getVersion(self):
    return org_eclipse_equinox_p2_metadata_Version()


class org_eclipse_equinox_p2_metadata_Version(object):
  def init(self):
    self.segmentCount = self.getSegmentCount()

    self.pad = self.getPad()

    self.original = self.getOriginal()

    self.format = self.getFormat()

  MAX_VERSION = org_eclipse_equinox_p2_metadata_Version
  '''
  '''

  RAW_PREFIX = str
  '''
  '''

  emptyVersion = org_eclipse_equinox_p2_metadata_Version
  '''
  '''

  def isOSGiCompatible(self):
    return bool()


  def getSegmentCount(self):
    return int()


  def getPad(self):
    return java_lang_Comparable()


  def getSegment(self, _int):
    return java_lang_Comparable()


  def getOriginal(self):
    return str()


  def getFormat(self):
    return org_eclipse_equinox_p2_metadata_IVersionFormat()


  def toString(self, _java_lang_StringBuffer):
    pass


  def toString(self):
    return str()


  def compile(self, _str):
    return org_eclipse_equinox_p2_metadata_IVersionFormat()


  def create(self, _str):
    return org_eclipse_equinox_p2_metadata_Version()


  def createOSGi(self, _int, _int, _int):
    return org_eclipse_equinox_p2_metadata_Version()


  def createOSGi(self, _int, _int, _int, _str):
    return org_eclipse_equinox_p2_metadata_Version()


  def parseVersion(self, _str):
    return org_eclipse_equinox_p2_metadata_Version()


  serialVersionUID = int
  '''
  '''

class org_eclipse_equinox_p2_metadata_VersionFormatException(java_lang_Exception):
  serialVersionUID = int
  '''
  '''

class org_eclipse_equinox_p2_metadata_expression_IEvaluationContext(object):
  def init(self):
    self.indexProvider = self.getIndexProvider()

  def getParameter(self, _int):
    return object()


  def getValue(self, _org_eclipse_equinox_p2_metadata_expression_IExpression):
    return object()


  def getIndexProvider(self):
    return org_eclipse_equinox_p2_metadata_index_IIndexProvider()


  def setIndexProvider(self, _org_eclipse_equinox_p2_metadata_index_IIndexProvider):
    pass


  def setValue(self, _org_eclipse_equinox_p2_metadata_expression_IExpression, _object):
    pass


class org_eclipse_equinox_p2_metadata_expression_IExpression(object):
  def init(self):
    self.expressionType = self.getExpressionType()

  TYPE_ALL = int
  '''
  '''

  TYPE_AND = int
  '''
  '''

  TYPE_ARRAY = int
  '''
  '''

  TYPE_ASSIGNMENT = int
  '''
  '''

  TYPE_AT = int
  '''
  '''

  TYPE_COLLECT = int
  '''
  '''

  TYPE_CONDITION = int
  '''
  '''

  TYPE_EQUALS = int
  '''
  '''

  TYPE_EXISTS = int
  '''
  '''

  TYPE_FIRST = int
  '''
  '''

  TYPE_FLATTEN = int
  '''
  '''

  TYPE_FUNCTION = int
  '''
  '''

  TYPE_GREATER = int
  '''
  '''

  TYPE_GREATER_EQUAL = int
  '''
  '''

  TYPE_INTERSECT = int
  '''
  '''

  TYPE_LAMBDA = int
  '''
  '''

  TYPE_LATEST = int
  '''
  '''

  TYPE_LESS = int
  '''
  '''

  TYPE_LESS_EQUAL = int
  '''
  '''

  TYPE_LIMIT = int
  '''
  '''

  TYPE_LITERAL = int
  '''
  '''

  TYPE_MATCHES = int
  '''
  '''

  TYPE_MEMBER = int
  '''
  '''

  TYPE_NOT = int
  '''
  '''

  TYPE_NOT_EQUALS = int
  '''
  '''

  TYPE_OR = int
  '''
  '''

  TYPE_PARAMETER = int
  '''
  '''

  TYPE_PIPE = int
  '''
  '''

  TYPE_SELECT = int
  '''
  '''

  TYPE_TRAVERSE = int
  '''
  '''

  TYPE_UNION = int
  '''
  '''

  TYPE_UNIQUE = int
  '''
  '''

  TYPE_VARIABLE = int
  '''
  '''

  def accept(self, _org_eclipse_equinox_p2_metadata_expression_IExpressionVisitor):
    return bool()


  def getExpressionType(self):
    return int()


  def evaluate(self, _org_eclipse_equinox_p2_metadata_expression_IEvaluationContext):
    return object()


  def toLDAPString(self, _java_lang_StringBuffer):
    pass


  def toString(self, _java_lang_StringBuffer):
    pass


class org_eclipse_equinox_p2_metadata_expression_IExpressionVisitor(object):
  def visit(self, _org_eclipse_equinox_p2_metadata_expression_IExpression):
    return bool()


class org_eclipse_equinox_p2_metadata_expression_IMatchExpression(org_eclipse_equinox_p2_metadata_expression_IExpression):
  def init(self):
    self.parameters = self.getParameters()

  def isMatch(self, _object):
    return bool()


  def isMatch(self, _org_eclipse_equinox_p2_metadata_expression_IEvaluationContext, _object):
    return bool()


  def getParameters(self):
    return list()


  def createContext(self):
    return org_eclipse_equinox_p2_metadata_expression_IEvaluationContext()


class org_eclipse_equinox_p2_metadata_index_IIndex(object):
  def getCandidates(self, _org_eclipse_equinox_p2_metadata_expression_IEvaluationContext, _org_eclipse_equinox_p2_metadata_expression_IExpression, _org_eclipse_equinox_p2_metadata_expression_IExpression):
    return java_util_Iterator()


class org_eclipse_equinox_p2_metadata_index_IIndexProvider(object):
  def getManagedProperty(self, _object, _str, _object):
    return object()


  def everything(self):
    return java_util_Iterator()


  def getIndex(self, _str):
    return org_eclipse_equinox_p2_metadata_index_IIndex()


class org_eclipse_jface_text_BadLocationException(java_lang_Exception):
  serialVersionUID = int
  '''
  '''

class org_eclipse_jface_text_BadPositionCategoryException(java_lang_Exception):
  serialVersionUID = int
  '''
  '''

class org_eclipse_jface_text_DocumentEvent(object):
  def init(self):
    self.length = self.getLength()

    self.offset = self.getOffset()

    self.text = self.getText()

    self.modificationStamp = self.getModificationStamp()

    self.document = self.getDocument()

  ASSERT_TEXT_NOT_NULL = bool
  '''
  '''

  fDocument = org_eclipse_jface_text_IDocument
  '''
  @ivar fDocument
  '''

  fLength = int
  '''
  @ivar fLength
  '''

  fModificationStamp = int
  '''
  @ivar fModificationStamp
  '''

  fOffset = int
  '''
  @ivar fOffset
  '''

  fText = str
  '''
  @ivar fText
  '''

  def getLength(self):
    return int()


  def getOffset(self):
    return int()


  def getText(self):
    return str()


  def toString(self):
    return str()


  def getModificationStamp(self):
    return int()


  def getDocument(self):
    return org_eclipse_jface_text_IDocument()


class org_eclipse_jface_text_IDocument(object):
  def init(self):
    self.length = self.getLength()

    self.numberOfLines = self.getNumberOfLines()

    self.legalContentTypes = self.getLegalContentTypes()

    self.legalLineDelimiters = self.getLegalLineDelimiters()

    self.positionCategories = self.getPositionCategories()

    self.documentPartitioner = self.getDocumentPartitioner()

    self.positionUpdaters = self.getPositionUpdaters()

  DEFAULT_CATEGORY = str
  '''
  '''

  DEFAULT_CONTENT_TYPE = str
  '''
  '''

  def containsPosition(self, _str, _int, _int):
    return bool()


  def containsPositionCategory(self, _str):
    return bool()


  def getChar(self, _int):
    return char()


  def computeIndexInCategory(self, _str, _int):
    return int()


  def computeNumberOfLines(self, _str):
    return int()


  def getLength(self):
    return int()


  def getLineLength(self, _int):
    return int()


  def getLineOfOffset(self, _int):
    return int()


  def getLineOffset(self, _int):
    return int()


  def getNumberOfLines(self):
    return int()


  def getNumberOfLines(self, _int, _int):
    return int()


  def search(self, _int, _str, _bool, _bool, _bool):
    return int()


  def get(self):
    return str()


  def get(self, _int, _int):
    return str()


  def getContentType(self, _int):
    return str()


  def getLineDelimiter(self, _int):
    return str()


  def getLegalContentTypes(self):
    return list()


  def getLegalLineDelimiters(self):
    return list()


  def getPositionCategories(self):
    return list()


  def getDocumentPartitioner(self):
    return org_eclipse_jface_text_IDocumentPartitioner()


  def getPositionUpdaters(self):
    return list()


  def getLineInformation(self, _int):
    return org_eclipse_jface_text_IRegion()


  def getLineInformationOfOffset(self, _int):
    return org_eclipse_jface_text_IRegion()


  def getPartition(self, _int):
    return org_eclipse_jface_text_ITypedRegion()


  def computePartitioning(self, _int, _int):
    return list()


  def getPositions(self, _str):
    return list()


  def addDocumentListener(self, _org_eclipse_jface_text_IDocumentListener):
    pass


  def addDocumentPartitioningListener(self, _org_eclipse_jface_text_IDocumentPartitioningListener):
    pass


  def addPosition(self, _str, _org_eclipse_jface_text_Position):
    pass


  def addPosition(self, _org_eclipse_jface_text_Position):
    pass


  def addPositionCategory(self, _str):
    pass


  def addPositionUpdater(self, _org_eclipse_jface_text_IPositionUpdater):
    pass


  def addPrenotifiedDocumentListener(self, _org_eclipse_jface_text_IDocumentListener):
    pass


  def insertPositionUpdater(self, _org_eclipse_jface_text_IPositionUpdater, _int):
    pass


  def removeDocumentListener(self, _org_eclipse_jface_text_IDocumentListener):
    pass


  def removeDocumentPartitioningListener(self, _org_eclipse_jface_text_IDocumentPartitioningListener):
    pass


  def removePosition(self, _str, _org_eclipse_jface_text_Position):
    pass


  def removePosition(self, _org_eclipse_jface_text_Position):
    pass


  def removePositionCategory(self, _str):
    pass


  def removePositionUpdater(self, _org_eclipse_jface_text_IPositionUpdater):
    pass


  def removePrenotifiedDocumentListener(self, _org_eclipse_jface_text_IDocumentListener):
    pass


  def replace(self, _int, _int, _str):
    pass


  def set(self, _str):
    pass


  def setDocumentPartitioner(self, _org_eclipse_jface_text_IDocumentPartitioner):
    pass


class org_eclipse_jface_text_IDocumentListener(object):
  def documentAboutToBeChanged(self, _org_eclipse_jface_text_DocumentEvent):
    pass


  def documentChanged(self, _org_eclipse_jface_text_DocumentEvent):
    pass


class org_eclipse_jface_text_IDocumentPartitioner(object):
  def init(self):
    self.legalContentTypes = self.getLegalContentTypes()

  def documentChanged(self, _org_eclipse_jface_text_DocumentEvent):
    return bool()


  def getContentType(self, _int):
    return str()


  def getLegalContentTypes(self):
    return list()


  def getPartition(self, _int):
    return org_eclipse_jface_text_ITypedRegion()


  def computePartitioning(self, _int, _int):
    return list()


  def connect(self, _org_eclipse_jface_text_IDocument):
    pass


  def disconnect(self):
    pass


  def documentAboutToBeChanged(self, _org_eclipse_jface_text_DocumentEvent):
    pass


class org_eclipse_jface_text_IDocumentPartitioningListener(object):
  def documentPartitioningChanged(self, _org_eclipse_jface_text_IDocument):
    pass


class org_eclipse_jface_text_IPositionUpdater(object):
  def update(self, _org_eclipse_jface_text_DocumentEvent):
    pass


class org_eclipse_jface_text_IRegion(object):
  def init(self):
    self.length = self.getLength()

    self.offset = self.getOffset()

  def getLength(self):
    return int()


  def getOffset(self):
    return int()


class org_eclipse_jface_text_ITypedRegion(org_eclipse_jface_text_IRegion):
  def init(self):
    self.type = self.getType()

  def getType(self):
    return str()


class org_eclipse_jface_text_Position(object):
  def init(self):
    self.length = self.getLength()

    self.offset = self.getOffset()

  isDeleted = bool
  '''
  @ivar isDeleted
  '''

  length = int
  '''
  @ivar length
  '''

  def equals(self, _object):
    return bool()


  def includes(self, _int):
    return bool()


  def isDeleted(self):
    return bool()


  def overlapsWith(self, _int, _int):
    return bool()


  def getLength(self):
    return int()


  def getOffset(self):
    return int()


  def hashCode(self):
    return int()


  def toString(self):
    return str()


  def delete(self):
    pass


  def setLength(self, _int):
    pass


  def setOffset(self, _int):
    pass


  def undelete(self):
    pass


  offset = int
  '''
  @ivar offset
  '''

class org_eclipse_osgi_service_debug_DebugOptions(object):
  def init(self):
    self.file = self.getFile()

    self.options = self.getOptions()

  LISTENER_SYMBOLICNAME = str
  '''
  '''

  def getBooleanOption(self, _str, _bool):
    return bool()


  def isDebugEnabled(self):
    return bool()


  def getIntegerOption(self, _str, _int):
    return int()


  def getFile(self):
    return java_io_File()


  def getOption(self, _str):
    return str()


  def getOption(self, _str, _str):
    return str()


  def getOptions(self):
    return java_util_Map()


  def newDebugTrace(self, _str):
    return org_eclipse_osgi_service_debug_DebugTrace()


  def newDebugTrace(self, _str, _java_lang_Class):
    return org_eclipse_osgi_service_debug_DebugTrace()


  def removeOption(self, _str):
    pass


  def setDebugEnabled(self, _bool):
    pass


  def setFile(self, _java_io_File):
    pass


  def setOption(self, _str, _str):
    pass


  def setOptions(self, _java_util_Map):
    pass


class org_eclipse_osgi_service_debug_DebugTrace(object):
  def trace(self, _str, _str):
    pass


  def trace(self, _str, _str, _java_lang_Throwable):
    pass


  def traceDumpStack(self, _str):
    pass


  def traceEntry(self, _str):
    pass


  def traceEntry(self, _str, _object):
    pass


  def traceEntry(self, _str, _list):
    pass


  def traceExit(self, _str):
    pass


  def traceExit(self, _str, _object):
    pass


class org_eclipse_tcf_protocol_IService(object):
  def init(self):
    self.name = self.getName()

  def getName(self):
    return str()


class org_eclipse_text_edits_CopySourceEdit(org_eclipse_text_edits_TextEdit):
  def init(self):
    self.content = self.getContent()

    self.targetEdit = self.getTargetEdit()

    self.sourceModifier = self.getSourceModifier()

  def deleteChildren(self):
    return bool()


  def performDocumentUpdating(self, _org_eclipse_jface_text_IDocument):
    return int()


  def traverseConsistencyCheck(self, _org_eclipse_text_edits_TextEditProcessor, _org_eclipse_jface_text_IDocument, _list):
    return int()


  def getContent(self):
    return str()


  def needsTransformation(self):
    return bool()


  def applyTransformation(self, _org_eclipse_jface_text_IDocument):
    pass


  def doCopy(self):
    return org_eclipse_text_edits_TextEdit()


  def accept0(self, _org_eclipse_text_edits_TextEditVisitor):
    pass


  def postProcessCopy(self, _org_eclipse_text_edits_TextEditCopier):
    pass


  def getTargetEdit(self):
    return org_eclipse_text_edits_CopyTargetEdit()


  def getSourceModifier(self):
    return org_eclipse_text_edits_ISourceModifier()


  def setSourceModifier(self, _org_eclipse_text_edits_ISourceModifier):
    pass


  def setTargetEdit(self, _org_eclipse_text_edits_CopyTargetEdit):
    pass


  def clearContent(self):
    pass


  def performConsistencyCheck(self, _org_eclipse_text_edits_TextEditProcessor, _org_eclipse_jface_text_IDocument):
    pass


  def performSourceComputation(self, _org_eclipse_text_edits_TextEditProcessor, _org_eclipse_jface_text_IDocument):
    pass


  def traverseSourceComputation(self, _org_eclipse_text_edits_TextEditProcessor, _org_eclipse_jface_text_IDocument):
    pass


class org_eclipse_text_edits_CopyTargetEdit(org_eclipse_text_edits_TextEdit):
  def init(self):
    self.sourceEdit = self.getSourceEdit()

  def deleteChildren(self):
    return bool()


  def performDocumentUpdating(self, _org_eclipse_jface_text_IDocument):
    return int()


  def traverseConsistencyCheck(self, _org_eclipse_text_edits_TextEditProcessor, _org_eclipse_jface_text_IDocument, _list):
    return int()


  def doCopy(self):
    return org_eclipse_text_edits_TextEdit()


  def accept0(self, _org_eclipse_text_edits_TextEditVisitor):
    pass


  def postProcessCopy(self, _org_eclipse_text_edits_TextEditCopier):
    pass


  def getSourceEdit(self):
    return org_eclipse_text_edits_CopySourceEdit()


  def setSourceEdit(self, _org_eclipse_text_edits_CopySourceEdit):
    pass


  def performConsistencyCheck(self, _org_eclipse_text_edits_TextEditProcessor, _org_eclipse_jface_text_IDocument):
    pass


class org_eclipse_text_edits_CopyingRangeMarker(org_eclipse_text_edits_TextEdit):
  def deleteChildren(self):
    return bool()


  def performDocumentUpdating(self, _org_eclipse_jface_text_IDocument):
    return int()


  def doCopy(self):
    return org_eclipse_text_edits_TextEdit()


  def accept0(self, _org_eclipse_text_edits_TextEditVisitor):
    pass


class org_eclipse_text_edits_DeleteEdit(org_eclipse_text_edits_TextEdit):
  def deleteChildren(self):
    return bool()


  def performDocumentUpdating(self, _org_eclipse_jface_text_IDocument):
    return int()


  def doCopy(self):
    return org_eclipse_text_edits_TextEdit()


  def accept0(self, _org_eclipse_text_edits_TextEditVisitor):
    pass


class org_eclipse_text_edits_ISourceModifier(object):
  def copy(self):
    return org_eclipse_text_edits_ISourceModifier()


  def getModifications(self, _str):
    return list()


class org_eclipse_text_edits_InsertEdit(org_eclipse_text_edits_TextEdit):
  def init(self):
    self.text = self.getText()

  def deleteChildren(self):
    return bool()


  def performDocumentUpdating(self, _org_eclipse_jface_text_IDocument):
    return int()


  def doCopy(self):
    return org_eclipse_text_edits_TextEdit()


  def accept0(self, _org_eclipse_text_edits_TextEditVisitor):
    pass


  def getText(self):
    return str()


  def internalToString(self, _java_lang_StringBuffer, _int):
    pass


class org_eclipse_text_edits_MalformedTreeException(java_lang_RuntimeException):
  def init(self):
    self.child = self.getChild()

    self.parent = self.getParent()

  def getChild(self):
    return org_eclipse_text_edits_TextEdit()


  def getParent(self):
    return org_eclipse_text_edits_TextEdit()


  def setParent(self, _org_eclipse_text_edits_TextEdit):
    pass


  serialVersionUID = int
  '''
  '''

class org_eclipse_text_edits_MoveSourceEdit(org_eclipse_text_edits_TextEdit):
  def init(self):
    self.content = self.getContent()

    self.sourceRoot = self.getSourceRoot()

    self.sourceModifier = self.getSourceModifier()

    self.targetEdit = self.getTargetEdit()

  def deleteChildren(self):
    return bool()


  def performDocumentUpdating(self, _org_eclipse_jface_text_IDocument):
    return int()


  def traverseConsistencyCheck(self, _org_eclipse_text_edits_TextEditProcessor, _org_eclipse_jface_text_IDocument, _list):
    return int()


  def getContent(self):
    return str()


  def getSourceRoot(self):
    return org_eclipse_text_edits_MultiTextEdit()


  def needsTransformation(self):
    return bool()


  def getStyle(self, _org_eclipse_text_edits_TextEditProcessor):
    return int()


  def createEdit(self, _java_util_Map):
    return org_eclipse_text_edits_TextEdit()


  def splitEdit(self, _org_eclipse_text_edits_ReplaceEdit, _org_eclipse_jface_text_IRegion):
    return list()


  def splitIntersectLeft(self, _org_eclipse_text_edits_ReplaceEdit, _org_eclipse_jface_text_IRegion):
    return list()


  def splitIntersectRight(self, _org_eclipse_text_edits_ReplaceEdit, _org_eclipse_jface_text_IRegion):
    return list()


  def createEdit(self, _org_eclipse_text_edits_TextEdit, _org_eclipse_text_edits_TextEdit, _java_util_Map):
    pass


  def insert(self, _org_eclipse_text_edits_TextEdit, _org_eclipse_text_edits_ReplaceEdit, _list):
    pass


  def restorePositions(self, _java_util_Map):
    pass


  def applyTransformation(self, _org_eclipse_jface_text_IDocument, _int):
    pass


  def insertEdits(self, _org_eclipse_text_edits_TextEdit, _list):
    pass


  def doCopy(self):
    return org_eclipse_text_edits_TextEdit()


  def accept0(self, _org_eclipse_text_edits_TextEditVisitor):
    pass


  def postProcessCopy(self, _org_eclipse_text_edits_TextEditCopier):
    pass


  def getSourceModifier(self):
    return org_eclipse_text_edits_ISourceModifier()


  def getTargetEdit(self):
    return org_eclipse_text_edits_MoveTargetEdit()


  def intersect(self, _org_eclipse_text_edits_TextEdit, _org_eclipse_text_edits_TextEdit):
    return org_eclipse_jface_text_IRegion()


  def setSourceModifier(self, _org_eclipse_text_edits_ISourceModifier):
    pass


  def setTargetEdit(self, _org_eclipse_text_edits_MoveTargetEdit):
    pass


  def clearContent(self):
    pass


  def performConsistencyCheck(self, _org_eclipse_text_edits_TextEditProcessor, _org_eclipse_jface_text_IDocument):
    pass


  def performSourceComputation(self, _org_eclipse_text_edits_TextEditProcessor, _org_eclipse_jface_text_IDocument):
    pass


  def traverseSourceComputation(self, _org_eclipse_text_edits_TextEditProcessor, _org_eclipse_jface_text_IDocument):
    pass


class org_eclipse_text_edits_MoveTargetEdit(org_eclipse_text_edits_TextEdit):
  def init(self):
    self.sourceEdit = self.getSourceEdit()

  def deleteChildren(self):
    return bool()


  def performDocumentUpdating(self, _org_eclipse_jface_text_IDocument):
    return int()


  def traverseConsistencyCheck(self, _org_eclipse_text_edits_TextEditProcessor, _org_eclipse_jface_text_IDocument, _list):
    return int()


  def traverseRegionUpdating(self, _org_eclipse_text_edits_TextEditProcessor, _org_eclipse_jface_text_IDocument, _int, _bool):
    return int()


  def doCopy(self):
    return org_eclipse_text_edits_TextEdit()


  def accept0(self, _org_eclipse_text_edits_TextEditVisitor):
    pass


  def postProcessCopy(self, _org_eclipse_text_edits_TextEditCopier):
    pass


  def getSourceEdit(self):
    return org_eclipse_text_edits_MoveSourceEdit()


  def setSourceEdit(self, _org_eclipse_text_edits_MoveSourceEdit):
    pass


  def performConsistencyCheck(self, _org_eclipse_text_edits_TextEditProcessor, _org_eclipse_jface_text_IDocument):
    pass


class org_eclipse_text_edits_MultiTextEdit(org_eclipse_text_edits_TextEdit):
  def init(self):
    self.length = self.getLength()

    self.offset = self.getOffset()

  def deleteChildren(self):
    return bool()


  def isDefined(self):
    return bool()


  def performDocumentUpdating(self, _org_eclipse_jface_text_IDocument):
    return int()


  def canZeroLengthCover(self):
    return bool()


  def doCopy(self):
    return org_eclipse_text_edits_TextEdit()


  def accept0(self, _org_eclipse_text_edits_TextEditVisitor):
    pass


  def checkIntegrity(self):
    pass


  def covers(self, _org_eclipse_text_edits_TextEdit):
    return bool()


  def getLength(self):
    return int()


  def getOffset(self):
    return int()


  def aboutToBeAdded(self, _org_eclipse_text_edits_TextEdit):
    pass


  def adjustLength(self, _int):
    pass


  def adjustOffset(self, _int):
    pass


  def defineRegion(self, _int):
    pass


  def internalToString(self, _java_lang_StringBuffer, _int):
    pass


  def performConsistencyCheck(self, _org_eclipse_text_edits_TextEditProcessor, _org_eclipse_jface_text_IDocument):
    pass


class org_eclipse_text_edits_RangeMarker(org_eclipse_text_edits_TextEdit):
  def deleteChildren(self):
    return bool()


  def performDocumentUpdating(self, _org_eclipse_jface_text_IDocument):
    return int()


  def doCopy(self):
    return org_eclipse_text_edits_TextEdit()


  def accept0(self, _org_eclipse_text_edits_TextEditVisitor):
    pass


class org_eclipse_text_edits_ReplaceEdit(org_eclipse_text_edits_TextEdit):
  def init(self):
    self.text = self.getText()

  def deleteChildren(self):
    return bool()


  def performDocumentUpdating(self, _org_eclipse_jface_text_IDocument):
    return int()


  def doCopy(self):
    return org_eclipse_text_edits_TextEdit()


  def accept0(self, _org_eclipse_text_edits_TextEditVisitor):
    pass


  def getText(self):
    return str()


  def internalToString(self, _java_lang_StringBuffer, _int):
    pass


class org_eclipse_text_edits_TextEdit(object):
  def init(self):
    self.childrenSize = self.getChildrenSize()

    self.exclusiveEnd = self.getExclusiveEnd()

    self.inclusiveEnd = self.getInclusiveEnd()

    self.region = self.getRegion()

    self.parent = self.getParent()

    self.root = self.getRoot()

    self.children = self.getChildren()

    self.length = self.getLength()

    self.offset = self.getOffset()

  CREATE_UNDO = int
  '''
  '''

  DELETED_VALUE = int
  '''
  '''

  EMPTY_ARRAY = list
  '''
  '''

  INSERTION_COMPARATOR = org_eclipse_text_edits_TextEdit_InsertionComparator
  '''
  '''

  NONE = int
  '''
  '''

  UPDATE_REGIONS = int
  '''
  '''

  def deleteChildren(self):
    return bool()


  def performDocumentUpdating(self, _org_eclipse_jface_text_IDocument):
    return int()


  def isDefined(self):
    return bool()


  def traverseConsistencyCheck(self, _org_eclipse_text_edits_TextEditProcessor, _org_eclipse_jface_text_IDocument, _list):
    return int()


  def traverseDocumentUpdating(self, _org_eclipse_text_edits_TextEditProcessor, _org_eclipse_jface_text_IDocument):
    return int()


  def traverseRegionUpdating(self, _org_eclipse_text_edits_TextEditProcessor, _org_eclipse_jface_text_IDocument, _int, _bool):
    return int()


  def internalGetChildren(self):
    return list()


  def dispatchPerformEdits(self, _org_eclipse_text_edits_TextEditProcessor):
    return org_eclipse_text_edits_UndoEdit()


  def computeInsertionIndex(self, _org_eclipse_text_edits_TextEdit):
    return int()


  def toStringWithChildren(self, _java_lang_StringBuffer, _int):
    pass


  def doCopy(self):
    return org_eclipse_text_edits_TextEdit()


  def accept0(self, _org_eclipse_text_edits_TextEditVisitor):
    pass


  def canZeroLengthCover(self):
    return bool()


  def acceptChildren(self, _org_eclipse_text_edits_TextEditVisitor):
    pass


  def childDocumentUpdated(self):
    pass


  def childRegionUpdated(self):
    pass


  def postProcessCopy(self, _org_eclipse_text_edits_TextEditCopier):
    pass


  def covers(self, _org_eclipse_text_edits_TextEdit):
    return bool()


  def equals(self, _object):
    return bool()


  def hasChildren(self):
    return bool()


  def isDeleted(self):
    return bool()


  def removeChild(self, _org_eclipse_text_edits_TextEdit):
    return bool()


  def getChildrenSize(self):
    return int()


  def getExclusiveEnd(self):
    return int()


  def getInclusiveEnd(self):
    return int()


  def hashCode(self):
    return int()


  def getRegion(self):
    return org_eclipse_jface_text_IRegion()


  def copy(self):
    return org_eclipse_text_edits_TextEdit()


  def getParent(self):
    return org_eclipse_text_edits_TextEdit()


  def getRoot(self):
    return org_eclipse_text_edits_TextEdit()


  def removeChild(self, _int):
    return org_eclipse_text_edits_TextEdit()


  def getChildren(self):
    return list()


  def removeChildren(self):
    return list()


  def apply(self, _org_eclipse_jface_text_IDocument):
    return org_eclipse_text_edits_UndoEdit()


  def apply(self, _org_eclipse_jface_text_IDocument, _int):
    return org_eclipse_text_edits_UndoEdit()


  def accept(self, _org_eclipse_text_edits_TextEditVisitor):
    pass


  def addChild(self, _org_eclipse_text_edits_TextEdit):
    pass


  def addChildren(self, _list):
    pass


  def moveTree(self, _int):
    pass


  def getLength(self):
    return int()


  def getOffset(self):
    return int()


  def toString(self):
    return str()


  def getCoverage(self, _list):
    return org_eclipse_jface_text_IRegion()


  def aboutToBeAdded(self, _org_eclipse_text_edits_TextEdit):
    pass


  def adjustLength(self, _int):
    pass


  def adjustOffset(self, _int):
    pass


  def deleteTree(self):
    pass


  def dispatchCheckIntegrity(self, _org_eclipse_text_edits_TextEditProcessor):
    pass


  def internalAdd(self, _org_eclipse_text_edits_TextEdit):
    pass


  def internalMoveTree(self, _int):
    pass


  def internalSetChildren(self, _list):
    pass


  def internalSetLength(self, _int):
    pass


  def internalSetOffset(self, _int):
    pass


  def internalSetParent(self, _org_eclipse_text_edits_TextEdit):
    pass


  def internalToString(self, _java_lang_StringBuffer, _int):
    pass


  def markAsDeleted(self):
    pass


  def performConsistencyCheck(self, _org_eclipse_text_edits_TextEditProcessor, _org_eclipse_jface_text_IDocument):
    pass


  def performRegionUpdating(self, _int, _bool):
    pass


  def performSourceComputation(self, _org_eclipse_text_edits_TextEditProcessor, _org_eclipse_jface_text_IDocument):
    pass


  def traverseSourceComputation(self, _org_eclipse_text_edits_TextEditProcessor, _org_eclipse_jface_text_IDocument):
    pass


class org_eclipse_text_edits_TextEdit_InsertionComparator(object):
  def compare(self, _object, _object):
    return int()


class org_eclipse_text_edits_TextEditCopier(object):
  def doCopy(self, _org_eclipse_text_edits_TextEdit):
    return org_eclipse_text_edits_TextEdit()


  def addCopy(self, _org_eclipse_text_edits_TextEdit, _org_eclipse_text_edits_TextEdit):
    pass


  def getCopy(self, _org_eclipse_text_edits_TextEdit):
    return org_eclipse_text_edits_TextEdit()


  def perform(self):
    return org_eclipse_text_edits_TextEdit()


class org_eclipse_text_edits_TextEditProcessor(object):
  def init(self):
    self.style = self.getStyle()

    self.document = self.getDocument()

    self.root = self.getRoot()

  def executeDo(self):
    return org_eclipse_text_edits_UndoEdit()


  def executeUndo(self):
    return org_eclipse_text_edits_UndoEdit()


  def createUndo(self):
    return bool()


  def updateRegions(self):
    return bool()


  def computeSources(self):
    pass


  def considerEdit(self, _org_eclipse_text_edits_TextEdit):
    return bool()


  def canPerformEdits(self):
    return bool()


  def getStyle(self):
    return int()


  def getDocument(self):
    return org_eclipse_jface_text_IDocument()


  def getRoot(self):
    return org_eclipse_text_edits_TextEdit()


  def performEdits(self):
    return org_eclipse_text_edits_UndoEdit()


  def createSourceComputationProcessor(self, _org_eclipse_jface_text_IDocument, _org_eclipse_text_edits_TextEdit, _int):
    return org_eclipse_text_edits_TextEditProcessor()


  def checkIntegrityDo(self):
    pass


  def checkIntegrityUndo(self):
    pass


class org_eclipse_text_edits_TextEditVisitor(object):
  def visit(self, _org_eclipse_text_edits_CopySourceEdit):
    return bool()


  def visit(self, _org_eclipse_text_edits_CopyTargetEdit):
    return bool()


  def visit(self, _org_eclipse_text_edits_CopyingRangeMarker):
    return bool()


  def visit(self, _org_eclipse_text_edits_DeleteEdit):
    return bool()


  def visit(self, _org_eclipse_text_edits_InsertEdit):
    return bool()


  def visit(self, _org_eclipse_text_edits_MoveSourceEdit):
    return bool()


  def visit(self, _org_eclipse_text_edits_MoveTargetEdit):
    return bool()


  def visit(self, _org_eclipse_text_edits_MultiTextEdit):
    return bool()


  def visit(self, _org_eclipse_text_edits_RangeMarker):
    return bool()


  def visit(self, _org_eclipse_text_edits_ReplaceEdit):
    return bool()


  def visit(self, _org_eclipse_text_edits_UndoEdit):
    return bool()


  def visitNode(self, _org_eclipse_text_edits_TextEdit):
    return bool()


  def postVisit(self, _org_eclipse_text_edits_TextEdit):
    pass


  def preVisit(self, _org_eclipse_text_edits_TextEdit):
    pass


class org_eclipse_text_edits_UndoEdit(org_eclipse_text_edits_TextEdit):
  def deleteChildren(self):
    return bool()


  def performDocumentUpdating(self, _org_eclipse_jface_text_IDocument):
    return int()


  def dispatchPerformEdits(self, _org_eclipse_text_edits_TextEditProcessor):
    return org_eclipse_text_edits_UndoEdit()


  def doCopy(self):
    return org_eclipse_text_edits_TextEdit()


  def accept0(self, _org_eclipse_text_edits_TextEditVisitor):
    pass


  def aboutToBeAdded(self, _org_eclipse_text_edits_TextEdit):
    pass


  def add(self, _org_eclipse_text_edits_ReplaceEdit):
    pass


  def defineRegion(self, _int, _int):
    pass


  def dispatchCheckIntegrity(self, _org_eclipse_text_edits_TextEditProcessor):
    pass


  def internalAdd(self, _org_eclipse_text_edits_TextEdit):
    pass


