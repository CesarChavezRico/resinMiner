#!/usr/bin/env bash

echo ..... start.sh: Setting up Mining Rig ...
mkdir miner
cd miner
git clone https://github.com/magi-project/m-cpuminer-v2
cd m-cpuminer-v2
./autogen.sh && ./configure CFLAGS="-O3" CXXFLAGS="-O3" && make
echo ----- miner setup end .. Makefile configuration missing!! -----

echo ..... start.sh: Running main app ....
python /usr/src/app/main.py