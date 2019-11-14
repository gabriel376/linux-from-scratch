#!/bin/bash

cd $LFS/toolchain
tar -xf tcl8.6.9-src.tar.gz
cd tcl8.6.9

cd unix
./configure --prefix=/tools

make

#TZ=UTC make test

make install

chmod -v u+w /tools/lib/libtcl8.6.so

make install-private-headers

ln -sv tclsh8.6 /tools/bin/tclsh

cd $LFS/toolchain
rm -rf tcl8.6.9
