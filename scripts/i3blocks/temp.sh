#!/bin/bash

# Get cpu temp
temp=$(acpi -t | awk '{print $4}' | grep -o '[0-9]\{2,3\}')

if [ $temp -ge 60 ]; then
	echo "_$temp.C"
elif [ $temp -ge 50 ] && [ $temp -lt 60 ]; then
  echo ""
elif [ $temp -ge 40 ] && [ $temp -lt 50 ]; then
  echo ""
elif [ $temp -ge 30 ] && [ $temp -lt 40 ]; then
  echo ""
else
	echo ""
fi
