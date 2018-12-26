#!/bin/sh
dir=$(dirname $(readlink -f $0))
. $dir/docker.config
cmd="docker start -i $container"
echo $cmd
$cmd

