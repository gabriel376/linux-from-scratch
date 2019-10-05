#!/bin/bash

cd /toolchain
tar -xf man-db-2.8.5.tar.xz
cd man-db-2.8.5

./configure --prefix=/usr                        \
            --docdir=/usr/share/doc/man-db-2.8.5 \
            --sysconfdir=/etc                    \
            --disable-setuid                     \
            --enable-cache-owner=bin             \
            --with-browser=/usr/bin/lynx         \
            --with-vgrind=/usr/bin/vgrind        \
            --with-grap=/usr/bin/grap            \
            --with-systemdtmpfilesdir=           \
            --with-systemdsystemunitdir=

make

#make check

make install

cd /toolchain
rm -rf man-db-2.8.5
