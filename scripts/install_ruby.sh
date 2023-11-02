#!/bin/sh
rm /var/lib/apt/lists/lock
rm /var/cache/apt/archives/lock
rm /var/lib/dpkg/lock*
killall apt apt-get
#apt update
apt-get install -y ruby-full ruby-bundler build-essential
