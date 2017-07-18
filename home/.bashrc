#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[ -f /usr/share/git/completion/git-prompt.sh ] && source /usr/share/git/completion/git-prompt.sh
PS1='[\u@\h \W]\[\e[1;36m\]$(__git_ps1)\[\e[m\]\$ '

# set -o vi

[ -f $HOME/.aliases ] && source $HOME/.aliases
[ -f $HOME/.dir_colors ] && eval `dircolors -b $HOME/.dir_colors`

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
