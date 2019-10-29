#!/bin/bash

name=$( nmcli -g name connection show --active )
address=$( nmcli -p -c yes device show wlp1s0 | grep IP4.ADDRESS | awk '{print $2}' )

echo $name $address 
