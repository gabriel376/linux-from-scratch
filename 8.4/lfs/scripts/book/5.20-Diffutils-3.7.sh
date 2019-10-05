#!/bin/bash

cd $LFS/toolchain
tar -xf diffutils-3.7.tar.xz
cd diffutils-3.7

./configure --prefix=/tools

make

#make check

make install

cd $LFS/toolchain
rm -rf diffutils-3.7
