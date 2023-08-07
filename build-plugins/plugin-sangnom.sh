ghdl dubhater/vapoursynth-sangnom
chmod +x autogen.sh
CFLAGS="$CFLAGS -Wno-deprecated-declarations" meson build --prefix="$vsprefix"
ninja -C build
cd build
mv libsangnom.so "$vsprefix"/vsplugins/libsangnom.so

