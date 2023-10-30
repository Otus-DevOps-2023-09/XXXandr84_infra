#!/bin/sh
# /\n\Z/
git clone -b monolith https://github.com/express42/reddit.git
cd reddit && bundle install
ruby -d
