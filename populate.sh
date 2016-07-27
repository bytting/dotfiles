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
mkdir -p $HOME/{bin,doc,tmp,mnt,builds}
mkdir -p $HOME/dev/{c,cc,go,rs,py,lua}
mkdir -p $HOME/comp/{desktop,templates,public}
mkdir -p $HOME/media/{images,icons,music,video}
