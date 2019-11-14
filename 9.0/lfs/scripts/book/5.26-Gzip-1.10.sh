#!/bin/bash

cd $LFS/toolchain
tar -xf gzip-1.10.tar.xz
cd gzip-1.10

./configure --prefix=/tools

make

#make check

make install

cd $LFS/toolchain
rm -rf gzip-1.10
