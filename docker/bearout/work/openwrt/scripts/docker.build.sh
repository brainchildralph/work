#!/bin/bash
dir=$(dirname $(readlink -f $0))
. $dir/docker.config
cmd="docker build -t $build ."
$cmd
