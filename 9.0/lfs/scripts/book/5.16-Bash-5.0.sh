#!/bin/bash

cd $LFS/toolchain
tar -xf bash-5.0.tar.gz
cd bash-5.0

./configure --prefix=/tools --without-bash-malloc

make

#make tests

make install

ln -sv bash /tools/bin/sh

cd $LFS/toolchain
rm -rf bash-5.0
