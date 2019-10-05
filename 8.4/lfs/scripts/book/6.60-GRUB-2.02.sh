#!/bin/bash

cd /toolchain
tar -xf grub-2.02.tar.xz
cd grub-2.02

./configure --prefix=/usr          \
            --sbindir=/sbin        \
            --sysconfdir=/etc      \
            --disable-efiemu       \
            --disable-werror

make

make install

mv -v /etc/bash_completion.d/grub /usr/share/bash-completion/completions

cd /toolchain
rm -rf grub-2.02
