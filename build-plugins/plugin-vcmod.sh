#!/bin/bash
git clone https://github.com/AmusementClub/vcm.git build

cd build

meson build

ninja -C build

cd build

cp libvcmod.so $VSPREFIX/vsplugins/libvcmod.so
