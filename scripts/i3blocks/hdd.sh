#!/bin/bash
df -h | grep /home | awk '{print $4}'
