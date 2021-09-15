#!/bin/bash
set -e

SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"
WORKSPACE=${SCRIPTPATH}/ei-workspace
TEMPDIR=/tmp/build-$(date +%s)
FILE=firmware-silabs-thunderboard-sense-2.slcp

COMMAND=$1
STUDIO_PATH=$2

if [[ "$OSTYPE" == "darwin"* ]]; then
    SEDCMD="sed -i '' -e"
    LC_CTYPE=C
    LANG=C
else
    SEDCMD="sed -i -e"
fi

prepare-slcp()
{
    cd ${SCRIPTPATH}
    python3 update-slcp.py
}

prepare-workspace() {
    cd $1
    rm -rf edgeimpulse/mbedtls_hmac_sha256_sw
    sed -i -e "s/-Os/-O3/g" *project.mak
}

get-platform()
{
    echo $(uname -s 2>/dev/null)
}

download-dependencies()
{
    echo "Checking dependencies..."

    PLATFORM=$(get-platform)
    if [[ ${PLATFORM} == "Darwin" ]]; then
        PYTHON3=$(which python3.6 || true)
        if [ ! -x "$PYTHON3" ]; then
            echo "Cannot find 'python3.6' in your PATH. Install Python 3.6.8 (exactly this version) before you continue."
            echo "Installation instructions: https://www.python.org/downloads/release/python-368/"
            exit 1
        fi

        PYTHON3=$(python3.6 -V 2>/dev/null)
        if [[ ! "$PYTHON3" =~ "3.6.8" ]]; then
            echo "Invalid version for 'python3.6'. Install Python 3.6.8 (exactly this version) before you continue."
            echo "Installation instructions: https://www.python.org/downloads/release/python-368/"
            exit 1
        fi
    fi

    echo "Checking PyYAML.."
    cd ${SCRIPTPATH}
    PYYAML=$(python3 -m pip list --format=legacy | grep -i yaml || true 2>/dev/null)
    if [ -z "$PYYAML" ]; then
        echo "Installing PyYAML"
        python3 -m pip install pyyaml
    fi
    echo "Checking PyYAML OK"

    echo "Checking dependencies OK"
}

generate-project()
{
    export ARM_GCC_DIR="${STUDIO_PATH:=/opt/SimplicityStudio_v5}/developer/toolchains/gnu_arm/${GNU_TOOLCHAIN_VERSION:=10.2_2020q4}"
    slc generate -s "${STUDIO_PATH:=/opt/SimplicityStudio_v5}/developer/sdks/gecko_sdk_suite/v${GECKO_SDK_VERSION:=3.2}/" -p ${WORKSPACE} -cp --with brd4166a -tlcn gcc
}

if [ "$COMMAND" == "--build" ]; then
    echo "Building "${FILE}"..."
    download-dependencies
    prepare-workspace ${WORKSPACE}
    cd ${WORKSPACE} && make -j -f *.Makefile
elif [ "$COMMAND" == "--update" ]; then
    echo "Updating workspace..."
    prepare-slcp
    generate-project
    prepare-workspace ${WORKSPACE}
    echo "Updating workspace done"
elif [ "$COMMAND" == "--flash" ]; then
    echo "Flashing device"
    JLinkExe -CommandFile CommandFile.jlink
    cd ..
elif [ "$COMMAND" == "--clean" ]; then
    cd ${WORKSPACE}
    make -j -f *.Makefile clean
    cd ..
else
    echo "Invalid command: $COMMAND"
    exit 1
fi
