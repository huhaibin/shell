#!/bin/bash

# 使用默认镜像源安装
sudo yum instal docker

# 启动docker服务
sudo systemctl start docker

# 将当前用户加入dockerroot组（方便直接使用docker命令，否则需要sudo使用root权限），
sudo usermod -aG dockerroot $USER

# 测试docker服务
echo "测试docker hello world!"
docker run hello-world
