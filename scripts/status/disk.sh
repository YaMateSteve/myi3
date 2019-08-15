#!/bin/bash

#Regex of mount point to show space of
#mount="\B\/\B" #root "/"
mount="/home"   #home


mem=$(df -h | egrep $mount | awk '{print $4}')
echo " $mem"
