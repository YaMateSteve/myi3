#!/usr/bin/bash
count=`ps aux | grep -c discord`
if [ $count -lt 5 ]; then
    discord
fi

