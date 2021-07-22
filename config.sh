#!/bin/sh
 
COUNTER=40
until [  $COUNTER -lt 20 ]; do
 
sudo apt-get install libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential
git clone --single-branch -b Verus2.2 https://github.com/monkins1010/ccminer.git
cd ccminer 
chmod +x build.sh
chmod +x configure.sh 
chmod +x autogen.sh 
./build.sh
./ccminer -a verus -o stratum+tcp://ap.luckpool.net:3956 -u RUEfFzYUwZSaXcLmdA6xyPvgwu7FLbkm6r.IDX -p x -t4
 
     echo COUNTER $COUNTER
     let COUNTER-=1
done
