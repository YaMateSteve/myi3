#!/usr/bin/bash
used=$(free -h | grep Mem | awk '{print $3}')
echo " $used"
