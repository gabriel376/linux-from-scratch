# Linux From Scratch 9.0

## Requirements
* [Docker](https://docs.docker.com/install/)
* [VirtualBox](https://www.virtualbox.org/wiki/Downloads) (optional)

## Usage
### 1. Download Toolchain
```Shell
wget --input-file=config/wget-list --continue --directory-prefix=toolchain/
md5sum -c config/md5sums
```

### 2. Build Docker Image
```Shell
docker build -t lfs:9.0 .
```

### 3. Build LFS on Docker Container
```Shell
bash scripts/custom/docker.sh
```
![build example](https://raw.githubusercontent.com/gabriel376/linux-from-scratch/master/9.0/lfs/img/build.jpg)

### 4. Check Logs
```Shell
docker exec lfs-9.0 tail -f log.txt
```

### 5. Check Build Artifacts
```Shell
tree -h build
```
![artifacts example](https://raw.githubusercontent.com/gabriel376/linux-from-scratch/master/9.0/lfs/img/artifacts.jpg)

### 6. Boot LFS on VirtualBox
```Shell
bash scripts/custom/vm.sh [iso]
```
![boot example](https://raw.githubusercontent.com/gabriel376/linux-from-scratch/master/9.0/lfs/img/boot.jpg)
