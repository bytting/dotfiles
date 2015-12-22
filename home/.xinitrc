
if [ -f $HOME/.screenlayout/default.sh ]
then
        . $HOME/.screenlayout/default.sh
fi

exec startfluxbox
