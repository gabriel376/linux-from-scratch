#!/bin/bash

cd $LFS/toolchain
tar -xf gawk-5.0.1.tar.xz
cd gawk-5.0.1

./configure --prefix=/tools

make

#make check

make install

cd $LFS/toolchain
rm -rf gawk-5.0.1
