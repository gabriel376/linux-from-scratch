#!/bin/bash

cd /toolchain
tar -xf bc-2.1.3.tar.gz
cd bc-2.1.3

PREFIX=/usr CC=gcc CFLAGS="-std=c99" ./configure.sh -G -O3

make

#make test

make install

cd /toolchain
rm -rf bc-2.1.3
