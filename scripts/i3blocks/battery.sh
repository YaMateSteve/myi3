#!/bin/bash

# Get reamining battery percentage
charging=$(acpi | grep -o Charging)
bat_percent=$(acpi | grep -o '[0-9]\{2,3\}[%]')
bat=$(echo $bat_percent | grep -o '[0-9]\{2,3\}')

if [ $bat -ge 100 ]; then
	echo "Fully Charged"
else
	if [ $charging = 'Charging' ]; then
		echo "_$bat_percent"
	else
		if [ $bat -gt 90 ]; then
			echo ""
		elif [ $bat -gt 75 ] && [ $bat -le 90 ]; then
			echo ""
		elif [ $bat -gt 50 ] && [ $bat -le 75 ]; then
			echo ""
		elif [ $bat -gt 20 ] && [ $bat -le 50 ]; then
			echo ""
		else
			echo "_$bat_percent"
		fi
	fi
fi
