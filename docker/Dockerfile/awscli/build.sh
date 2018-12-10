#!/bin/bash
dir=$(dirname $(readlink -f $0))
source $dir/config
cmd="docker build -t $image ."
echo $cmd
$cmd

