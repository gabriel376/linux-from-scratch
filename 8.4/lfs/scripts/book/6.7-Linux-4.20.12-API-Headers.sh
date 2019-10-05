#!/bin/bash

cd /toolchain
tar -xf linux-4.20.12.tar.xz
cd linux-4.20.12

make mrproper

make INSTALL_HDR_PATH=dest headers_install

find dest/include \( -name .install -o -name ..install.cmd \) -delete
cp -rv dest/include/* /usr/include

cd /toolchain
rm -rf linux-4.20.12
