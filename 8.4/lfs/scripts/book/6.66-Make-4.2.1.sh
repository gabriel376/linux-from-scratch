#!/bin/bash

cd /toolchain
tar -xf make-4.2.1.tar.bz2
cd make-4.2.1

sed -i '211,217 d; 219,229 d; 232 d' glob/glob.c

./configure --prefix=/usr

make

#make PERL5LIB=$PWD/tests/ check

make install

cd /toolchain
rm -rf make-4.2.1
