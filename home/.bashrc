#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

# set -o vi

[ -f $HOME/.aliases ] && source $HOME/.aliases
[ -f $HOME/.dir_colors ] && eval `dircolors -b $HOME/.dir_colors`

export GOPATH=$HOME/dev/go
export PATH=$PATH:$GOPATH/bin
