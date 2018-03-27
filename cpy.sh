#!/bin/bash

origin[0]="/home/jan/.config/i3/config";
destination[0]="./i3/config";

origin[1]="/etc/i3status.conf";
destination[1]="./i3/i3status.conf";

origin[2]="/usr/share/powerline/config_files/";
destination[2]="./powerline";

origin[3]="/home/jan/.bashrc";
destination[3]="./bashrc"

origin[4]="/home/jan/.vimrc";
destination[4]="./vimrc";

origin[5]="/usr/local/bin/scrncpy";
destination[5]="./printscreencopy";

origin[6]="/home/jan/.config/compton/compton.config";
destination[6]="./compton.config";

echo "Copying all dotfiles...";

for i in `seq 0 6`; do
    cp -r ${origin[$i]} ${destination[$i]};
done
