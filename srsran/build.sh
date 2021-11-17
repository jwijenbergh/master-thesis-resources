#!/usr/bin/env bash

if [ ! -d "srsran-downgrade" ]; then
    echo "Error: SrsRAN downgrade codebase does not exist, did you update the git submodules?"
    exit 1
fi

if ! command -v "make" &> /dev/null
then
    printf "Error: make could not be found. Install it to use this script.\n"
    exit 1
fi

if ! command -v "cmake" &> /dev/null
then
    printf "Error: cmake could not be found. Install it to use this script.\n"
    exit 1
fi

mkdir -p srsran-downgrade/build
pushd "$PWD" || exit
cd srsran-downgrade/build || exit
cmake ../
make -j8
popd || exit
