#!/bin/bash

groupadd lfs

useradd -s /bin/bash -g lfs -m -k /dev/null lfs

echo "lfs:lfs" | chpasswd

chown -v lfs $LFS/tools
chown -v lfs $LFS/toolchain
