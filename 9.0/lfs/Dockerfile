FROM debian:10

ARG LFS=/mnt/lfs

ENV LFS=${LFS}

WORKDIR ${LFS}

ADD config/    config
ADD toolchain/ toolchain
ADD scripts/   scripts

ENTRYPOINT ["/bin/bash", "scripts/custom/main.sh"]
