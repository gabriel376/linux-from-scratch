#!/bin/bash

cd $LFS/toolchain
tar -xf make-4.2.1.tar.gz
cd make-4.2.1

sed -i '211,217 d; 219,229 d; 232 d' glob/glob.c

./configure --prefix=/tools --without-guile

make

#make check

make install

cd $LFS/toolchain
rm -rf make-4.2.1
