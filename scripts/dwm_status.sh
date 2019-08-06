#!/bin/bash

a=$($HOME/.scripts/status/volume.sh)
b=$($HOME/.scripts/status/disk.sh)
c=$($HOME/.scripts/status/ram_usage.sh)
d=$($HOME/.scripts/status/temp.sh)
e=$($HOME/.scripts/status/battery.sh)
f=$($HOME/.scripts/status/datetime.sh)


echo "$a  $b  $c  $d  $e  $f"
