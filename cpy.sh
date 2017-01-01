#!/bin/bash

origin[0]="/home/jan/.config/i3/config";
destination[0]="./i3/config";

origin[1]="/etc/i3status.conf";
destination[1]="./i3/i3status.conf";

origin[2]="/usr/share/powerline/config_files/";
destination[2]="./powerline";

origin[3]="/home/jan/.bashrc";
destination[3]="./bashrc"

echo "Copying all dotfiles...";

for i in `seq 0 3`; do
    cp -r ${origin[$i]} ${destination[$i]};
done
