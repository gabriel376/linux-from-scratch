#!/bin/bash

cd /toolchain
tar -xf groff-1.22.4.tar.gz
cd groff-1.22.4

PAGE=A4 ./configure --prefix=/usr

make -j1

make install

cd /toolchain
rm -rf groff-1.22.4
