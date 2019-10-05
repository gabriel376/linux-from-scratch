#!/bin/bash

image="lfs:8.4"
name="lfs-8.4"
timestamp=$(date +"%y%m%dT%H%M")

# run docker container
docker run --name ${name} -it --privileged ${image}

# copy iso image
docker cp "${name}:/tmp/lfs.iso" "build/${name}-${timestamp}.iso"

# copy logs
docker cp "${name}:/mnt/lfs/log.txt" "build/log-${timestamp}.txt"

# remove docker container
docker rm ${name}
