#!/bin/sh

sudo apt-get update
sudo apt-get install -y dosbox

mkdir -p ~/dos/c

# Optimize dosbox performance
mv ~/.dosbox/dosbox-0.74.conf ~/.dosbox/dosbox-0.74.conf.backup
wget -O ~/.dosbox/dosbox-0.74.conf http://bit.ly/29Qra5D

cd ~/dos/c

wget http://www.bestoldgames.net/download/bgames/prince-of-persia.zip
unzip prince-of-persia.zip

wget http://www.bestoldgames.net/download/bgames/wolfenstein-3d.zip
unzip wolfenstein-3d.zip

wget http://www.bestoldgames.net/download/bgames/golden-axe.zip
unzip golden-axe.zip

wget http://www.bestoldgames.net/download/bgames/gobliiins.zip
unzip gobliiins.zip

wget http://www.bestoldgames.net/download/bgames/gobliins-2.zip
unzip gobliins-2.zip

cd
