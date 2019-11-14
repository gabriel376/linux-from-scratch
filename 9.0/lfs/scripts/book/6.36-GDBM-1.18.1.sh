#!/bin/bash

cd /toolchain
tar -xf gdbm-1.18.1.tar.gz
cd gdbm-1.18.1

./configure --prefix=/usr    \
            --disable-static \
            --enable-libgdbm-compat

make

#make check

make install

cd /toolchain
rm -rf gdbm-1.18.1
