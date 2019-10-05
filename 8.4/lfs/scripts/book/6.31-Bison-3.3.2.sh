#!/bin/bash

cd /toolchain
tar -xf bison-3.3.2.tar.xz
cd bison-3.3.2

./configure --prefix=/usr --docdir=/usr/share/doc/bison-3.3.2

make

make install

cd /toolchain
rm -rf bison-3.3.2
