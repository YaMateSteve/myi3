#!/bin/bash

# Get reamining battery percentage
# May need to change battery number in bat_percent
charging=$(acpi | grep -c Discharging)
bat_percent=$(acpi | grep 'Battery 1' | grep -o '[0-9]\{1,3\}[%]')
bat=$(echo $bat_percent | grep -o '[0-9]\{1,3\}')


if [ $charging = 0 ]; then
	if [ $bat -ge 100 ]; then
		echo " Full"
	else
		echo " $bat_percent"
	fi
else
	if [ $bat -gt 90 ]; then
		echo " $bat_percent"
	elif [ $bat -gt 74 ] && [ $bat -le 90 ]; then
		echo " $bat_percent"
	elif [ $bat -gt 49 ] && [ $bat -le 74 ]; then
		echo " $bat_percent"
	elif [ $bat -gt 20 ] && [ $bat -le 49 ]; then
		echo " $bat_percent"
	else
		echo " $bat_percent"
	fi
fi

