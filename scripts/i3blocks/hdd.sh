#!/bin/bash
mem=$(df -h | grep /home | awk '{print $4}')
echo " $mem"
