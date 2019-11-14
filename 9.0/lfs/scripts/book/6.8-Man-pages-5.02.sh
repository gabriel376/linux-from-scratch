#!/bin/bash

cd /toolchain
tar -xf man-pages-5.02.tar.xz
cd man-pages-5.02

make install

cd /toolchain
rm -rf man-pages-5.02
