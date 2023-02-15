#!/bin/bash

git clone https://github.com/HomeOfVapourSynthEvolution/VapourSynth-LGhost build

cd build

meson build
ninja -C build

cd build

cp liblghost.so $VSPREFIX/vsplugins/liblghost.so


