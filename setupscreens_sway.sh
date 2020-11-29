options=('Laptop only' 'External + Laptop' 'External Only')
dmenuCmd='bemenu -l 10 -i -p "run" --tb "#1d1f21" --tf "#c5c8c6" --hb "#a54242" --hf "#c5c8c6"'


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
