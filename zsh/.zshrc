# load antigen framework
source /usr/share/zsh/share/antigen.zsh

# misc settings
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle :compinstall filename '/home/bunker/.zshrc'
autoload -Uz compinit
autoload -Uz promptinit
promptinit
compinit
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
unsetopt beep
bindkey -v

# load in antigen packages
antigen use oh-my-zsh
antigen bundle git
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle heroku
antigen bundle pip
antigen bundle lein

# set theme
antigen theme minimal

# apply antigen
antigen apply

# environment variables
export VISUAL=nvim
export EDITOR=nvim
export PATH=$PATH:~/bin

# aliases
alias orphans="sudo pacman -Rns $(pacman -Qtdq)"
alias ls='ls -X --color=auto --group-directories-first'
alias pass='PASSWORD_STORE_ENABLE_EXTENSIONS=true pass'
alias lainstream="mpv rtmp://lainchan.org/live/stream"
alias lainradio="mpv http://lainchan.org:8000/lain.ogg"
alias merge="xrdb -merge .Xresources"
alias mnt="sudo mount"
alias install="yaourt -S"
alias uninstall="yaourt -R"
alias irc="irssi"
alias lynx="lynx -nocolor"
alias mail="mutt"
alias update="sudo pacman -Syu && antigen update"
alias rg="ranger"
alias todo="nvim todo"
alias vim="nvim"
