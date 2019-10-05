#!/bin/bash

cd $LFS/toolchain
tar -xf grep-3.3.tar.xz
cd grep-3.3

./configure --prefix=/tools

make

#make check

make install

cd $LFS/toolchain
rm -rf grep-3.3
