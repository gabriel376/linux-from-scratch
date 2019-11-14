#!/bin/bash

cd $LFS/toolchain
tar -xf file-5.37.tar.gz
cd file-5.37

./configure --prefix=/tools

make

#make check

make install

cd $LFS/toolchain
rm -rf file-5.37
