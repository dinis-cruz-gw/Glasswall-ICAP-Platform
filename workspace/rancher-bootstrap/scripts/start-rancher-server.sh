#!/bin/bash

yum -y install docker

mkdir -p /opt/rancher-data/mysql
mkdir -p /opt/rancher-data/rancher

#systemctl disable firewalld

service docker start

docker run -d --restart=unless-stopped \
-v /opt/rancher-data/mysql:/var/lib/mysql \
-v /opt/rancher-data/rancher:/var/lib/rancher \
-p 80:80 -p 443:443 \
--privileged \
rancher/rancher:latest