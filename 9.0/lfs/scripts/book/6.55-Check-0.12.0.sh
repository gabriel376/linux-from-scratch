#!/bin/bash

cd /toolchain
tar -xf check-0.12.0.tar.gz
cd check-0.12.0

./configure --prefix=/usr

make

#make check

make docdir=/usr/share/doc/check-0.12.0 install

sed -i '1 s/tools/usr/' /usr/bin/checkmk

cd /toolchain
rm -rf check-0.12.0
