#!/bin/bash

source scripts/custom/utils.sh

# prepare environment
run scripts/book/2.2-Host-System-Requirements.sh
run scripts/book/3.1-Introduction.sh
run scripts/book/4.2-Creating-the-LFS-tools-Directory.sh
run scripts/book/4.3-Adding-the-LFS-User.sh

# run build as lfs user
sudo -u lfs /bin/bash - << EOF || exit 1
    env -i HOME=/home/lfs TERM=$TERM PS1='\u:\w\$ ' /bin/bash -c "
        cd $LFS
        source scripts/custom/utils.sh

        run scripts/book/4.4-Setting-Up-the-Environment.sh
        source ~/.bashrc

        run scripts/book/5.4-Binutils-2.32-Pass-1.sh
        run scripts/book/5.5-GCC-8.2.0-Pass-1.sh
        run scripts/book/5.6-Linux-4.20.12-API-Headers.sh
        run scripts/book/5.7-Glibc-2.29.sh
        run scripts/book/5.8-Libstdc++-from-GCC-8.2.0.sh
        run scripts/book/5.9-Binutils-2.32-Pass-2.sh
        run scripts/book/5.10-GCC-8.2.0-Pass-2.sh
        run scripts/book/5.11-Tcl-8.6.9.sh
        run scripts/book/5.12-Expect-5.45.4.sh
        run scripts/book/5.13-DejaGNU-1.6.2.sh
        run scripts/book/5.14-M4-1.4.18.sh
        run scripts/book/5.15-Ncurses-6.1.sh
        run scripts/book/5.16-Bash-5.0.sh
        run scripts/book/5.17-Bison-3.3.2.sh
        run scripts/book/5.18-Bzip2-1.0.6.sh
        run scripts/book/5.19-Coreutils-8.30.sh
        run scripts/book/5.20-Diffutils-3.7.sh
        run scripts/book/5.21-File-5.36.sh
        run scripts/book/5.22-Findutils-4.6.0.sh
        run scripts/book/5.23-Gawk-4.2.1.sh
        run scripts/book/5.24-Gettext-0.19.8.1.sh
        run scripts/book/5.25-Grep-3.3.sh
        run scripts/book/5.26-Gzip-1.10.sh
        run scripts/book/5.27-Make-4.2.1.sh
        run scripts/book/5.28-Patch-2.7.6.sh
        run scripts/book/5.29-Perl-5.28.1.sh
        run scripts/book/5.30-Python-3.7.2.sh
        run scripts/book/5.31-Sed-4.7.sh
        run scripts/book/5.32-Tar-1.31.sh
        run scripts/book/5.33-Texinfo-6.5.sh
        run scripts/book/5.34-Xz-5.2.4.sh
    "
EOF

run scripts/book/5.35-Stripping.sh

# prepare environment
run scripts/book/5.36-Changing-Ownership.sh
run scripts/book/6.2-Preparing-Virtual-Kernel-File-Systems.sh

# run build as root user in chroot
chroot "$LFS" /tools/bin/env -i                   \
    HOME=/root                                    \
    TERM="$TERM"                                  \
    PS1='(lfs chroot) \u:\w\$ '                   \
    PATH=/bin:/usr/bin:/sbin:/usr/sbin:/tools/bin \
    /tools/bin/bash --login +h -c "
source scripts/custom/utils.sh
run scripts/book/6.5-Creating-Directories.sh
run scripts/book/6.6-Creating-Essential-Files-and-Symlinks.sh
run scripts/book/6.7-Linux-4.20.12-API-Headers.sh
run scripts/book/6.8-Man-pages-4.16.sh
run scripts/book/6.9-Glibc-2.29.sh
run scripts/book/6.10-Adjusting-the-Toolchain.sh
run scripts/book/6.11-Zlib-1.2.11.sh
run scripts/book/6.12-File-5.36.sh
run scripts/book/6.13-Readline-8.0.sh
run scripts/book/6.14-M4-1.4.18.sh
run scripts/book/6.15-Bc-1.07.1.sh
run scripts/book/6.16-Binutils-2.32.sh
run scripts/book/6.17-GMP-6.1.2.sh
run scripts/book/6.18-MPFR-4.0.2.sh
run scripts/book/6.19-MPC-1.1.0.sh
run scripts/book/6.20-Shadow-4.6.sh
run scripts/book/6.21-GCC-8.2.0.sh
run scripts/book/6.22-Bzip2-1.0.6.sh
run scripts/book/6.23-Pkg-config-0.29.2.sh
run scripts/book/6.24-Ncurses-6.1.sh
run scripts/book/6.25-Attr-2.4.48.sh
run scripts/book/6.26-Acl-2.2.53.sh
run scripts/book/6.27-Libcap-2.26.sh
run scripts/book/6.28-Sed-4.7.sh
run scripts/book/6.29-Psmisc-23.2.sh
run scripts/book/6.30-Iana-Etc-2.30.sh
run scripts/book/6.31-Bison-3.3.2.sh
run scripts/book/6.32-Flex-2.6.4.sh
run scripts/book/6.33-Grep-3.3.sh
run scripts/book/6.34-Bash-5.0.sh
run scripts/book/6.35-Libtool-2.4.6.sh
run scripts/book/6.36-GDBM-1.18.1.sh
run scripts/book/6.37-Gperf-3.1.sh
run scripts/book/6.38-Expat-2.2.6.sh
run scripts/book/6.39-Inetutils-1.9.4.sh
run scripts/book/6.40-Perl-5.28.1.sh
run scripts/book/6.41-XML-Parser-2.44.sh
run scripts/book/6.42-Intltool-0.51.0.sh
run scripts/book/6.43-Autoconf-2.69.sh
run scripts/book/6.44-Automake-1.16.1.sh
run scripts/book/6.45-Xz-5.2.4.sh
run scripts/book/6.46-Kmod-26.sh
run scripts/book/6.47-Gettext-0.19.8.1.sh
run scripts/book/6.48-Libelf-from-Elfutils-0.176.sh
run scripts/book/6.49-Libffi-3.2.1.sh
run scripts/book/6.50-OpenSSL-1.1.1a.sh
run scripts/book/6.51-Python-3.7.2.sh
run scripts/book/6.52-Ninja-1.9.0.sh
run scripts/book/6.53-Meson-0.49.2.sh
run scripts/book/6.54-Coreutils-8.30.sh
run scripts/book/6.55-Check-0.12.0.sh
run scripts/book/6.56-Diffutils-3.7.sh
run scripts/book/6.57-Gawk-4.2.1.sh
run scripts/book/6.58-Findutils-4.6.0.sh
run scripts/book/6.59-Groff-1.22.4.sh
run scripts/book/6.60-GRUB-2.02.sh
run scripts/book/6.61-Less-530.sh
run scripts/book/6.62-Gzip-1.10.sh
run scripts/book/6.63-IPRoute2-4.20.0.sh
run scripts/book/6.64-Kbd-2.0.4.sh
run scripts/book/6.65-Libpipeline-1.5.1.sh
run scripts/book/6.66-Make-4.2.1.sh
run scripts/book/6.67-Patch-2.7.6.sh
run scripts/book/6.68-Man-DB-2.8.5.sh
run scripts/book/6.69-Tar-1.31.sh
run scripts/book/6.70-Texinfo-6.5.sh
run scripts/book/6.71-Vim-8.1.sh
run scripts/book/6.72-Procps-ng-3.3.15.sh
run scripts/book/6.73-Util-linux-2.33.1.sh
run scripts/book/6.74-E2fsprogs-1.44.5.sh
run scripts/book/6.75-Sysklogd-1.5.1.sh
run scripts/book/6.76-Sysvinit-2.93.sh
run scripts/book/6.77-Eudev-3.2.7.sh
run scripts/book/6.79-Stripping-Again.sh
run scripts/book/6.80-Cleaning-Up.sh
" || exit 1

# run build as root user in chroot
chroot "$LFS" /usr/bin/env -i          \
    HOME=/root                         \
    TERM="$TERM"                       \
    PS1='(lfs chroot) \u:\w\$ '        \
    PATH=/bin:/usr/bin:/sbin:/usr/sbin \
    /bin/bash --login -c "
source scripts/custom/utils.sh
run scripts/book/7.2-LFS-Bootscripts-20180820.sh
run scripts/book/7.4-Managing-Devices.sh
run scripts/book/7.5-General-Network-Configuration.sh
run scripts/book/7.6-System-V-Bootscript-Usage-and-Configuration.sh
run scripts/book/7.8-Creating-the-etc-inputrc-File.sh
run scripts/book/7.9-Creating-the-etc-shells-File.sh
run scripts/book/8.2-Creating-the-etc-fstab-File.sh
run scripts/book/8.3-Linux-4.20.12.sh
run scripts/book/9.1-The-End.sh
run scripts/book/9.3-Rebooting-the-System.sh
" || exit 1

# build iso image
run scripts/custom/iso-image.sh
