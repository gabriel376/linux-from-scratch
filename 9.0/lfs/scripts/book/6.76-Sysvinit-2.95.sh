#!/bin/bash

cd /toolchain
tar -xf sysvinit-2.95.tar.xz
cd sysvinit-2.95

patch -Np1 -i ../sysvinit-2.95-consolidated-1.patch

make

make install

cd /toolchain
rm -rf sysvinit-2.95
