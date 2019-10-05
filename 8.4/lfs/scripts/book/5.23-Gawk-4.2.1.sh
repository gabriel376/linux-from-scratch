#!/bin/bash

cd $LFS/toolchain
tar -xf gawk-4.2.1.tar.xz
cd gawk-4.2.1

./configure --prefix=/tools

make

#make check

make install

cd $LFS/toolchain
rm -rf gawk-4.2.1
