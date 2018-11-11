#!/usr/bin/bash
count=`ps aux | grep -c libreoffice`
if [ $count -eq 2 ]; then
    libreoffice
else
    i3-msg "[class=libreoffice] focus"
fi
