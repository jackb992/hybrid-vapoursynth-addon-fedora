git clone https://github.com/HomeOfVapourSynthEvolution/VapourSynth-Waifu2x-w2xc build
cd build
cp -r Waifu2x-w2xc/models $VSPREFIX/lib/vapoursynth
meson build
ninja -C build
cd build
cp libwaifu2x-w2xc.so $VSPREFIX/vsplugins/
