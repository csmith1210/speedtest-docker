#!/bin/bash

cd /tmp/
curl -L https://github.com/taganaka/SpeedTest/archive/master.tar.gz | tar xvz
mv SpeedTest-master src
mkdir -p build

apt-get update
apt-get update && apt-get install -y g++ cmake make libcurl4-openssl-dev libxml2-dev libssl-dev

cd /tmp/build
cmake -DCMAKE_BUILD_TYPE=Release ../src
make install

cd ~
rm -rf /var/lib/apt/lists/*
rm -rf /tmp/build /tmp/src
