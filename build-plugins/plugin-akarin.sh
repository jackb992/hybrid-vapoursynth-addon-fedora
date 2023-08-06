git clone https://github.com/jackb992/vapoursynth-plugin.git build
cd build
meson setup build/ --native-file custom-llvm.ini
ninja -C build

cd build

cp libakarin.so $VSPREFIX/vsplugins/libakarin.so
