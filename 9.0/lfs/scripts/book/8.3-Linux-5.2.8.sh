#!/bin/bash

cd $LFS/toolchain
tar -xf linux-5.2.8.tar.xz
cd linux-5.2.8

chown -R 0:0 .

make mrproper

#make menuconfig
cp ../../config/kernel.config .config

make

make modules_install

cp -iv arch/x86/boot/bzImage /boot/vmlinuz-5.2.8-lfs-9.0

cp -iv System.map /boot/System.map-5.2.8

cp -iv .config /boot/config-5.2.8

install -d /usr/share/doc/linux-5.2.8
cp -r Documentation/* /usr/share/doc/linux-5.2.8

install -v -m755 -d /etc/modprobe.d
cat > /etc/modprobe.d/usb.conf << "EOF"
# Begin /etc/modprobe.d/usb.conf

install ohci_hcd /sbin/modprobe ehci_hcd ; /sbin/modprobe -i ohci_hcd ; true
install uhci_hcd /sbin/modprobe ehci_hcd ; /sbin/modprobe -i uhci_hcd ; true

# End /etc/modprobe.d/usb.conf
EOF

cd $LFS/toolchain
rm -rf linux-5.2.8
