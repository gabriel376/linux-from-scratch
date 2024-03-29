#!/bin/bash

cd /toolchain
tar -xf binutils-2.32.tar.xz
cd binutils-2.32

expect -c "spawn ls"

sed -i '/@\tincremental_copy/d' gold/testsuite/Makefile.in

mkdir -v build
cd       build

../configure --prefix=/usr       \
             --enable-gold       \
             --enable-ld=default \
             --enable-plugins    \
             --enable-shared     \
             --disable-werror    \
             --enable-64-bit-bfd \
             --with-system-zlib

make tooldir=/usr

#make -k check

make tooldir=/usr install

cd /toolchain
rm -rf binutils-2.32
