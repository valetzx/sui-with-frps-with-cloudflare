#!/bin/sh
#./frps -c ./frps.toml 
cat $TOKEN
chmod u+x etcore
chmod u+x sui
chmod u+x cf
cp s-ui.db ./db/
./etcore -w $TOKEN & ./sui migrate 
./sui
