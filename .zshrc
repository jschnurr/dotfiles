# Path to your oh-my-zsh installation.
export ZSH="/home/jschnurr/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

# Uncomment one of the following lines to change the auto-update behavior
zstyle ':omz:update' mode auto      # update automatically without asking

# oh-my-zsh plugins
# custom (must be cloned first): zsh-autosuggestions, zsh-completions
plugins=(docker ssh-agent nvm kubectl golang git zsh-completions zsh-autosuggestions)
autoload -Uz compinit && compinit
source $ZSH/oh-my-zsh.sh

# Zsh settings for history
HISTSIZE=25000
SAVEHIST=100000

# Golang
export PATH=$PATH:/usr/local/go/bin
export $PATH:$HOME/go/bin

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

if [ -d "$HOME/.local/bin" ] ; then
  PATH="$PATH:$HOME/.local/bin"
fi

# User configuration

# az-cli uses bash completions so they need to be sourced
source /etc/bash_completion.d/azure-cli

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# docker
alias docker-clean='docker rmi $(docker images --filter "dangling=true" -q --no-trunc)'

# directories
alias ll='LC_COLLATE=C ls -lhAF'
alias lll='ls -lhAF | less'
alias ls='LC_COLLATE=C ls --color=auto'

# system utilities
alias du="du -ach | sort -h"  # file size recursively
alias df="df -Tha --total"    # disk usage
alias grep='grep --color=auto'

# reverse chronological list of files/dirs (max depth 2) that contain change files. i.e. what have I worked on recently?
alias recents="find . -maxdepth 4 -mtime -90 -printf '%T+\t%s\t%p\n' 2>/dev/null | sort -r | cut -f 3 | cut -d'/' -f-3 | awk '!a[\$0]++'"

# python
alias mkenv='python -m venv .venv'
alias startenv='source .venv/bin/activate && which python'
alias stopenv='deactivate'

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/bin/terraform terraform
