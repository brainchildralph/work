#!/bin/bash
dir=$(dirname $(readlink -f $0))
source $dir/config
cmd="docker rm $container"
echo $cmd
$cmd

