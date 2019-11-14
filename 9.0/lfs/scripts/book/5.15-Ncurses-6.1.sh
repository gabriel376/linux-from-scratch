#!/bin/bash

cd $LFS/toolchain
tar -xf ncurses-6.1.tar.gz
cd ncurses-6.1

sed -i s/mawk// configure

./configure --prefix=/tools \
            --with-shared   \
            --without-debug \
            --without-ada   \
            --enable-widec  \
            --enable-overwrite

make

make install

ln -s libncursesw.so /tools/lib/libncurses.so

cd $LFS/toolchain
rm -rf ncurses-6.1
