#!/usr/bin/bash
count=`ps aux | grep -c atom`
if [ $count -eq 3 ]; then
    atom
fi
