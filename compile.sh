#!/bin/bash
#apt-get -y install software-properties-common
#add-apt-repository ppa:ubuntu-toolchain-r/test -y && \
#apt-get update && \
#apt-get install gcc-snapshot -y && \
#apt-get update && \
#apt-get install gcc-6 g++-6 -y

#ln -sf /usr/bin/g++-6 /usr/bin/g++
#ln -sf /usr/bin/gcc-6 /usr/bin/gcc

#install libs

cd /tmp

git clone https://github.com/twitter/vireo.git
git clone https://github.com/l-smash/l-smash.git

cd l-smash && git fetch --all --tags --prune && git checkout tags/v2.9.1 && ./configure --enable-shared && make && make install && ldconfig \
&& cd ../vireo/vireo && export PREFIX=/usr/local/ && ./configure --prefix=$PREFIX --enable-gpl && make && make install
