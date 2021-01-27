#
#
#	This file is a STUB that is used only to populate symbols for use by
#	Pydev under an editor.  Don't attempt to point to this module for running code! 
#

raise Exception("This script cannot run outside of Studio.  Use the 'Python for Studio' launch instead.")

from StudioClasses import *
#
#	Generated from com.silabs.ss.platform.api.scripting.core.ISLSUriModule 
#	API version 0
#

class uri(com_silabs_ss_platform_api_scripting_core_IScriptModule):
  '''
  APIs for Studio-specific URI manipulation.

  In Studio, URIs are used pervasively to refer to the filesystem, the Studio installation,
  containing files, and inside projects, to the SDK or toolchain currently in use.

  URIs must follow the convention that a directory reference ends with a slash.

  Some examples:

  	file:/C:/path/on/windows/system/file.ext

  	file:/C:/path/to/directory/

  	jar:file:/path/to/file.jar!/path/inside/jar/file.ext

  	http://www.example.com/site.html


  	platform:/plugin/com.silabs.plugin/path/to/content.ext


  	platform:/base/path/inside/installation/content.ext


  	workspace:/project/path/inside/project/


  	studio:/sdk/path/inside/current/project/sdk/file.ext (may only be used in project models)


  	studio:/toolchain/path/inside/current/toolchain/file.ext (may only be used in project models)


  URIs may be converted back and forth to the filesystem, but the conversion is not two-way.

  Incoming URI objects may be in one of several forms: either {@link java.net.URI}, {@link java.net.URL}, {@link org.eclipse.emf.common.util.URI} 
  or a string.  If the string has no scheme, it is assumed to be a filesystem path.  If the filesystem path is relative, it is
  resolved against the current directory.
   *
  '''
  NAME = str
  '''
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


  def ensureDirectory(self, uriObj):
    '''
    Ensure the URI represents a directory, by ensuring it has a final slash.
    @param uriObj URI object
    @type uriObj: object
    @return URI in same format as uriObj
    @throws IOException
    '''
    return object()


  def resolveFrom(self, baseUriObj, uriObj):
    '''
    Resolve the URI against the base URI.
    @param baseUriObj base URI object; note, must have trailing slash to be a directory, else the final file element is removed
    @param uriObj URI object; if absolute, the baseUriObj is ignored
    @type baseUriObj: object
    @type uriObj: object
    @return URI in same format as either baseUriObj or uriObj
    @throws IOException
    '''
    return object()


  def toFilePath(self, uriObj):
    '''
    Convert a URI to a filesystem path.  The path may be relative if the uriObj represents a relative path.
    @param uriObj URI object
    @type uriObj: object
    @return filesystem path in native format
    @throws IOException
    '''
    return str()


  def getName(self):
    '''
    Get the name of the module
    @return 
    '''
    return str()


  def fromFilePath(self, filePath):
    '''
    Convert a filesystem path to a URI.

    If the path is relative, the outcome is a relative URI.  If you don't want this, make the path
    absolute beforehand.
    @param filePath filesystem path
    @type filePath: str
    @return corresponding URI
    '''
    return java_net_URI()


