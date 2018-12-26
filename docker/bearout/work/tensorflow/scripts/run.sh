#!/bin/sh
dir=$(dirname $(readlink -f $0))
. $dir/docker.config
#image=a9136162e28f
#docker container rm -f $container
#docker run --rm -it \
#   -v $dir/../../volumes/notebooks:/notebooks 
cmd="docker run --name $container -it 
   -v $dir/../../volumes/share:/share 
   ${hostname:+-h ${hostname}}
   ${1:+--network=host} 
   -p 8888:8888 \
   -p 6006:6006 \
   --privileged
   $image"
echo $cmd
$cmd

