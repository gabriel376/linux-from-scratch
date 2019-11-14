#!/bin/bash

cd /toolchain
tar -xf meson-0.51.1.tar.gz
cd meson-0.51.1

python3 setup.py build

python3 setup.py install --root=dest
cp -rv dest/* /

cd /toolchain
rm -rf meson-0.51.1
