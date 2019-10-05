#!/bin/bash

cd /toolchain
tar -xf lfs-bootscripts-20180820.tar.bz2
cd lfs-bootscripts-20180820

make install

cd /toolchain
rm -rf lfs-bootscripts-20180820
