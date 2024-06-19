# Oh My Posh initialization
eval "$(oh-my-posh init bash --config C:/Users/fabri/AppData/Local/Programs/oh-my-posh/themes/custom.omp.json)"


# Alias
alias .='cd .'
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias clr="clear"
alias ls='ls -a -F --color=auto --show-control-chars'
alias ll='ls -la'
alias lls='ls -la --sort=size'
alias llt='ls -la --sort=time'
alias rmd="rm -rf"
alias s="source .bashrc"
alias x="exit"
alias q="quit"
alias repos="cd RiderProjects"

# Shell settings
# Typing a directory name just by itself will automatically change into that directory.
shopt -s autocd

# Automatically fix directory name typos when changing directory.
shopt -s cdspell

# Automatically expand directory globs and fix directory name typos whilst completing.
# Note, this works in conjunction with the cdspell option listed above.
shopt -s direxpand dirspell
