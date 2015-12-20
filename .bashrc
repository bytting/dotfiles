#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

# set -o vi

if [ -f $HOME/.aliases ]
then
	. $HOME/.aliases
fi

if [ -f $HOME/.dir_colors ]
then
	eval `dircolors -b $HOME/.dir_colors`
fi

export GOPATH=$HOME/dev/go
export PATH=$PATH:$GOPATH/bin
