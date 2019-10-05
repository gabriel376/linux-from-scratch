#!/bin/bash

cd /toolchain
tar -xf automake-1.16.1.tar.xz
cd automake-1.16.1

./configure --prefix=/usr --docdir=/usr/share/doc/automake-1.16.1

make

#make -j4 check

make install

cd /toolchain
rm -rf automake-1.16.1
