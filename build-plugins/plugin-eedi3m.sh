git clone https://github.com/BlueSwordM/VapourSynth-EEDI3 build


cd build

meson build

ninja -C build

cd build

cp libeedi3m.so $VSPREFIX/vsplugins/liblibeedi3m.so
