options=('Laptop only' 'Monitor + Laptop' 'TV only' 'TV + Laptop' 'Monitor Only' 'Automatic')
dmenuCmd='dmenu -i -l 10 -sb "#a54242"'


optionStr=$(printf "\n%s" "${options[@]}")
optionStr=${optionStr:1}

selection=$(echo "$optionStr" | eval $dmenuCmd) 

if [[ $selection == ${options[0]} ]]; then
    xrandr --output HDMI1 --off --output DP1 --off --output eDP1 --fb 2560x1440 --mode 2560x1440 --dpi 168 
elif [[ $selection == ${options[1]} ]]; then
    xrandr --fb 3584x3456 --output eDP1 --mode 2560x1440 --pos 128x2016 --dpi 168 --output HDMI1 --mode 2560x1440 --pos 0x0 --scale 1.4x1.4
elif [[ $selection == ${options[2]} ]]; then
    xrandr --fb 3840x2160 --output HDMI1 --mode 3840x2160 --output eDP1 --off
elif [[ $selection == ${options[3]} ]]; then
    xrandr --fb 7040x3960 --output HDMI1 --mode 3840x2160 --output eDP1 --mode 3200x1800 --pos 248x2160
elif [[ $selection == ${options[4]} ]]; then
    xrandr --fb 3584x2016 --output HDMI1 --mode 2560x1440 --scale 1.4x1.4 --pos 0x0 --output eDP1 --off
elif [[ $selection == ${options[5]} ]]; then
    xrandr --auto
fi


i3-msg restart
