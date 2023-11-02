#!/bin/sh
# /\n\Z/
apt update
apt install -y git
mkdir -p /app
chown -R ubuntu:ubuntu /app
cd /app
git clone -b monolith https://github.com/express42/reddit.git
cd /app/reddit && bundle install
mv /tmp/puma23.service /etc/systemd/system/
systemctl daemon-reload
systemctl start puma23
systemctl enable puma23
