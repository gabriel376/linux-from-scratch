#!/bin/bash

cd $LFS/toolchain
tar -xf sed-4.7.tar.xz
cd sed-4.7

./configure --prefix=/tools

make

#make check

make install

cd $LFS/toolchain
rm -rf sed-4.7
