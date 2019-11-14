#!/bin/bash

rm -v /bin/sh
ln -sv /bin/bash /bin/sh

apt-get update

apt-get install -y \
    coreutils      \
    binutils       \
    bison          \
    byacc          \
    bzip2          \
    flex           \
    libssl-dev     \
    libelf-dev     \
    gcc            \
    g++            \
    m4             \
    gawk           \
    make           \
    patch          \
    python3        \
    texinfo        \
    wget           \
    sudo           \
    genisoimage
