#!/bin/bash

cd /toolchain
tar -xf util-linux-2.34.tar.xz
cd util-linux-2.34

mkdir -pv /var/lib/hwclock

./configure ADJTIME_PATH=/var/lib/hwclock/adjtime   \
            --docdir=/usr/share/doc/util-linux-2.34 \
            --disable-chfn-chsh  \
            --disable-login      \
            --disable-nologin    \
            --disable-su         \
            --disable-setpriv    \
            --disable-runuser    \
            --disable-pylibmount \
            --disable-static     \
            --without-python     \
            --without-systemd    \
            --without-systemdsystemunitdir

make

#chown -Rv nobody .
#su nobody -s /bin/bash -c "PATH=$PATH make -k check"

make install

cd /toolchain
rm -rf util-linux-2.34
