#export CC=/usr/bin/gcc-11
#export CXX=/usr/bin/g++-11

ghc jackb992/znedi3 r2
git submodule update --init
build vsznedi3
install_nnedi3_weights
