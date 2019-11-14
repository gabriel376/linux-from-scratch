#!/bin/bash

cd /toolchain
tar -xf libpipeline-1.5.1.tar.gz
cd libpipeline-1.5.1

./configure --prefix=/usr

make

#make check

make install

cd /toolchain
rm -rf libpipeline-1.5.1
