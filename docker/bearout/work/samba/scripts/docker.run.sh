#!/bin/sh
dir=$(dirname $(readlink -f $0))
. $dir/docker.config
#image=a9136162e28f
#docker container rm -f $container
#docker run --rm -it \
cmd="docker run --name $container -it 
   -v $dir/../../volumes/share:/share 
   ${hostname:+-h ${hostname}}
   ${1:+--network=host} 
   --privileged
   $image"
echo $cmd
$cmd

