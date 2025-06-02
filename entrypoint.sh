#!/bin/sh
#./frps -c ./frps.toml 
./cf tunnel run --{$TOKEN} & ./sui migrate 
./sui
