#!/bin/bash

tag='registry.cn-shanghai.aliyuncs.com/ytx-zq/kong-prometheus:latest'
echo ${tag}
ALIYUN_PASSWORD='saUhhsEBGjasdhgi330!@#'
ALIYUN_USERNAME='huangguan@ytx'
docker login --username=${ALIYUN_USERNAME} --password=${ALIYUN_PASSWORD}  registry.cn-shanghai.aliyuncs.com
docker build -t ${tag} .
docker push ${tag}
docker pull ${tag}
echo ${tag}