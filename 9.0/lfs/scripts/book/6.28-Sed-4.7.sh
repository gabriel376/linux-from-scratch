#!/bin/bash

cd /toolchain
tar -xf sed-4.7.tar.xz
cd sed-4.7

sed -i 's/usr/tools/'                 build-aux/help2man
sed -i 's/testsuite.panic-tests.sh//' Makefile.in

./configure --prefix=/usr --bindir=/bin

make

make html

#make check

make install

install -d -m755           /usr/share/doc/sed-4.7
install -m644 doc/sed.html /usr/share/doc/sed-4.7

cd /toolchain
rm -rf sed-4.7
