#!/bin/bash

# Get reamining battery percentage
bat_percent=$(acpi | grep -o '[0-9]\{2,3\}[%]')
bat=$(echo $bat_percent | grep -o '[0-9]\{2,3\}')

if [ $bat -gt 90 ]; then
	echo "_$bat_percent"
elif [ $bat -gt 75 ] && [ $bat -le 90 ]; then
	echo "_$bat_percent"
elif [ $bat -gt 50 ] && [ $bat -le 75 ]; then
	echo "_$bat_percent"
elif [ $bat -gt 20 ] && [ $bat -le 50 ]; then
	echo "_$bat_percent"
else
	echo "_$bat_percent"
fi
