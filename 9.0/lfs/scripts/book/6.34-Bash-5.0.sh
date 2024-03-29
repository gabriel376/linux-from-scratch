#!/bin/bash

cd /toolchain
tar -xf bash-5.0.tar.gz
cd bash-5.0

./configure --prefix=/usr                    \
            --docdir=/usr/share/doc/bash-5.0 \
            --without-bash-malloc            \
            --with-installed-readline

make

#chown -Rv nobody .
#su nobody -s /bin/bash -c "PATH=$PATH HOME=/home make tests"

make install

mv -vf /usr/bin/bash /bin

#exec /bin/bash --login +h

cd /toolchain
rm -rf bash-5.0
