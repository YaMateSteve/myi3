#!/usr/bin/bash
count=`ps aux | grep -c firefox`
if [ $count -eq 1 ]; then
firefox
else
    i3-msg "[class=Firefox] focus"
fi
