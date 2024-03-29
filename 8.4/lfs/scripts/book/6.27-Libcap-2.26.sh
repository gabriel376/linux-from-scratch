#!/bin/bash

cd /toolchain
tar -xf libcap-2.26.tar.xz
cd libcap-2.26

sed -i '/install.*STALIBNAME/d' libcap/Makefile

make

make RAISE_SETFCAP=no lib=lib prefix=/usr install

chmod -v 755 /usr/lib/libcap.so.2.26
mv -v /usr/lib/libcap.so.* /lib
ln -sfv ../../lib/$(readlink /usr/lib/libcap.so) /usr/lib/libcap.so

cd /toolchain
rm -rf libcap-2.26
