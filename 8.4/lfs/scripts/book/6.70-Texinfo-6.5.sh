#!/bin/bash

cd /toolchain
tar -xf texinfo-6.5.tar.xz
cd texinfo-6.5

sed -i '5481,5485 s/({/(\\{/' tp/Texinfo/Parser.pm

./configure --prefix=/usr --disable-static

make

#make check

make install

make TEXMF=/usr/share/texmf install-tex

cd /toolchain
rm -rf texinfo-6.5
