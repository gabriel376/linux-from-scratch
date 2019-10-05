#!/bin/bash

cd /toolchain
tar -xf iana-etc-2.30.tar.bz2
cd iana-etc-2.30

make

make install

cd /toolchain
rm -rf iana-etc-2.30
