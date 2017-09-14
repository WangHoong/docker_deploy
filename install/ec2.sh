#!/usr/bin/env bash

# 安装需要的软件
sudo yum install git mysql docker -y

# 安装docker compose
sudo usermod -a -G docker ec2-user
sudo curl -L https://get.daocloud.io/docker/compose/releases/download/1.11.2/docker-compose-`uname -s`-`uname -m` | sudo tee /usr/local/bin/docker-compose > /dev/null
sudo chmod +x /usr/local/bin/docker-compose

# 配置docker文件
sudo mkdir /etc/docker
sudo echo '{"registry-mirrors":["http://3fcf853c.m.daocloud.io"],"insecure-registries":["54.223.52.77:5000"]}' | sudo tee /etc/docker/daemon.json

sleep 3
sudo service docker start

echo 'finished'
