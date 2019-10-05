#!/bin/bash

echo 8.4 > /etc/lfs-release

cat > /etc/lsb-release << "EOF"
DISTRIB_ID="Linux From Scratch"
DISTRIB_RELEASE="8.4"
DISTRIB_CODENAME="gabriel376"
DISTRIB_DESCRIPTION="Linux From Scratch"
EOF

cat > /etc/shadow << "EOF"
root::12699:0:::::
EOF
