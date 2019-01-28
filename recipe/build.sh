#! /usr/bin/env bash

export MACOSX_DEPLOYMENT_TARGET=""

mkdir _build && cd _build
cmake .. \
    -DCMAKE_INSTALL_PREFIX=$PREFIX \
    -DCMAKE_BUILD_TYPE=Release \
    -DDAKOTA_HAVE_MPI=ON \
    -DDAKOTA_ENABLE_TESTS=OFF \
    -DBoost_INCLUDE_DIR=$BUILD_PREFIX/include
make -j$CPU_COUNT
# ctest
make install
