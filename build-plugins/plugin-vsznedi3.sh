git clone --recursive https://github.com/jackb992/znedi3.git build
cd build
make X86=1
cp vsznedi3.so $VSPREFIX/vsplugins/vsznedi3.so
cp nnedi3_weights.bin $VSPREFIX/vsplugins/nnedi3_weights.bin
