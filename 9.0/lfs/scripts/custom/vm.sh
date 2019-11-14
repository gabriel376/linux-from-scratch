#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage:    vm.sh [iso]"
    exit 1
fi

iso="$1"
base=$(basename $iso)
name="${base%.*}"
disk="build/${name}.vdi"

# remove vm
VBoxManage unregistervm \
    ${name} --delete

# create vm
VBoxManage createvm   \
    --name ${name}    \
    --ostype Linux_64 \
    --register

# delete disk
VBoxManage closemedium \
    disk ${disk}       \
    --delete

# create disk
VBoxManage createmedium \
    --filename ${disk}  \
    --size 10240

# create storage
VBoxManage storagectl \
    ${name}           \
    --name IDE        \
    --add ide

# create hd
VBoxManage storageattach \
    ${name}              \
    --storagectl IDE     \
    --port 0             \
    --device 0           \
    --type hdd           \
    --medium ${disk}

# create dvd
VBoxManage storageattach \
    ${name}              \
    --storagectl IDE     \
    --port 1             \
    --device 0           \
    --type dvddrive      \
    --medium ${iso}

# configure vm
VBoxManage modifyvm ${name} \
    --memory 2048           \
    --vram 16               \
    --ioapic on             \
    --boot1 dvd             \
    --boot2 disk            \
    --boot3 none            \
    --boot4 none            \
    --cpus 2

# start vm
VBoxManage startvm ${name}
