#
#
#	This file is a STUB that is used only to populate symbols for use by
#	Pydev under an editor.  Don't attempt to point to this module for running code! 
#

raise Exception("This script cannot run outside of Studio.  Use the 'Python for Studio' launch instead.")

from StudioClasses import *
#
#	Generated from com.silabs.ss.framework.debugger.api.tcf.agent.scripting.ISLSAgentModule 
#	API version 0
#

class agent(com_silabs_ss_platform_api_scripting_core_IScriptModule):
  '''
  Script API for SiAgent (TCF) access.  

  This automatically schedules any TCF operations on the Protocol thread. 
   *
  '''
  NAME = str
  '''
  Name of this module
  @value "agent"
  '''

  VERSION = int
  '''
  Version of this API
  @value (0 << 16) | (0 << 8) | 0
  '''

  class Callback(object):
    '''
    Basic interface for an asynchronous callback from a command sent via
    {@link Service#sendCommand(str, object[], Callback)}.
    '''
    def done(self, error, replyArguments):
      '''
      This method is invoked once a command has finished.
      @param error error object (usually IErrorReport) or None
      @param replyArguments array of reply arguments (the number depends on the command)
      @type error: org_eclipse_tcf_protocol_IErrorReport
      @type replyArguments: list
      '''
      pass


  class Command(object):
    '''
    This token is the handle to the asynchronous reply from {@link Service#sendCommand(str, object[], Callback)}.
    It may be used to synchronize on the reply via {@link #awaitReply()}.
    	 *
    '''
    def awaitReply(self):
      '''
      Await the reply for the receiver.
      @return array of arguments from successful command completion;
      for most commands this consists of an error object and zero or more reply objects
      @throws Exception
      '''
      return list([java_lang_Object()])


  class EventListener(object):
    '''
    Basic interface for an asynchronous event report from a service 
    (register via {@link Service#addListener(EventListener)}.
    '''
    def handleEvent(self, service, eventName, arguments):
      '''
      Respond to an event reported on the service
      @param service the service reporting an event
      @param eventName name of the event fired
      @param arguments array of decoded arguments
      @type service: agent.Service
      @type eventName: str
      @type arguments: list
      '''
      pass


  class Service(org_eclipse_tcf_protocol_IService):
    '''
    This interface represents the script interface of the service requested
    by {@link Session#getService(str)}.

    TODO: The runtime interface to the service will be populated with the commands available
    to the service.
    	 *
    '''
    def init(self):
      self.session = self.getSession()

    def sendCommand(self, commandName, arguments, done):
      '''
      Send an asynchronous command to the service
      @param commandName name of the command
      @param arguments arguments for command, or None for no arguments
      @param done subclass of Callback for reply once command completes
      @type commandName: str
      @type arguments: list
      @type done: agent.Callback
      @return 
      @throws Exception
      '''
      return agent.Command()


    def getSession(self):
      '''
      Get the session that owns the service
      @return session
      '''
      return agent.Session()


    def fetchChildren(self, parent):
      '''
      Convenience method: synchronously fetch all the children of the given context.
      Invokes the getChildren command.
      @param parent context to query (either an ID or a Context object)
      @type parent: object
      @return non-None array of contexts
      '''
      return list([com_silabs_ss_framework_debugger_api_tcf_services_ISLSService_Context()])


    def addListener(self, listener
    ):
      '''
      Add a listener for events from this service.
      @param listener

      @type listener
      : agent.EventListener
      '''
      pass


    def removeListener(self, listener
    ):
      '''
      Remove a listener for events from this service.
      @param listener

      @type listener
      : agent.EventListener
      '''
      pass


  class Session(object):
    '''
    This interface represents the script interface to a connection to the agent.
    '''
    def init(self):
      self.serviceNames = self.getServiceNames()

    def isOpen(self):
      '''
      Tell if the agent is connected
      '''
      return bool()


    def getService(self, name):
      '''
      Fetch an interface for the given service.
      @param name
      @type name: str
      @return service
      @throws Exception
      '''
      return agent.Service()


    def getServiceNames(self):
      '''
      Get the names of the services available from the agent
      @return non-None array
      @throws Exception
      '''
      return list([java_lang_String()])


    def close(self):
      '''
      Disconnect from the agent and close session
      @throws Exception if the connection is closed
      '''
      pass


  def connect(self):
    '''
    Finds or connects to a peer agent matching the default options to find SiAgent
    @return existing or new IPeer
    @throws Exception
    '''
    return agent.Session()


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


  def stringToBinary(self, _str):
    '''
    Utility for JSON encoding: convert a string with binary data to 
    a binary stream.
    '''
    return object()


  def binaryToString(self, _object):
    '''
    Utility for JSON decoding: convert binary data to 
    a string with binary data.
    '''
    return str()


  def getName(self):
    '''
    Get the name of the module
    @return 
    '''
    return str()


