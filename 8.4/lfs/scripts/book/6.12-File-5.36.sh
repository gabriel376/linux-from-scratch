#!/bin/bash

cd /toolchain
tar -xf file-5.36.tar.gz
cd file-5.36

./configure --prefix=/usr

make

#make check

make install

cd /toolchain
rm -rf file-5.36
