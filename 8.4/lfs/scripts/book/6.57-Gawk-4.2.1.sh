#!/bin/bash

cd /toolchain
tar -xf gawk-4.2.1.tar.xz
cd gawk-4.2.1

sed -i 's/extras//' Makefile.in

./configure --prefix=/usr

make

#make check

make install

mkdir -v /usr/share/doc/gawk-4.2.1
cp    -v doc/{awkforai.txt,*.{eps,pdf,jpg}} /usr/share/doc/gawk-4.2.1

cd /toolchain
rm -rf gawk-4.2.1
