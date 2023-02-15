#!/bin/sh

  sudo pacman -Syu
  sudo pacman --noconfirm -S  \
    base-devel \
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
    opencl-icd-loader \
    boost \
    libbluray \
    libpng \
    gcc \
    llvm \
    python-testresources \
    nasm \
    ffmpeg \
    vapoursynth \
    glib2 \
    opencl-headers\
    meson
git clone https://aur.archlinux.org/waifu2x-converter-cpp-git.git build
cd build
makepkg --noconfirm -si
cd ..
sudo cp -r /usr/include/vapoursynth /usr/local/include/vapoursynth
if pacman -Qi nvidia > /dev/null ; then
  sudo pacman -S opencl-nvidia opencv-cuda
  echo "Installation of Dependencies Finished"

else
  echo "Installation of Dependencies Finished"
  sudo pacman -S opencl-mesa opencv
fi
    
exit
