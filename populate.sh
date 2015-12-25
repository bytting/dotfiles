#!/bin/sh

src_dir=`cd $(dirname $0)/home && pwd`
dest_dir=$HOME

for target in `find $src_dir -type d`
do
    mkdir -p $target | sed "s#$src_dir#$dest_dir#"
done

for target in `find $src_dir -type f`
do
    link_name=`echo $target | sed "s#$src_dir#$dest_dir#"`
    ln -sf $target $link_name
done
