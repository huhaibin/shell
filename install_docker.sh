#!/bin/bash

# 使用默认镜像源安装
sudo yum instal docker

# 启动docker服务
sudo systemctl start docker

# 测试docker服务
echo "测试docker hello world!"
sudo docker run hello-world
