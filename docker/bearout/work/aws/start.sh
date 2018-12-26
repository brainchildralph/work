#!/bin/bash
dir=$(dirname $(readlink -f $0))
source $dir/config
cmd="docker start -i $container"
echo $cmd
$cmd

