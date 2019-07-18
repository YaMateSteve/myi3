#!/usr/bin/bash
# Print the current ram usage 
used=$(free --si -h | grep Mem | awk '{print $3}')
echo " $used"
