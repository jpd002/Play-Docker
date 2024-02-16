#!/bin/sh
set -e
mkdir /cmake
cd cmake
curl -L https://github.com/Kitware/CMake/releases/download/v3.28.3/cmake-3.28.3.tar.gz >> cmake.tar.gz
tar -xvf cmake.tar.gz > /dev/null
cd cmake-3.28.3
export CFLAGS="-D_FILE_OFFSET_BITS=64"
export CXXFLAGS="-D_FILE_OFFSET_BITS=64"
./bootstrap --parallel=8
make -j8
make install
cd /
rm -rf cmake
