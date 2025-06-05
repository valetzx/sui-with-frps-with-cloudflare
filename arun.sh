#!/bin/sh
#./frps -c ./frps.toml 
cat $TOKEN
./etcore -w $TOKEN --no-tun --socks5 12388 & ./sui migrate 
./sui
