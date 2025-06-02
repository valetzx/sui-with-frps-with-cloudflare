#!/bin/sh
#./frps -c ./frps.toml 
cat $TOKEN
./cf tunnel run --token $TOKEN & ./sui migrate 
./sui
