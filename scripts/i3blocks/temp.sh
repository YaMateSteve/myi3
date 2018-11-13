#!/bin/bash

# Get cpu temp
temp=$(acpi -t | awk '{print $4}' | grep -o '[0-9]\{2,3\}')

if [ $temp -gt 50 ]; then
	echo "_$temp.C"
elif [ $temp -gt 20 ] && [ $temp -le 50 ]; then
  echo "_$temp.C"
else
	echo "_$temp.C"
fi
