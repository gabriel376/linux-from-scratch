#!/bin/bash

cd $LFS/toolchain
tar -xf linux-5.2.8.tar.xz
cd linux-5.2.8

make mrproper

make INSTALL_HDR_PATH=dest headers_install

cp -rv dest/include/* /tools/include

cd $LFS/toolchain
rm -rf linux-5.2.8
