#!/bin/bash

cd /toolchain
tar -xf texinfo-6.6.tar.xz
cd texinfo-6.6

./configure --prefix=/usr --disable-static

make

#make check

make install

make TEXMF=/usr/share/texmf install-tex

cd /toolchain
rm -rf texinfo-6.6
