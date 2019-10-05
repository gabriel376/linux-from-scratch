#!/bin/bash

cd /toolchain
tar -xf psmisc-23.2.tar.xz
cd psmisc-23.2

./configure --prefix=/usr

make

make install

mv -v /usr/bin/fuser   /bin
mv -v /usr/bin/killall /bin

cd /toolchain
rm -rf psmisc-23.2
