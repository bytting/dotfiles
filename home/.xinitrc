#!/bin/sh

setxkbmap -model pc105 -layout us -option ctrl:nocaps

[[ -f ~/.xprofile ]] && source ~/.xprofile

exec startfluxbox

