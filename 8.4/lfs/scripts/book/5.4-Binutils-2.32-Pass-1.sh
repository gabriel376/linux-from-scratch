#!/bin/bash

cd $LFS/toolchain
tar -xf binutils-2.32.tar.xz
cd binutils-2.32

mkdir -v build
cd       build

../configure --prefix=/tools            \
             --with-sysroot=$LFS        \
             --with-lib-path=/tools/lib \
             --target=$LFS_TGT          \
             --disable-nls              \
             --disable-werror

make

case $(uname -m) in
  x86_64) mkdir -v /tools/lib && ln -sv lib /tools/lib64 ;;
esac

make install

cd $LFS/toolchain
rm -rf binutils-2.32
