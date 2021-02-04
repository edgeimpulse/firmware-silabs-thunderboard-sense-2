#!/usr/bin/python

# On Windows we run into issues with the PATH size and I cannot figure out how to
# use response files (where all *.o files are passed in via '@' to g++) from Eclipse...
# So let's do it this way:

import sys, os, json, fnmatch
import xml.etree.ElementTree as ET

script_dir = os.path.dirname(os.path.realpath(__file__))
build_dir = os.getcwd()

compiler = sys.argv[1]
compiler_args = sys.argv[2:]

o_files = []
for root, dirnames, filenames in os.walk(build_dir):
    for filename in fnmatch.filter(filenames, '*.o'):
        o_files.append(os.path.relpath(os.path.join(root, filename), build_dir))

# parse the userObjs
cproject = ET.parse(os.path.join(script_dir, '.cproject'))
query = ".//storageModule/configuration/folderInfo[@name='/']/toolChain/tool[@command='python']/option[@valueType='userObjs'][1]/listOptionValue"

a_files = []
for elem in cproject.findall(query):
    a_files.append(elem.get('value').replace('${workspace_loc:/${ProjName}', script_dir).replace('}', ''))

if os.path.sep == '/':
    with open(os.path.join(build_dir, 'o_files.txt'), 'w+') as f:
        f.write(' '.join('"{0}"'.format(w) for w in (o_files + a_files)))
    linker_cmd = '"' + compiler + '" ' + ' '.join('"{0}"'.format(w) for w in (compiler_args)) + ' @o_files.txt' + ' -lm'
else:
    with open(os.path.join(build_dir, 'o_files.txt'), 'w+') as f:
        # g++ wants this escaped...
        f.write(' '.join('"{0}"'.format(w).replace('\\', '\\\\') for w in (o_files + a_files)))
    linker_cmd = compiler + ' ' + ' '.join('"{0}"'.format(w) for w in (compiler_args)) + ' @o_files.txt' + ' -lm'

r = os.system(linker_cmd)
exit(r >> 8)
