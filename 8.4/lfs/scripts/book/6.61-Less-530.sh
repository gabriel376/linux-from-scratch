#!/bin/bash

cd /toolchain
tar -xf less-530.tar.gz
cd less-530

./configure --prefix=/usr --sysconfdir=/etc

make

make install

cd /toolchain
rm -rf less-530
