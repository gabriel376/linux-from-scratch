#!/bin/bash

cd /toolchain
tar -xf openssl-1.1.1c.tar.gz
cd openssl-1.1.1c

sed -i '/\} data/s/ =.*$/;\n    memset(\&data, 0, sizeof(data));/' \
    crypto/rand/rand_lib.c

./config --prefix=/usr         \
         --openssldir=/etc/ssl \
         --libdir=lib          \
         shared                \
         zlib-dynamic

make

#make test

sed -i '/INSTALL_LIBS/s/libcrypto.a libssl.a//' Makefile
make MANSUFFIX=ssl install

mv -v /usr/share/doc/openssl /usr/share/doc/openssl-1.1.1c
cp -vfr doc/* /usr/share/doc/openssl-1.1.1c

cd /toolchain
rm -rf openssl-1.1.1c
