#!/bin/sh

src=`cd $(dirname $0)/home && pwd`

for target in `find $src -type d`
do
    mkdir -p ${target/#$src/$HOME}
done

for target in `find $src -type f`
do
    ln -sf $target ${target/#$src/$HOME}
done
