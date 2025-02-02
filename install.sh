#!/bin/bash
set -ex

# set up
PROJECT=file
GROUP=rphii
DIR_INCLUDES="/usr/include/${GROUP}"
DIR_LIBS_32="/lib/${GROUP}"
DIR_LIBS_64="/lib64/${GROUP}"

# create system directories
mkdir -p "${DIR_INCLUDES}" || true
mkdir -p "${DIR_LIBS_32}" || true
mkdir -p "${DIR_LIBS_64}" || true

# install
cp src/*.h "${DIR_INCLUDES}"
cp "build/32/${PROJECT}.so" "${DIR_LIBS_32}"
cp "build/64/${PROJECT}.so" "${DIR_LIBS_64}"

