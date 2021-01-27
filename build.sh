#!/bin/bash
set -e

COMMAND=$1

CFG="GNU ARM v7.2.1 - Default"

if [ "$COMMAND" == "--build" ]; then
    echo "Building firmware-silabs-thunderboard-sense2..."

    STUDIO_PATH="$2"
    if [ -z "$STUDIO_PATH" ]
    then
        echo "STUDIO_PATH not set, exiting now!"
        exit 1
    fi

    WORKSPACE="$3"
    if [ -z "$WORKSPACE" ]
    then
        echo "WORKSPACE not set, exiting now!"
        exit 1
    fi

    RUN_SCRIPT="$STUDIO_PATH"/developer/scripting/runScript.sh
    SRC_PROJECT_PATH="$( cd "$(dirname "$0")" ; pwd -P )"
    BUILD_SCRIPT="$SRC_PROJECT_PATH"/headless/PythonScripts/ImportExistingProjectAndBuild_v2.py
    #AUX_ARGS=--AutoEnable

    "$RUN_SCRIPT" -data "$WORKSPACE" "$BUILD_SCRIPT" -cfg "$CFG" $AUX_ARGS "$SRC_PROJECT_PATH"
elif [ "$COMMAND" == "--flash" ]; then
    cd "${CFG}"
    echo "Flashing device"
    JLinkExe -CommandFile ../CommandFile.jlink
    cd ..
elif [ "$COMMAND" == "--clean" ]; then
    cd "${CFG}"
    echo "Cleaning project"
    make -j8 clean
    cd ..
else
    echo "Invalid command: $COMMAND"
    exit 1
fi
