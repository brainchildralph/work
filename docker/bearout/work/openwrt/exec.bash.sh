#!/bin/bash
dir=$(dirname $(readlink -f $0))
source $dir/config
set -x
docker exec -it $container sh
set +x

