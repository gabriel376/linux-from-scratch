#!/bin/bash

cd /toolchain
tar -xf linux-5.2.8.tar.xz
cd linux-5.2.8

make mrproper

make INSTALL_HDR_PATH=dest headers_install

find dest/include \( -name .install -o -name ..install.cmd \) -delete
cp -rv dest/include/* /usr/include

cd /toolchain
rm -rf linux-5.2.8
