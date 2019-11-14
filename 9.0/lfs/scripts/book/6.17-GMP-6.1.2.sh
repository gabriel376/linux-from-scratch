#!/bin/bash

cd /toolchain
tar -xf gmp-6.1.2.tar.xz
cd gmp-6.1.2

cp -v configfsf.guess config.guess
cp -v configfsf.sub   config.sub

./configure --prefix=/usr    \
            --enable-cxx     \
            --disable-static \
            --docdir=/usr/share/doc/gmp-6.1.2

make

make html

#make check 2>&1 | tee gmp-check-log
#awk '/# PASS:/{total+=$3} ; END{print total}' gmp-check-log

make install

make install-html

cd /toolchain
rm -rf gmp-6.1.2
