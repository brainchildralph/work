#!/bin/bash
dir=$(dirname $(readlink -f $0))
source $dir/config
cmd="docker stop $container"
echo $cmd
$cmd

