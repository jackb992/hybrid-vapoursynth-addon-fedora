#!/bin/sh
  sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
  sudo dnf install @development-tools @c-development
  sudo dnf install  \
    cmake \
    yasm \
    git \
    wget \
    mercurial \
    unzip \
    p7zip \
    python-pip \
    xz \
    fftw \
    boost \
    libbluray \
    libpng \
    gcc \
    llvm \
    python-testresources \
    nasm \
    ffmpeg \
    python3-vapoursynth \
    vapoursynth-devel \
    vapoursynth-libs \
    vapoursynth-tools \
    glib2 \
    meson \
    waifu2x-converter-cpp-devel \
    llvm15 \
    libass-devel \
    fftw-devel \
    ImageMagick-c++-devel \
    libbluray-devel \
    llvm-devel \
    llvm15-devel \
    boost-devel \
    rocm-opencl-devel \
    tbb-devel \
    vulkan-loader-devel \
    clang \
    xxhash \
    xxhash-devel \
    autoreconf \
    autoconf \
    automake \
    libtool \
    turbojpeg-devel \
    ffmpeg-devel --allowerasing

git clone https://github.com/l-smash/l-smash.git build
cd build
./configure --enable-shared --disable-static
make
sudo make install
cd ..
rm -rf build
git clone https://github.com/KhronosGroup/OpenCL-Headers
cmake -D CMAKE_INSTALL_PREFIX=./OpenCL-Headers/install -S ./OpenCL-Headers -B ./OpenCL-Headers/build  
cmake --build ./OpenCL-Headers/build --target install
git clone https://github.com/KhronosGroup/OpenCL-ICD-Loader
cmake -D CMAKE_PREFIX_PATH="$PWD"/OpenCL-Headers/install -D CMAKE_INSTALL_PREFIX=./OpenCL-ICD-Loader/install -S ./OpenCL-ICD-Loader -B ./OpenCL-ICD-Loader/build 
cmake --build ./OpenCL-ICD-Loader/build --target install
rm -rf OpenCL-ICD-Loader
rm -rf OpenCL-Headers
sudo cp -r /usr/include/vapoursynth /usr/local/include/vapoursynth
echo "Installation of Dependencies Finished"
    
exit
