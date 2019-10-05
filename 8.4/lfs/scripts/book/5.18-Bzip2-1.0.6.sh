#!/bin/bash

cd $LFS/toolchain
tar -xf bzip2-1.0.6.tar.gz
cd bzip2-1.0.6

make

make PREFIX=/tools install

cd $LFS/toolchain
rm -rf bzip2-1.0.6
