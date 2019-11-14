#!/bin/bash

cd $LFS/toolchain
tar -xf patch-2.7.6.tar.xz
cd patch-2.7.6

./configure --prefix=/tools

make

#make check

make install

cd $LFS/toolchain
rm -rf patch-2.7.6
