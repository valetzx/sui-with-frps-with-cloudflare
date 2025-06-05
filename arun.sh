#!/bin/sh
#./frps -c ./frps.toml 
cat $TOKEN
chmod u+x etcore
chmod u+x sui
cp s-ui.db ./db/
./etcore -w $TOKEN --no-tun  & ./sui migrate 
./sui
