#!/bin/bash

# Get volume
mute=$(pactl list sinks | grep Mute | awk '{print $2}')
vol_percent=$(pactl list sinks | grep front-left | grep -o '[0-9]\{2,3\}[%]' | grep -m1 '[0-9]\{2,3\}[%]')
vol=$(echo $vol_percent | grep -o '[0-9]\{2,3\}')
if [ $mute = 'no' ]; then
  if [ $vol -gt 50 ]; then
  	echo ""
  elif [ $vol -gt 20 ] && [ $vol -le 50 ]; then
  	echo ""
  elif [ $vol -gt 0 ] && [ $vol -le 20 ]; then
  	echo ""
  else
  	echo ""
  fi
else
  echo ""
fi
