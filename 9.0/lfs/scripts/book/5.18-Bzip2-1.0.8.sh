#!/bin/bash

cd $LFS/toolchain
tar -xf bzip2-1.0.8.tar.gz
cd bzip2-1.0.8

make

make PREFIX=/tools install

cd $LFS/toolchain
rm -rf bzip2-1.0.8
