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

# Add to path
set PATH /home/jan/apps/flutter/bin $PATH
set PATH /home/jan/go/bin $PATH
set PATH /home/jan/apps/miniconda3/bin $PATH

# Gurobi Optimizer
set GUROBI_HOME /home/jan/apps/gurobi/gurobi902/linux64/
set PATH /home/jan/apps/gurobi/gurobi902/linux64/bin $PATH
set LD_LIBRARY_PATH /home/jan/apps/gurobi/gurobi902/linux64/lib $LD_LIBRARY_PATH
set GRB_LICENSE_FILE /home/jan/apps/gurobi/gurobi.lic

# Fuck command
thefuck --alias | source

# Disable virtual env custom prompt
# export VIRTUAL_ENV_DISABLE_PROMPT=true

export EDITOR=vim

export TERM=xterm-256color

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /home/jan/apps/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

