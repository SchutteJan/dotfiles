options=('Laptop only' 'Dual monitor' 'TV only' 'Automatic')
dmenuCmd='dmenu -i -l 10 -sb "#a54242"'


optionStr=$(printf "\n%s" "${options[@]}")
optionStr=${optionStr:1}

selection=$(echo "$optionStr" | eval $dmenuCmd) 

if [[ $selection == ${options[0]} ]]; then
    xrandr --output HDMI1 --off --output DP1 --off --output eDP1 --fb 3200x1800 --mode 3200x1800
elif [[ $selection == ${options[1]} ]]; then
    xrandr --fb 3584x3816 --output eDP1 --mode 3200x1800 --pos 128x2016 --output DP1 --mode 2560x1440 --pos 0x0 --scale 1.4x1.4
elif [[ $selection == ${options[2]} ]]; then
    xrandr --fb 1920x1080 --output HDMI1 --mode 1920x1080 --output eDP1 --off
elif [[ $selection == ${options[3]} ]]; then
    xrandr --auto
fi


i3-msg restart
