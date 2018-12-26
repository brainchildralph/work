#!/bin/bash
dir=$(dirname $(readlink -f $0))
. $dir/config
cmd="docker build -t $build ."
$cmd
