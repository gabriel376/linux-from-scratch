#!/bin/bash

cd $LFS/toolchain
tar -xf bison-3.4.1.tar.xz
cd bison-3.4.1

./configure --prefix=/tools

make

#make check

make install

cd $LFS/toolchain
rm -rf bison-3.4.1
