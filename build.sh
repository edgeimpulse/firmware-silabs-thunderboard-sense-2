#!/bin/bash

# Edge Impulse ingestion SDK
# Copyright (c) 2022 EdgeImpulse Inc.
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

set -e

SLCP_FILES=(*.slcp)
PROJECT_FILE=${SLCP_FILES[0]}

echo "Using project file: ${PROJECT_FILE}"

SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"
PROJECT_NAME=$(grep project_name ${PROJECT_FILE} | cut -d':' -f2 | xargs)
SLC_BIN="slc"

for i in "$@"; do
  case $i in
    -b|--build)
      BUILD=1
      shift # past argument
      ;;
    -c|--clean)
      CLEAN=1
      shift # past argument
      ;;
    -f|--flash)
      FLASH=1
      shift # past argument
      ;;
    -p|--purge)
      PURGE=1
      shift # past argument
      ;;
    -s=*|--slc=*)
      SLC_BIN="${i#*=}"
      shift # past argument=value
      ;;
    *)
      shift # past argument
      ;;
  esac
done

# remove all generated files (useful to recreate the project from scratch)
if [ ! -z ${PURGE} ];
then
    rm -rf autogen/
    rm -rf build/
    rm -rf gecko_sdk_?.?.?/
    rm -rf edge_impulse_extension_?.?.?/
    rm -f ${PROJECT_NAME}.Makefile
    rm -f ${PROJECT_NAME}.project.mak
    rm -f ${PROJECT_NAME}.slps
elif [ ! -z ${CLEAN} ];
then
    if [ -f ${PROJECT_NAME}.Makefile ];
    then
        make -f ${PROJECT_NAME}.Makefile clean
    fi
fi

if [ ! -z ${BUILD} ];
then
    if [ ! -d firmware-sdk ]; then
        echo "Firmware SDK not found."
        exit 1
    fi
    ${SLC_BIN} generate ${PROJECT_FILE} --no-copy --toolchain=gcc --output-type=makefile
    make -j4 -f ${PROJECT_NAME}.Makefile
fi

if [ ! -z ${FLASH} ];
then
    commander flash build/debug/${PROJECT_NAME}.hex
fi
