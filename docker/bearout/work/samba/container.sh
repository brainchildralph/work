#!/bin/bash
dir=$(dirname $(readlink -f $0))
. $dir/config
cmd="docker container rm $container"
$cmd
