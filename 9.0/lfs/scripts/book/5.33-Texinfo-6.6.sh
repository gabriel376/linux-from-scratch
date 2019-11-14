#!/bin/bash

cd $LFS/toolchain
tar -xf texinfo-6.6.tar.xz
cd texinfo-6.6

./configure --prefix=/tools

make

#make check

make install

cd $LFS/toolchain
rm -rf texinfo-6.6
