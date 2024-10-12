#!/bin/bash

# Check if .appversion file exists
if [ ! -f ".appversion" ]; then
    echo ".appversion file not found!"
    echo "Please run scripts/new_version.sh first."
    exit 1
fi

# Read values from .appversion file
VERSION=$(jq -r '.version' .appversion)
BUILD_NUM=$(jq -r '.build_number' .appversion)

# Build the app
(cd app && exec flutter build windows --build-name $VERSION --build-number $BUILD_NUM)

# Create symlink to the release folder
ln -s -f app/build/windows/x64/runner/Release/ build_result
