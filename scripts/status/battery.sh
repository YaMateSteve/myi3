#!/bin/sh

# Get reamining battery percentage
# May need to change battery number in bat_percent

battery=$(acpi | egrep "[Cc]harging.*[0-9][0-9]{0,2}|Full")
charging=$(echo $battery | awk '{print $3}' | egrep -c [C]+[a-z]*)
bat_percent=$(echo $battery | awk '{print $4}' | egrep -o "[1-9]+[0-9]{0,2}.{1}|Full")
bat=$(echo $battery | awk '{print $4}' | egrep -o "[0-9][0-9]{0,2}")

if [ $charging == 1 ]; then 
	sym=""
else 
	sym=""
fi

echo "$sym $bat_percent"


# Symbols              
