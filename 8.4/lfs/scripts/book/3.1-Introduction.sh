#!/bin/bash

mkdir -v $LFS/toolchain

chmod -v a+wt $LFS/toolchain

wget --input-file=scripts/wget-list --continue --directory-prefix=$LFS/toolchain

md5sum -c config/md5sums
