#!/bin/bash
dir=$(dirname $(readlink -f $0))
. $dir/config
set -x
docker start -i $container
set +x

