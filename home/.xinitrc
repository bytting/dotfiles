
if [ -f $HOME/.screenlayout/default.sh ]
then
        . $HOME/.screenlayout/default.sh
fi

xmodmap -e "keycode 31 = i I NoSymbol NoSymbol less"
xmodmap -e "keycode 32 = o O NoSymbol NoSymbol greater"
xmodmap -e "keycode 43 = h H NoSymbol NoSymbol numbersign"
xmodmap -e "keycode 44 = j J NoSymbol NoSymbol slash"
xmodmap -e "keycode 45 = k K NoSymbol NoSymbol quotedbl"
xmodmap -e "keycode 46 = l L NoSymbol NoSymbol apostrophe"
xmodmap -e "keycode 57 = n N NoSymbol NoSymbol dollar"
xmodmap -e "keycode 58 = m M NoSymbol NoSymbol at"

exec startfluxbox
