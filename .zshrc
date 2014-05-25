# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

#OMGZSH theme
ZSH_THEME="agnoster"

# Set DEFAULT_USER to your regular username to hide the “user@hostname” info
# when you’re logged in as yourself on your local machine.
DEFAULT_USER="xanth"

# OMGZSH plugins
plugins=(pacman systemd git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=1000000
setopt appendhistory autocd beep extendedglob nomatch
bindkey -e
# End of lines configured by zsh-newuser-install

# Load in .files
source ~/.files/aliases
source ~/.files/functions/functions

export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/core_perl"
# export MANPATH="/usr/local/man:$MANPATH"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# new function text editor
export NEW_EDITOR="subl"

# The following lines were added by compinstall
zstyle :compinstall filename '/home/xanth/.zshrc'
autoload -Uz compinit
compinit
# End of lines added by compinstall

# Setup zsh-autosuggestions
source ~/.zsh-autosuggestions/autosuggestions.zsh
# Enable autosuggestions automatically
zle-line-init() {
    zle autosuggest-start
}
zle -N zle-line-init

# use ctrl+t to toggle autosuggestions(hopefully this wont be needed as
# zsh-autosuggestions is designed to be unobtrusive)
bindkey '^T' autosuggest-toggle

AUTOSUGGESTION_HIGHLIGHT_COLOR='fg=7'
