#!/bin/bash
dir=$(dirname $(readlink -f $0))
source $dir/docker.config
volumes_cmd=
for i in $(seq 0 1 9); do 
  volumes_cmd=${volumes_cmd}${volumes[${i},path]:+-v ${volumes[${i},path]}:${volumes[${i},docker]}}
done 
cmd="docker run --name $container -it 
   $volumes_cmd
   ${hostname:+-h ${hostname}}
   ${1:+--network=host} 
   --privileged
   $image"
echo $cmd
$cmd

