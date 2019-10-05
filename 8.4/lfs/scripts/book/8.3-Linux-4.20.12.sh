#!/bin/bash

cd $LFS/toolchain
tar -xf linux-4.20.12.tar.xz
cd linux-4.20.12

chown -R 0:0 .

make mrproper

#make menuconfig
cp ../../config/kernel.config .config

make

make modules_install

cp -iv arch/x86/boot/bzImage /boot/vmlinuz-4.20.12-lfs-8.4

cp -iv System.map /boot/System.map-4.20.12

cp -iv .config /boot/config-4.20.12

install -d /usr/share/doc/linux-4.20.12
cp -r Documentation/* /usr/share/doc/linux-4.20.12

install -v -m755 -d /etc/modprobe.d
cat > /etc/modprobe.d/usb.conf << "EOF"
# Begin /etc/modprobe.d/usb.conf

install ohci_hcd /sbin/modprobe ehci_hcd ; /sbin/modprobe -i ohci_hcd ; true
install uhci_hcd /sbin/modprobe ehci_hcd ; /sbin/modprobe -i uhci_hcd ; true

# End /etc/modprobe.d/usb.conf
EOF

cd $LFS/toolchain
rm -rf linux-4.20.12
