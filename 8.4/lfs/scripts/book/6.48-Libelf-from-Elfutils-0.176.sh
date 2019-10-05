#!/bin/bash

cd /toolchain
tar -xf elfutils-0.176.tar.bz2
cd elfutils-0.176

./configure --prefix=/usr

make

#make check

make -C libelf install

install -vm644 config/libelf.pc /usr/lib/pkgconfig

cd /toolchain
rm -rf elfutils-0.176
