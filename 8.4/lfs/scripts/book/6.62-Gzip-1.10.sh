#!/bin/bash

cd /toolchain
tar -xf gzip-1.10.tar.xz
cd gzip-1.10

./configure --prefix=/usr

make

#make check

make install

mv -v /usr/bin/gzip /bin

cd /toolchain
rm -rf gzip-1.10
