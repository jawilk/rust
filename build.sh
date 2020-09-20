#!/usr/bin/env bash

set -ex

if [ "$1" == "--help" ] || [ "$1" == "-h" ]; then
    echo "--llvm to rebuild llvm";
    exit;
fi

if [ "$1" == "--llvm" ]; then
    find ./build -name "llvm-finished-building" -exec rm -r {} \;
fi
./x.py build --stage 1
