#!/bin/bash
set -e

SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

cd $SCRIPTPATH

./build.sh --build /Applications/Simplicity\ Studio.app/Contents/Eclipse/ ~/ei-workspace
aws s3 cp "GNU ARM v7.2.1 - Default/firmware-silabs-thunderboard-sense-2.bin" s3://edge-impulse-cdn-prod/demos/tinyml2021.bin
aws cloudfront create-invalidation --distribution-id E2K84RSILM6W49 --paths "/demos/*"
