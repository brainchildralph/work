#!/bin/bash
dir=$(dirname $(readlink -f $0))
. $dir/config
cmd="docker commit $container $image"
$cmd
cmd="docker push $image"
$cmd
