#!/bin/bash


docker pull registry.cn-hangzhou.aliyuncs.com/zhangjj/demo:"eshop-$1"
docker-compose -f docker-compose-arm.yml up -d --force-recreat $1


