# Powerline
set fish_function_path $fish_function_path "/usr/local/lib/python3.7/site-packages/powerline/bindings/fish/"
powerline-setup

# No welcome message
set fish_greeting

# cat  = bat
export BAT_PAGER="cat"

# ls = lsd (https://github.com/Peltoche/lsd)
alias ls "lsd"

# Add to path
set PATH /home/jan/apps/node-v10.15.1-linux-x64/bin $PATH
set PATH /home/jan/apps/flutter/bin $PATH
