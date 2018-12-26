#!/bin/bash
#docker run --name openwrt --privileged -p 80:80 -p 443:443 -i bearout/work:openwrt /sbin/init
#docker run --name openwrt --privileged -p 80:80 -p 443:443 -it bearout/work:openwrt sh
docker run --name openwrt -p 80:80 -p 443:443 -it bearout/work:openwrt
