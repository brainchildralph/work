#!/bin/bash
dir=$(dirname $(readlink -f $0))
source $dir/config
cmd="docker rmi $image"
echo $cmd
$cmd

