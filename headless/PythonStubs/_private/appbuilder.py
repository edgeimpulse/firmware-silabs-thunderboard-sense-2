#
#
#	This file is a STUB that is used only to populate symbols for use by
#	Pydev under an editor.  Don't attempt to point to this module for running code! 
#

raise Exception("This script cannot run outside of Studio.  Use the 'Python for Studio' launch instead.")

from StudioClasses import *
#
#	Generated from com.silabs.ss.app.internal.api.ide.scripting.ISLSAppBuilderModule 
#	API version 0
#

class appbuilder(com_silabs_ss_platform_api_scripting_core_IScriptModule):
  '''
  This module provides support for generating esf projects and
  wraps the old command line calls in python scripts.
   *
  '''
  NAME = str
  '''
  Name of this module
  @value "appbuilder"
  '''

  OPTION_ALLOWED_ARCHITECTURES = str
  '''
  Specify a list of architectures that are valid to generate for.
  This will apply for every ISC file.
  **This is an AFV6 option only, AFV2 will ignore this**
  @type list of strings, Space/Comma separated list of str (architecture ids)

  @value "allowedArchitectures"
  '''

  OPTION_ALLOW_INTERNAL_STACK = str
  '''
  Specify whether the isc file can use an internal stack to generate.
  This is an Afv6 option only.
  @type boolean

  @value "allowInternalStack"
  '''

  OPTION_FORCED_SDK_ID = str
  '''
  Force the use of a particular sdk rather than using what 
  is user defined or the standard default. This should be the
  Studio SDK id with or without a version (without will pick 
  the "best" default).
  @type str (sdk id)

  @value "forcedSdkId"
  '''

  OPTION_FORCED_STACK_LOC = str
  '''
  Force the use of a particular stack rather than using what 
  is user defined or the standard default. This should be the
  stack location.
  @type str (filepath or URI)

  @value "forcedStackLoc"
  '''

  OPTION_GENERATE_ARCHITECTURES = str
  '''
  Specify a list of architectures to iterate over and generate for.
  This will apply for every ISC file.
  @type list of strings, Space/Comma separated list of str (architecture ids)

  @value "generateArchitectures"
  '''

  OPTION_GENERATE_PROTECTED_FILES = str
  '''
  Whether protected files should be auto-generated. If True,
  then protected files will be overwritten.
  @type boolean

  @value "generateProtectedFiles"
  '''

  OPTION_GENERATION_DEST = str
  '''
  Specifies directory where to generate framework code.
  **This is an AFV2 option only, AFV6 will ignore this**
  @type str (folderPath or URI)

  @value "generationDest"
  '''

  OPTION_GENERATION_SOURCE = str
  '''
  Specifies property file for stack to generate framework code.
  **This is an AFV2 option only, AFV6 will ignore this**
  @type str (filepath or URI)

  @value "generationSource"
  '''

  OPTION_ISC_FILE_NAME = str
  '''
  The name of the referenced isc file.
  @type str

  @value "iscFileName"
  '''

  OPTION_ISC_FILE_PATH = str
  '''
  The path to the reference isc file.
  @type str (filepath or URI)

  @value "iscFilePath"
  '''

  OPTION_VERBOSE = str
  '''
  Whether the generation process is allowed to output to stdout.
  @type boolean

  @value "verbose"
  '''

  VERSION = int
  '''
  Version of this API
  @value (0 << 16) | (0 << 8) | 0
  '''

  def isAfv6IscFile(self, iscFile):
    '''
    Return whether the input file or string filepath is AFV6 or AFV2.
    @param iscFile a string or file path to a *.isc file
    @type iscFile: object
    @return True if the file is AFV6, False otherwise
    @throws CoreException
    '''
    return bool()


  def generateIsc(self, iscFile, options):
    '''
    Run the generation process on the input isc file. This will correctly 
    operate on Afv2 or Afv6 depending on the input isc file.
    @param iscFile str file path to the generated isc file
    @param options map of key to value options, or None; allowed keys:

     Afv2 & Afv6

    	{@link #OPTION_VERBOSE}: boolean; specify if the generation process should be verbose

     Afv6 Only

    	{@link #OPTION_GENERATE_ARCHITECTURES}: list of strings, Space/Comma separated list of str (architecture ids);
    Specify the list of generated architectures. If None, the default architecture will be used 

    	{@link #OPTION_ALLOWED_ARCHITECTURES}: list of strings, Space/Comma separated list of str (architecture ids);
    Specify the list of allowed architectures. If None, any framework valid architectures can be used 

    	{@link #OPTION_ALLOW_INTERNAL_STACK}: boolean; specify whether an internal stack can be used to generate

    @throws CoreException if something goes wrong

    @type iscFile: object
    @type options: java_util_Map
    '''
    return list()


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


  def getCompatibleToolchains(self, iscFile):
    '''
    Return the toolchain ids that are compatible with the framework
    that the input isc file will use.
    @param iscFile a string or file path to a *.isc file
    @type iscFile: object
    @return a list of compatible toolchain ids
    @throws CoreException if there is no isc file in this project or something goes wrong
    '''
    return list()


  def frameworkGeneration(self, propertyFile, _str, _java_util_Map):
    '''
    Framework generation for empty Afv2 application files. 
    NOTE: This will only work for Afv2
    @param propertyFile str filepath to property file for stack to generate framework code.
    @throws CoreException if the input file is an Afv6 stack or something goes wrong

    @type propertyFile: str
    '''
    pass


  def generateFromCommandLine(self, genResult, options):
    '''
    Write the generated files to disk.
    @param genResult a GenerationResult that has gone through {@link #generateIsc(object, Map)}
    @param options map of key to value options, or None; allowed keys:

     Afv2 & Afv6

    	{@link #OPTION_GENERATE_PROTECTED_FILES}: boolean; to specify whether any protected
    should overwritten

    	{@link #OPTION_VERBOSE}: boolean; specify if the generation process should be verbose

    @throws CoreException if something goes wrong

    @type genResult: object
    @type options: java_util_Map
    '''
    pass


  def generateIscFile(self, iscFile, options):
    '''
    Run the generation process on the input isc file. This will correctly 
    operate on Afv2 or Afv6 depending on the input isc file.
    This is a utility method, fully equivalent to {@link #generateIsc(object, Map)}
    and {@link #generateFromCommandLine(object, Map)}.
    @param iscFile str file path to the generated isc file
    @param options map of key to value options, or None; allowed keys:

     Afv2 & Afv6

    	{@link #OPTION_GENERATE_PROTECTED_FILES}: boolean; to specify whether any protected
    should overwritten

    	{@link #OPTION_VERBOSE}: boolean; specify if the generation process should be verbose

     Afv6 Only

    	{@link #OPTION_GENERATE_ARCHITECTURES}: list of strings, Space/Comma separated list of str (architecture ids);
    Specify the list of generated architectures. If None, the default architecture will be used 

    	{@link #OPTION_ALLOWED_ARCHITECTURES}: list of strings, Space/Comma separated list of str (architecture ids);
    Specify the list of allowed architectures. If None, any framework valid architectures can be used 

    	{@link #OPTION_ALLOW_INTERNAL_STACK}: boolean; specify whether an internal stack can be used to generate

    @throws CoreException if something goes wrong

    @type iscFile: object
    @type options: java_util_Map
    '''
    pass


  def generateProject(self, project, options):
    '''
    Generate into this project using the first seen isc file or
    the isc file specified in the options map. This will work for both 
    Afv2 and Afv6 depending on the isc file that is generated.
    @param project the project name, IProjectHandle or IProject
    @param options map of key to value options, or None; allowed keys:

     Afv2 & Afv6

    	{@link #OPTION_ISC_FILE_NAME}: string; to specify which isc file to use - the first
    one found will be chosen

    	{@link #OPTION_ISC_FILE_PATH}: string; to specify the path to the isc file that
    should be used - can be project relative or absolute

    	{@link #OPTION_GENERATE_PROTECTED_FILES}: boolean; to specify whether any protected
    should overwritten

    	{@link #OPTION_VERBOSE}: boolean; specify if the generation process should be verbose

     Afv6 Only

    	{@link #OPTION_GENERATE_ARCHITECTURES}: list of strings, Space/Comma separated list of str (architecture ids);
    Specify the list of generated architectures. If None, the default architecture will be used 

    	{@link #OPTION_ALLOWED_ARCHITECTURES}: list of strings, Space/Comma separated list of str (architecture ids);
    Specify the list of allowed architectures. If None, any framework valid architectures can be used 

    	{@link #OPTION_ALLOW_INTERNAL_STACK}: boolean; specify whether an internal stack can be used to generate

    @throws CoreException if there is no isc file in this project or something goes wrong

    @type project: object
    @type options: java_util_Map
    '''
    pass


  def regenerateIscFile(self, iscFile, options):
    '''
    Regenerates the input ISC file with any migration changes.
    @param iscFile a single string file path to an isc file
    @param options map of key to value options, or None; allowed keys:

    	**Currently None**

    @throws CoreException if something goes wrong

    @type iscFile: object
    @type options: java_util_Map
    '''
    pass


  def validateFramework(self, framework):
    '''
    Validate that the input framework loads correctly.
    @param framework the framework to validate
    @throws CoreException if there is a loading error

    @type framework: object
    '''
    pass


  def validateSDK(self, SDK):
    '''
    Validate that all frameworks within this SDK load correctly.
    @param SDK the SDK to validate
    @throws CoreException if there is a loading error

    @type SDK: object
    '''
    pass


