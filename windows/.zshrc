# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

zstyle ':omz:update' mode auto

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Plugins
plugins=(
        aws
        docker
        git
        you-should-use
        web-search
        z
        zsh-autosuggestions
        zsh-completions
        zsh-syntax-highlighting
        zsh-vi-mode
)

source $ZSH/oh-my-zsh.sh

# Aliases
alias clr="clear"
alias ls="colorls -A --sf --sd"
alias ll="ls -la"
alias lls='ls -la --sort=size'
alias llt='ls -la --sort=time'
alias rmd="rm -rf"
alias s="source .zshrc"
alias x="exit"
alias q="quit"
alias repos="../../mnt/c/Users/fabri/RiderProjects"

source ~/powerlevel10k/powerlevel10k.zsh-theme

source ~/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
