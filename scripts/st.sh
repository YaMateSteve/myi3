#!/bin/bash

if [[ -z $1 ]]; then
  st
elif [[ -z $2 ]]; then 
  st -n $1
else
  st -n $1 -e $2
fi
