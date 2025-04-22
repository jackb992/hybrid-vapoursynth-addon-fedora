#!/bin/bash
export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH

git clone https://github.com/HomeOfAviSynthPlusEvolution/L-SMASH-Works build

cd build

cd VapourSynth

meson build

ninja -C build

cd build

cp libvslsmashsource.so $VSPREFIX/vsplugins/libvslsmashsource.so
