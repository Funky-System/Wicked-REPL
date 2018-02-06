#!/usr/bin/env sh
git submodule init
git submodule update
git submodule update --recursive

mkdir -p build
cd build
cmake ..
make