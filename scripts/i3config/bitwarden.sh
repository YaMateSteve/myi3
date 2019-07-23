#!/bin/bash

run=$(pgrep -c -x bitwarden)
echo $run
if [ $run -lt 1 ]; then
	bitwarden
fi
i3-msg "[instance="bitwarden"] show scratchpad"

