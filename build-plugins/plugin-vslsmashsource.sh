#!/bin/bash
export PKG_CONFIG_PATH=/usr/lib/pkgconfig
git clone -b 70e19fb19d https://github.com/HomeOfAviSynthPlusEvolution/L-SMASH-Works build

cd build

cd VapourSynth

meson build

ninja -C build

cd build

cp libvslsmashsource.so $VSPREFIX/vsplugins/libvslsmashsource.so
