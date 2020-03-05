#!/bin/bash
# Command used to refresh the i3blocks bar. Eg. can be used to update volume indicator upon volume key press.
$(pkill -RTMIN+10 i3blocks)

