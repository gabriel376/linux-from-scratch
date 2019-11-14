#!/bin/bash

cd $LFS/toolchain
tar -xf tar-1.32.tar.xz
cd tar-1.32

./configure --prefix=/tools

make

#make check

make install

cd $LFS/toolchain
rm -rf tar-1.32
