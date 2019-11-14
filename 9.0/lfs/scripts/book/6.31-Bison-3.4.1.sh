#!/bin/bash

cd /toolchain
tar -xf bison-3.4.1.tar.xz
cd bison-3.4.1

sed -i '6855 s/mv/cp/' Makefile.in

./configure --prefix=/usr --docdir=/usr/share/doc/bison-3.4.1

make -j1

make install

cd /toolchain
rm -rf bison-3.4.1
