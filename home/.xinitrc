#!/bin/sh

setxkbmap -model pc105 -layout us
[[ -f ~/.xprofile ]] && source ~/.xprofile

exec startfluxbox
