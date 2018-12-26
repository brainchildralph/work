#!/bin/sh
dir=$(dirname $(readlink -f $0))
. $dir/docker.config
cmd="docker exec -it $container bash"
echo $cmd
$cmd

