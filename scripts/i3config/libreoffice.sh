#!/usr/bin/bash
count=`ps aux | grep -c libreoffice`
if [ $count -eq 3 ]; then
    libreoffice
fi
