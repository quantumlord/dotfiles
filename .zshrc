if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="/home/ghazi/.oh-my-zsh"
# export SPICETIFY_INSTALL="/home/ghazi/spicetify-cli"
# export PATH="$SPICETIFY_INSTALL:$PATH"

ZSH_THEME="powerlevel10k/powerlevel10k"

ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"

plugins=(git vi-mode)

source $ZSH/oh-my-zsh.sh

export EDITOR='vim'

alias nf="neofetch"
alias :q="exit"

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

PATH=/bin:/usr/bin:/usr/local/bin:${PATH}:~/.local/bin
export PATH

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
