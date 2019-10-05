#!/bin/bash

cd $LFS/toolchain
tar -xf tar-1.31.tar.xz
cd tar-1.31

./configure --prefix=/tools

make

#make check

make install

cd $LFS/toolchain
rm -rf tar-1.31
