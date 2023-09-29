#!/bin/bash
export PKG_CONFIG_PATH=/usr/lib/pkgconfig
git clone https://github.com/AmusementClub/vcm.git build

meson build

ninja -C build

cd build

cp libvcmod.so $VSPREFIX/vsplugins/libvcmod.so
