#!/bin/bash

cd /toolchain
tar -xf openssl-1.1.1a.tar.gz
cd openssl-1.1.1a

./config --prefix=/usr         \
         --openssldir=/etc/ssl \
         --libdir=lib          \
         shared                \
         zlib-dynamic

make

#make test

sed -i '/INSTALL_LIBS/s/libcrypto.a libssl.a//' Makefile
make MANSUFFIX=ssl install

mv -v /usr/share/doc/openssl /usr/share/doc/openssl-1.1.1a
cp -vfr doc/* /usr/share/doc/openssl-1.1.1a

cd /toolchain
rm -rf openssl-1.1.1a
