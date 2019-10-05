#!/bin/bash

loop="/dev/loop0"
size="1000000"
dir="loop"
ramdisk="ramdisk"

cd /tmp

mkdir {isolinux,${dir}}

dd if=/dev/zero of=${ramdisk} bs=1k count=${size}
losetup ${loop} ${ramdisk}
mke2fs -q -i 16384 -m 0 ${loop} ${size}

mount ${loop} ${dir}
rm -rf ${dir}/lost+found

cp -dpr $LFS/{bin,boot,dev,etc,home,lib,lib64,media,mnt,opt,proc,root,run,sbin,srv,sys,tmp,usr,var} ${dir}
sync
bzip2 -c ${ramdisk} > isolinux/ramdisk.img

umount ${dir}
losetup -d ${loop}
rm -rf ${dir} ${ramdisk}

tar -xf $LFS/toolchain/syslinux-6.03.tar.xz -C .
cp syslinux-6.03/bios/core/isolinux.bin                 isolinux/
cp syslinux-6.03/bios/com32/elflink/ldlinux/ldlinux.c32 isolinux/
rm -rf syslinux-6.03

cp $LFS/boot/vmlinuz-* isolinux/vmlinuz

cat > isolinux/isolinux.cfg <<"EOF"
PROMT 0
DEFAULT arch
LABEL arch
    KERNEL vmlinuz
    APPEND initrd=ramdisk.img net.ifnames=0 root=/dev/ram0 3
EOF

genisoimage -o lfs.iso                \
            -b isolinux/isolinux.bin  \
            -c isolinux/boot.cat      \
            -no-emul-boot             \
            -boot-load-size 4         \
            -boot-info-table .
