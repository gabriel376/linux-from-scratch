#!/bin/bash

cd /toolchain
tar -xf iproute2-5.2.0.tar.xz
cd iproute2-5.2.0

sed -i /ARPD/d Makefile
rm -fv man/man8/arpd.8

sed -i 's/.m_ipt.o//' tc/Makefile

make

make DOCDIR=/usr/share/doc/iproute2-5.2.0 install

cd /toolchain
rm -rf iproute2-5.2.0
