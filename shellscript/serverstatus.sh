#!/bin/bash

website="$1"
timeout=5

status="$(ping -c 1 -w $timeout $website)"

if [[ $? -eq 0 ]]; then
	echo "$website is up and running"
else
	echo "$website is down"
fi
