#!/bin/bash

cd /toolchain
tar -xf libtool-2.4.6.tar.xz
cd libtool-2.4.6

./configure --prefix=/usr

make

#make check

make install

cd /toolchain
rm -rf libtool-2.4.6
