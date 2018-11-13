#!/usr/bin/bash
count=`ps aux | grep -c firefox`
if [ $count -eq 1 ]; then
    firefox
fi
