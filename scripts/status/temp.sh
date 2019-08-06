#!/bin/bash

# Get cpu temp
temp=$(cat /sys/class/thermal/thermal_zone4/temp | sed 's/\(.\)..$/.\1/')

if [ $temp -ge 60 ]; then
	echo " $temp°C"
elif [ $temp -ge 50 ] && [ $temp -lt 60 ]; then
  echo " $temp°C"
elif [ $temp -ge 40 ] && [ $temp -lt 50 ]; then
  echo " $temp°C"
elif [ $temp -ge 30 ] && [ $temp -lt 40 ]; then
  echo " $temp°C"
else
	echo " $temp°C"
fi
