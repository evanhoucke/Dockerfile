#!/bin/sh
echo "Run aria2c and ariaNG"

echo "Start aria2 with standard mode"
/usr/bin/aria2c --conf-path="/root/conf/aria2.conf" -D --enable-rpc --rpc-listen-all