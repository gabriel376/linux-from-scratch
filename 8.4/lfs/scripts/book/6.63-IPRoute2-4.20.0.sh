#!/bin/bash

cd /toolchain
tar -xf iproute2-4.20.0.tar.xz
cd iproute2-4.20.0

sed -i /ARPD/d Makefile
rm -fv man/man8/arpd.8

sed -i 's/.m_ipt.o//' tc/Makefile

make

make DOCDIR=/usr/share/doc/iproute2-4.20.0 install

cd /toolchain
rm -rf iproute2-4.20.0
