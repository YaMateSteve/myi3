#!/bin/bash

brightness=$(xbacklight | awk '{printf "%.0f\n", $1}')

echo " $brightness"
