#!/bin/bash

cd $LFS/toolchain
tar -xf glibc-2.30.tar.xz
cd glibc-2.30

mkdir -v build
cd       build

../configure                             \
      --prefix=/tools                    \
      --host=$LFS_TGT                    \
      --build=$(../scripts/config.guess) \
      --enable-kernel=3.2                \
      --with-headers=/tools/include

make

make install

echo 'int main(){}' > dummy.c
$LFS_TGT-gcc dummy.c
readelf -l a.out | grep ': /tools'
rm -v dummy.c a.out

cd $LFS/toolchain
rm -rf glibc-2.30
