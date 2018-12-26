#!/bin/bash
dir=$(dirname $(readlink -f $0))
. $dir/docker.config
cmd="docker container rm $container"
$cmd
