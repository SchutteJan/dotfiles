#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

MONITORS="$(xrandr -q | grep " connected" | wc -l)"

# Launch bar
polybar mybar &

if [[ $MONITORS == "2" ]]; then
	polybar mybar2 &
fi
