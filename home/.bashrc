#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[ -f /etc/bash_completion.d/git-prompt ] && source /etc/bash_completion.d/git-prompt
[ -f /usr/share/git/completion/git-prompt.sh ] && source /usr/share/git/completion/git-prompt.sh
PS1='\[\e[1;33m\]\u@\h\[\e[m\] \[\e[1;32m\]$PWD\[\e[m\]\[\e[1;36m\]$(__git_ps1)\[\e[m\]\n\[\e[1;36m\]\$\[\e[m\] '

# set -o vi

[ -f $HOME/.aliases ] && source $HOME/.aliases
[ -f $HOME/.dir_colors ] && eval `dircolors -b $HOME/.dir_colors`

export TERM=xterm-256color
export RANGER_LOAD_DEFAULT_RC=FALSE

export GOROOT=/usr/lib/go
export GOPATH=$HOME/dev/go
export PATH=$PATH:$GOPATH/bin

man() {
    LESS_TERMCAP_mb=$'\e'"[1;31m" \
    LESS_TERMCAP_md=$'\e'"[1;31m" \
    LESS_TERMCAP_me=$'\e'"[0m" \
    LESS_TERMCAP_se=$'\e'"[0m" \
    LESS_TERMCAP_so=$'\e'"[1;44;33m" \
    LESS_TERMCAP_ue=$'\e'"[0m" \
    LESS_TERMCAP_us=$'\e'"[1;32m" \
    command man "$@"
}
