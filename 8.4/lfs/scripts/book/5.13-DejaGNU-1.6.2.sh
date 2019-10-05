#!/bin/bash

cd $LFS/toolchain
tar -xf dejagnu-1.6.2.tar.gz
cd dejagnu-1.6.2

./configure --prefix=/tools

make install

#make check

cd $LFS/toolchain
rm -rf dejagnu-1.6.2
