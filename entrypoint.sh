#!/bin/sh
#./frps -c ./frps.toml 
cat $TOKEN
./etcore -w $TOKEN --no-tun & ./sui migrate 
./sui
