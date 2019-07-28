#!/usr/bin/bash
count=`pgrep -c atom`
if [ $count -eq 0 ]; then
    atom 
fi
