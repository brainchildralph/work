#!/bin/sh
dir=$(dirname $(readlink -f $0))
. $dir/docker.config
cmd="docker commit $container $image"
$cmd
cmd="docker push $image"
$cmd
