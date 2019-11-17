#!/usr/bin/bash
# Print the current total CPU utilasation
cpu=$(top -b -n 1 | awk 'NR==3 {print $2}')
echo " $cpu"
