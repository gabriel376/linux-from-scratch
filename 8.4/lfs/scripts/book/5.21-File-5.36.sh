#!/bin/bash

cd $LFS/toolchain
tar -xf file-5.36.tar.gz
cd file-5.36

./configure --prefix=/tools

make

#make check

make install

cd $LFS/toolchain
rm -rf file-5.36
