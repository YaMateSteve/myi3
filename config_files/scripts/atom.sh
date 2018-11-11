#!/usr/bin/bash
count=`ps aux | grep -c atom`
if [ $count -lt 1 ]; then
    atom
else
    i3-msg "[class=Atom] focus"
fi
