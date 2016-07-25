#!/usr/bin/env bash

# Store path to dotfiles
src=`cd $(dirname $0)/home && pwd`

# Create directories under $HOME
for target in `find $src -type d`
do
    mkdir -p ${target/#$src/$HOME}
done

# Create symbolic links under $HOME
for target in `find $src -type f`
do
    ln -sf $target ${target/#$src/$HOME}
done

# Create user-dirs
if [ ! -d "$HOME/doc" ] then
    mkdir -p $HOME/doc
fi
if [ ! -d "$HOME/tmp" ] then
    mkdir -p $HOME/tmp
fi
if [ ! -d "$HOME/comp/desktop" ] then
    mkdir -p $HOME/comp/desktop
fi
if [ ! -d "$HOME/comp/templates" ] then
    mkdir -p $HOME/comp/templates
fi
if [ ! -d "$HOME/comp/public" ] then
    mkdir -p $HOME/comp/public
fi
if [ ! -d "$HOME/media/images" ] then
    mkdir -p $HOME/media/images
fi
if [ ! -d "$HOME/media/music" ] then
    mkdir -p $HOME/media/music
fi
if [ ! -d "$HOME/media/video" ] then
    mkdir -p $HOME/media/video
fi
