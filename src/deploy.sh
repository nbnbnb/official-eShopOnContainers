#!/bin/bash

docker pull registry.cn-hangzhou.aliyuncs.com/zhangjj/demo:"eshop-$1"
docker-compose --env-file ./.env.arm -f docker-compose-ARM.yml -f docker-compose-ARM.override.yml up -d $1
docker image prune -f
