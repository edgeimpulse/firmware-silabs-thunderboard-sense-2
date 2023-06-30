#!/bin/bash
set -e

SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"
FW_PRJ_PATH="$SCRIPTPATH"
EI_MODEL_PATH="$FW_PRJ_PATH/ei-model"

echo "Removing $EI_MODEL_PATH/edge-impulse-sdk/"
rm -rf $EI_MODEL_PATH/edge-impulse-sdk/
echo "Removing $EI_MODEL_PATH/edge-impulse-sdk/ OK"

echo "Copying new version of EI SDK"
cp -r $SCRIPTPATH/../edge-impulse-sdk $EI_MODEL_PATH/edge-impulse-sdk/
echo "Copying new version of EI SDK OK"

echo "Removing $FW_PRJ_PATH/firmware-sdk/"
rm -rf $FW_PRJ_PATH/firmware-sdk/
echo "Removing $FW_PRJ_PATH/firmware-sdk/ OK"

echo "Copying new version of Firmware SDK"
cp -r $SCRIPTPATH/../firmware-sdk $FW_PRJ_PATH/firmware-sdk/
echo "Copying new version of Firmware SDK OK"
