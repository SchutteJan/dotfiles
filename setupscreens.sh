MONITORS="$(xrandr -q | grep " connected" | wc -l)"
# xrandr --fb 5760x1800 --output eDP1 --mode 3200x1800 --pos 2560x0 --output DP1 --mode 2560x1440 --pos 0x0

if [[ $MONITORS == "2" ]]; then
	xrandr --fb 6784x2016 --output eDP-1 --mode 3200x1800 --pos 3584x0 --output DP-1 --mode 2560x1440 --pos 0x0 --scale 1.4x1.4 
elif [[ $MONITORS == "1" ]]; then
	xrandr --auto
fi
