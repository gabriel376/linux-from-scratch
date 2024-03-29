#!/bin/bash

cd /toolchain
tar -xf eudev-3.2.8.tar.gz
cd eudev-3.2.8

./configure --prefix=/usr           \
            --bindir=/sbin          \
            --sbindir=/sbin         \
            --libdir=/usr/lib       \
            --sysconfdir=/etc       \
            --libexecdir=/lib       \
            --with-rootprefix=      \
            --with-rootlibdir=/lib  \
            --enable-manpages       \
            --disable-static

make

mkdir -pv /lib/udev/rules.d
mkdir -pv /etc/udev/rules.d

#make check

make install

tar -xvf ../udev-lfs-20171102.tar.xz
make -f udev-lfs-20171102/Makefile.lfs install

udevadm hwdb --update

cd /toolchain
rm -rf eudev-3.2.8
