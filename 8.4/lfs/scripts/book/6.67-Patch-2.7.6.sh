#!/bin/bash

cd /toolchain
tar -xf patch-2.7.6.tar.xz
cd patch-2.7.6

./configure --prefix=/usr

make

#make check

make install

cd /toolchain
rm -rf patch-2.7.6
