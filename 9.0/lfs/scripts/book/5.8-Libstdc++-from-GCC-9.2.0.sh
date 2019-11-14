#!/bin/bash

cd $LFS/toolchain
tar -xf gcc-9.2.0.tar.xz
cd gcc-9.2.0

mkdir -v build
cd       build

../libstdc++-v3/configure           \
    --host=$LFS_TGT                 \
    --prefix=/tools                 \
    --disable-multilib              \
    --disable-nls                   \
    --disable-libstdcxx-threads     \
    --disable-libstdcxx-pch         \
    --with-gxx-include-dir=/tools/$LFS_TGT/include/c++/9.2.0

make

make install

cd $LFS/toolchain
rm -rf gcc-9.2.0
