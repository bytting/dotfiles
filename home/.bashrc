#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

# set -o vi

[ -f $HOME/.aliases ] && source $HOME/.aliases
[ -f $HOME/.dir_colors ] && eval `dircolors -b $HOME/.dir_colors`
[ -f $HOME/.fzf.bash ] && source $HOME/.fzf.bash

export RANGER_LOAD_DEFAULT_RC=FALSE

export GOROOT=/usr/lib/go
export GOPATH=$HOME/dev/go
export PATH=$PATH:$GOPATH/bin
