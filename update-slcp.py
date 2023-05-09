#!/usr/bin/env python3
import glob
from pathlib import Path
import yaml

# user edit section

exclude_folders_list = [
    'gecko_sdk_3.1.1',
    'gecko_sdk_3.2.1',
    'autogen',
    'config',
    'slc_cli',
]

includes = [
    '.',
    'edgeimpulse',
    'edgeimpulse/QCBOR/inc',
    'edgeimpulse/QCBOR/src',
    'edgeimpulse/ingestion-sdk-c',
    'edgeimpulse/ingestion-sdk-platform/SiliconLabs',
    'edgeimpulse/ingestion-sdk-platform/SiliconLabs/sensors',
    'edgeimpulse/model-parameters',
    'edgeimpulse/repl',
    'edgeimpulse/tflite-model',
    'edgeimpulse/edge-impulse-sdk/porting',
    'brd4166a',
]

source = [
    '*.cpp',
    '*.c',
    'brd4166a/*.c',
    'edgeimpulse/edge-impulse-sdk/porting/silabs/*.cpp',
    'edgeimpulse/edge-impulse-sdk/dsp/dct/*.cpp',
    'edgeimpulse/edge-impulse-sdk/dsp/kissfft/*.cpp',
    'edgeimpulse/ingestion-sdk-platform/SiliconLabs/*.cpp',
    'edgeimpulse/ingestion-sdk-platform/SiliconLabs/sensors/*.cpp',
    'edgeimpulse/ingestion-sdk-c/*.cpp',
    'edgeimpulse/repl/*.cpp',
    'edgeimpulse/tflite-model/*.cpp',

    'edgeimpulse/edge-impulse-sdk/tensorflow/lite/kernels/*.cc',
    'edgeimpulse/edge-impulse-sdk/tensorflow/lite/kernels/internal/*.cc',
    'edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/*.cc',
    'edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/kernels/*.cc',
    'edgeimpulse/edge-impulse-sdk/tensorflow/lite/micro/memory_planner/*.cc',
    'edgeimpulse/edge-impulse-sdk/tensorflow/lite/core/api/*.cc',
    'edgeimpulse/edge-impulse-sdk/tensorflow/lite/c/*.c',

    'edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/*fft*.c',
    'edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/CommonTables/*.c',
    'edgeimpulse/edge-impulse-sdk/CMSIS/DSP/Source/TransformFunctions/*bit*.c',
    'edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ActivationFunctions/*.c',
    'edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/BasicMathFunctions/*.c',
    'edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConcatenationFunctions/*.c',
    'edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ConvolutionFunctions/*.c',
    'edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/FullyConnectedFunctions/*.c',
    'edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/NNSupportFunctions/*.c',
    'edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/PoolingFunctions/*.c',
    'edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/ReshapeFunctions/*.c',
    'edgeimpulse/edge-impulse-sdk/CMSIS/NN/Source/SoftmaxFunctions/*.c',

    'edgeimpulse/QCBOR/src/*.c',
]

# end user edit section

slcp_file = "firmware-silabs-thunderboard-sense-2.slcp"
workspace_path = "ei-workspace/"
apath = Path(workspace_path)
includes = [ Path(apath, e)  for e in includes ]
exclude_folders_list = [ Path(apath, e)  for e in exclude_folders_list ]
source = [ Path(apath, e)  for e in source ]

def filter_files(file_list, filter_list):
    temp = []
    for name in file_list:
        for exc in filter_list:
            if str(exc) in str(name):
                temp.append(name)

    for elem in temp:
        if elem in file_list:
            file_list.remove(elem)

    return file_list

def recursive_find_files(path, file_ext_list):
    temp = []
    for ext in file_ext_list:
       temp = temp + list(path.rglob(ext))

    return temp

def wild_find_files(path):
    return list(path.glob('*'))

header_ext = [ "*.h", "*.hpp"]
source_ext = [ "*.c", "*.cpp", "*.cc", "*.cxx"]

header_files = recursive_find_files(Path(apath), header_ext)
header_files = filter_files(header_files, exclude_folders_list)
header_files = [ Path(*name.parts[1:]) for name in header_files ]
header_files.sort()

##header_folders = filter_files(includes, exclude_folders_list)
header_folders = [ Path(*name.parts[1:]) for name in includes ]
header_folders.sort()

source_files = []
for source_list in source:
    source_files = source_files + wild_find_files(source_list);

source_files = recursive_find_files(apath, source_ext)
source_files = filter_files(source_files, exclude_folders_list)
source_files = [ Path(*name.parts[1:]) for name in source_files ]
source_files.sort()

hh = []
for match in header_folders:
    #print("- {path: " + match +"}")
    hh.append({'path' : str(match)})

aa = []
for match in header_files:
    #print("   - {path: " + match +"}")
    aa.append({'path' : str(match)})
hh.append({'path': '', 'file_list': aa})


ss = []
for match in source_files:
    #print("- {path: " + match +"}")
    ss.append({'path': str(match)})

fname = Path(apath, slcp_file)
stream = open(fname, 'r')
dct = yaml.load(stream, yaml.SafeLoader)

#print(hh)
#print(ss)
dct['include'] = hh
dct['source'] = ss

with open(fname, 'w') as slcp:
    slcp.write(yaml.dump(dct, default_flow_style=False))
