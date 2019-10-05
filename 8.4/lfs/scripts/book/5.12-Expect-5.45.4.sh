#!/bin/bash

cd $LFS/toolchain
tar -xf expect5.45.4.tar.gz
cd expect5.45.4

cp -v configure{,.orig}
sed 's:/usr/local/bin:/bin:' configure.orig > configure

./configure --prefix=/tools       \
            --with-tcl=/tools/lib \
            --with-tclinclude=/tools/include

make

#make test

make SCRIPTS="" install

cd $LFS/toolchain
rm -rf expect5.45.4
