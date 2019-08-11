#!/bin/bash
mem=$(df -h | egrep '\B\/\B' | awk '{print $4}')
echo " $mem"
