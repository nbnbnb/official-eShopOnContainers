#!/bin/bash

git pull
docker pull registry.cn-hangzhou.aliyuncs.com/zhangjj/demo:"eshop-$1"
docker-compose --env-file ./.env.arm -f docker-compose-ARM.yml -f docker-compose-ARM.override.yml up -d --force-recreat $1
docker image prune -f
