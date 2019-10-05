#!/bin/bash

cd /toolchain
tar -xf grep-3.3.tar.xz
cd grep-3.3

./configure --prefix=/usr --bindir=/bin

make

#make -k check

make install

cd /toolchain
rm -rf grep-3.3
