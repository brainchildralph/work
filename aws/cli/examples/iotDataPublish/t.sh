#!/bin/bash
source c 
if [ "$1" == "dry" ] ; then
  set -nv
fi
data=$(date +%Y%m%d%H%M%S)
aws iot-data publish --topic sensor --qos 0 --payload '{"data":"'$data'"}'
