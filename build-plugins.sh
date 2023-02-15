#!/bin/sh
# Caution: this script is for Arch Linux and its derivatives.
set -e
s_begin=$( date "+%s")

. ./config.txt
export CFLAGS="-pipe -O3 -fno-strict-aliasing -Wno-deprecated-declarations"
export CXXFLAGS="$CFLAGS"

  
rm -rf build
mkdir -p build/logs
cd build
build_pwd=$PWD

echo $PWD
plugins=$(ls -1 ../build-plugins/plugin-*.sh | sed 's|^\.\./build-plugins/plugin-||g; s|\.sh$||g')
#plugins="akarin"
count=$(echo $plugins | wc -w)
n=0

echo ""
echo "Build plugins:"

# To avoid errors of inattention... but the correct VSPREFIX is in uppercase!
export vsprefix="$VSPREFIX"

for p in $plugins ; do
  cat ../build-plugins/header.sh ../build-plugins/plugin-${p}.sh > build.sh # copy current build script
  n=$(($n + 1)) # increace counter
  printf " %s (%d/%d) ... " $p $n $count  # show progress
  bash ./build.sh >logs/${p}.log 2>&1 && echo "done" || echo "failed" # execute build script and send output to log file
  rm -rf build build.sh # remove build folder and build script
done

unset vsprefix

cd $build_pwd/..
rm -rf build

s_end=$( date "+%s")
s=$(($s_end - $s_begin))
printf "\nFinished after %d min %d sec\n" $(($s / 60)) $(($s % 60))


