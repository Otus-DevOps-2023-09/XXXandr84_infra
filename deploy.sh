#!/bin/sh
# /\n\Z/
git clone -b monolith https://github.com/express42/reddit.git
cd reddit && bundle install
puma -d
#
#ruby2.3
#158.160.125.191 9292 tcp
