#!/bin/sh
xset s off
xset -dpms

xrdb -merge ~/.Xresources

setxkbmap -model pc105 -layout no -variant nodeadkeys -option ctrl:nocaps,lv3:lsgt_switch_latch
xmodmap ~/.Xmodmap

