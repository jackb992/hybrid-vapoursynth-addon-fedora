git clone https://github.com/jackb992/vsimagereader.git build
cd build/src
./configure
make
cp libvsimagereader.so $VSPREFIX/vsplugins/libvsimagereader.so
