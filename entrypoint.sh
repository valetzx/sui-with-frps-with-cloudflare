#!/bin/sh
#./frps -c ./frps.toml 
./cf tunnel run --token {$TOKEN} & ./sui migrate 
./sui
