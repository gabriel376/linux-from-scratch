#!/bin/bash

cd $LFS/toolchain
tar -xf gettext-0.20.1.tar.xz
cd gettext-0.20.1

./configure --prefix=/tools --disable-shared

make

cp -v gettext-tools/src/{msgfmt,msgmerge,xgettext} /tools/bin

cd $LFS/toolchain
rm -rf gettext-0.20.1
