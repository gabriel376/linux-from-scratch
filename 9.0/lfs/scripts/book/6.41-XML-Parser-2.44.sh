#!/bin/bash

cd /toolchain
tar -xf XML-Parser-2.44.tar.gz
cd XML-Parser-2.44

perl Makefile.PL

make

#make test

make install

cd /toolchain
rm -rf XML-Parser-2.44
