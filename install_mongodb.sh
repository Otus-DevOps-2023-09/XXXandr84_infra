#!/bin/sh
# /\n\Z/
install_mongodb.sh
sudo apt install mongodb -y
sudo systemctl start mongodb
sudo systemctl enable mongod
