#!/bin/bash

cd /toolchain
tar -xf man-pages-4.16.tar.xz
cd man-pages-4.16

make install

cd /toolchain
rm -rf man-pages-4.16
