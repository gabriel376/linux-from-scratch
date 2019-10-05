#!/bin/bash

cd /toolchain
tar -xf tar-1.31.tar.xz
cd tar-1.31

sed -i 's/abort.*/FALLTHROUGH;/' src/extract.c

FORCE_UNSAFE_CONFIGURE=1  \
./configure --prefix=/usr \
            --bindir=/bin

make

#make check

make install
make -C doc install-html docdir=/usr/share/doc/tar-1.31

cd /toolchain
rm -rf tar-1.31
