#!/bin/bash

cd /toolchain
tar -xf ninja-1.9.0.tar.gz
cd ninja-1.9.0

python3 configure.py --bootstrap

#python3 configure.py
#./ninja ninja_test
#./ninja_test --gtest_filter=-SubprocessTest.SetWithLots

install -vm755 ninja /usr/bin/
install -vDm644 misc/bash-completion /usr/share/bash-completion/completions/ninja
install -vDm644 misc/zsh-completion  /usr/share/zsh/site-functions/_ninja

cd /toolchain
rm -rf ninja-1.9.0
