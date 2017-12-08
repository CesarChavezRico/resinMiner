#!/usr/bin/env bash

echo ..... start.sh: Setting up Mining Rig ...
mkdir miner
cd miner
git clone https://github.com/novaspirit/wolf-m7m-cpuminer
cd wolf-m7m-cpuminer
./autogen.sh
CFLAG="-O2 mfpu=neon-vfpv4" ./configure
echo ----- miner setup end .. Makefile configuration missing!! -----

echo ..... start.sh: Running main app ....
python /usr/src/app/main.py