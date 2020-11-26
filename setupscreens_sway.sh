options=('Laptop only' 'External + Laptop' 'External Only')
dmenuCmd='dmenu -i -l 10 -sb "#a54242"'


optionStr=$(printf "\n%s" "${options[@]}")
optionStr=${optionStr:1}

selection=$(echo "$optionStr" | eval $dmenuCmd) 

if [[ $selection == ${options[0]} ]]; then
    swaymsg output eDP-1 enable;
    swaymsg output HDMI-A-1 disable;
elif [[ $selection == ${options[1]} ]]; then
    swaymsg output eDP-1 enable;
    swaymsg output HDMI-A-1 enable;
elif [[ $selection == ${options[2]} ]]; then
    swaymsg output eDP-1 disable;
    swaymsg output HDMI-A-1 enable;
fi
