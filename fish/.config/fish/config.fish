# Powerline
function fish_prompt
    eval ~/go/bin/powerline-go -error $status -shell bare -modules "user,ssh,venv,cwd,perms,gitlite" -theme ~/dotfiles/powerline-go-theme.json
end

# No welcome message
set fish_greeting

# cat  = bat
export BAT_PAGER="cat"

# ls = lsd (https://github.com/Peltoche/lsd)
alias ls "lsd"
alias ll "lsd -la"
alias gs "git status"
alias gap "git add -p"

# View csv files
function csview
    cat $argv | sed -e 's/,,/, ,/g' | column -s, -t | less -#5 -N -S
end

# Add to path
set PATH /usr/local/go/bin $PATH
set PATH /home/jan/go/bin $PATH
set PATH /home/jan/.cargo/bin $PATH
set PATH /home/jan/.local/bin $PATH

# Disable virtual env custom prompt
export VIRTUAL_ENV_DISABLE_PROMPT=true

export EDITOR=vim

export TERM=xterm-256color


