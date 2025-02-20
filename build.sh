#!/bin/bash

# The Clear BSD License
#
# Copyright (c) 2025 EdgeImpulse Inc.
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted (subject to the limitations in the disclaimer
# below) provided that the following conditions are met:
#
#   * Redistributions of source code must retain the above copyright notice,
#   this list of conditions and the following disclaimer.
#
#   * Redistributions in binary form must reproduce the above copyright
#   notice, this list of conditions and the following disclaimer in the
#   documentation and/or other materials provided with the distribution.
#
#   * Neither the name of the copyright holder nor the names of its
#   contributors may be used to endorse or promote products derived from this
#   software without specific prior written permission.
#
# NO EXPRESS OR IMPLIED LICENSES TO ANY PARTY'S PATENT RIGHTS ARE GRANTED BY
# THIS LICENSE. THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND
# CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
# LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
# PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR
# CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
# EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
# PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
# BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER
# IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
# ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
# POSSIBILITY OF SUCH DAMAGE.

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
    make -j ${MAKE_JOBS:-$(nproc)} -f ${PROJECT_NAME}.Makefile
fi

if [ ! -z ${FLASH} ];
then
    commander flash build/debug/${PROJECT_NAME}.hex
fi
