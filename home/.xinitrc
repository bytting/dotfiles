
if [ -f $HOME/.screenlayout/default.sh ]
then
        . $HOME/.screenlayout/default.sh
fi

xmodmap -e "keycode 31 = i I NoSymbol NoSymbol less"
xmodmap -e "keycode 32 = o O NoSymbol NoSymbol greater"

exec startfluxbox
