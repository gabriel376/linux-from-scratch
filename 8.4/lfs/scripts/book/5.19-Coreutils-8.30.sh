#!/bin/bash

cd $LFS/toolchain
tar -xf coreutils-8.30.tar.xz
cd coreutils-8.30

./configure --prefix=/tools --enable-install-program=hostname

make

#make RUN_EXPENSIVE_TESTS=yes check

make install

cd $LFS/toolchain
rm -rf coreutils-8.30
