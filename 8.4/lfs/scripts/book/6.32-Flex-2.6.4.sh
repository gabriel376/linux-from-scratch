#!/bin/bash

cd /toolchain
tar -xf flex-2.6.4.tar.gz
cd flex-2.6.4

sed -i "/math.h/a #include <malloc.h>" src/flexdef.h

HELP2MAN=/tools/bin/true \
./configure --prefix=/usr --docdir=/usr/share/doc/flex-2.6.4

make

#make check

make install

ln -sv flex /usr/bin/lex

cd /toolchain
rm -rf flex-2.6.4
