# Linux From Scratch 8.4
![example](https://raw.githubusercontent.com/gabriel376/linux-from-scratch/master/8.4/lfs/example.jpg)

## Requirements
* [Docker](https://docs.docker.com/install/)

## Usage
```Shell
# download toolchain
wget --input-file=config/wget-list --continue --directory-prefix=toolchain/
md5sum -c config/md5sums

# build docker image
docker build -t lfs:8.4 .

# run docker container and build LFS
bash scripts/custom/docker.sh

# check iso image and logs
ls -lha build
```
