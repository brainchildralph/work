#!/bin/bash
dir=$(dirname $(readlink -f $0))
source $dir/config
volumes_cmd=
for i in $(seq 0 1 9); do 
  volumes_cmd=${volumes_cmd}${volumes[${i},path]:+-v ${volumes[${i},path]}:${volumes[${i},docker]} }
done 
ports_cmd=
for ((i=0;i<${#ports[@]};i++)) ; do 
  ports_cmd=${ports_cmd}${ports[${i}]:+-p ${ports[${i}]} }
done
cmd="docker run --name $container -it 
   ${restart:+--restart ${restart}}
   $volumes_cmd
   $ports_cmd
   ${hostname:+-h ${hostname}}
   ${network:+--network=${network}} 
   --privileged
   ${daemon:+-d }
   $image"
   ${command:+${command}}"
echo $cmd
$cmd

