#!/bin/bash
dir=$(dirname $(readlink -f $0))
. $dir/config
cmd="docker pull $image"
$cmd
