#!/bin/bash

cd /toolchain
tar -xf tar-1.32.tar.xz
cd tar-1.32

FORCE_UNSAFE_CONFIGURE=1      \
    ./configure --prefix=/usr \
                --bindir=/bin

make

#make check

make install
make -C doc install-html docdir=/usr/share/doc/tar-1.32

cd /toolchain
rm -rf tar-1.32
