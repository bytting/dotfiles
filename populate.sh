#!/bin/sh

# Store path to dotfiles
src=`cd $(dirname $0)/home && pwd`

# Create folders under $HOME
for target in `find $src -type d`
do
    mkdir -p ${target/#$src/$HOME}
done

# Create symbolic links under $HOME
for target in `find $src -type f`
do
    ln -sf $target ${target/#$src/$HOME}
done
