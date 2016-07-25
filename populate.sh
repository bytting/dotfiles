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
mkdir -p $HOME/doc
mkdir -p $HOME/tmp
mkdir -p $HOME/comp/desktop
mkdir -p $HOME/comp/templates
mkdir -p $HOME/comp/public
mkdir -p $HOME/media/images
mkdir -p $HOME/media/music
mkdir -p $HOME/media/video
