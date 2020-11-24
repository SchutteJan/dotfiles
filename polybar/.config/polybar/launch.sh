#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# MONITORS="$(xrandr -q | grep " connected" | wc -l)"

eDP1="$(xrandr -q | grep "eDP-1 connected"| wc -l)"
HDMI1="$(xrandr -q | grep "HDMI-1 connected"| wc -l)"
DP1="$(xrandr -q | grep "DP-1 connected"| wc -l)"

# Launch bars
if [[ $eDP1 == "1" ]]; then
    polybar mybar &
fi

if [[ $DP1 == "2" ]]; then
    polybar mybar2 &
fi

if [[ $HDMI1 == "1" ]]; then
    polybar mybar3 &
fi
