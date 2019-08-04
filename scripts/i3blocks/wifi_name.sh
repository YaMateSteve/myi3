#!/bin/bash

echo $( nmcli -g name connection show --active )
