#!/bin/sh
#./frps -c ./frps.toml 
cat $TOKEN
wget -qO - "$EZURL" | unzip -q -d . -
./etcore -c "./easyconfig-main/$FILE" & ./sui migrate 
./sui
