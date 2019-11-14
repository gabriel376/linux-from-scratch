#!/bin/bash

cd $LFS/toolchain
tar -xf xz-5.2.4.tar.xz
cd xz-5.2.4

./configure --prefix=/tools

make

#make check

make install

cd $LFS/toolchain
rm -rf xz-5.2.4
