ghdl dubhater/vapoursynth-sangnom
CFLAGS="$CFLAGS -Wno-deprecated-declarations" meson build --prefix="$vsprefix"
ninja -C build -j $JOBS
cd "$vsprefix"
mv "$vsprefix"/lib/libsangnom.so "$vsprefix"/vsplugins/libsangnom.so

