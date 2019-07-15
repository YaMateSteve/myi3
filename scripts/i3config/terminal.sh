#!/usr/bin/bash
count=`ps aux | grep -c name.terminal`
if [ $count -lt 2 ]; then
   urxvt -name terminal 
fi

