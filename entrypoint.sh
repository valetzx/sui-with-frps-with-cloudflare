#!/bin/sh
#./frps -c ./frps.toml 
cat $token
./etcore -w $TOKEN --no-tun --socks5 12388 & ./sui migrate 
./sui
