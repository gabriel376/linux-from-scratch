#!/bin/bash

cd /toolchain
tar -xf file-5.37.tar.gz
cd file-5.37

./configure --prefix=/usr

make

#make check

make install

cd /toolchain
rm -rf file-5.37
