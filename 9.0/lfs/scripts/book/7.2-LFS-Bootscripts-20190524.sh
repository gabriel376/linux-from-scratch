#!/bin/bash

cd /toolchain
tar -xf lfs-bootscripts-20190524.tar.xz
cd lfs-bootscripts-20190524

make install

cd /toolchain
rm -rf lfs-bootscripts-20190524
