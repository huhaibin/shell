#!/bin/bash

# 安装jenkins镜像
docker pull jenkins

# 为jenkins创建挂载目录
sudo mkdir -p /jenkins_home
sudo chmod -R 777 /jenkins_home

# 启动jenkins为后台服务
# -d：变成后台守护进程
# --restart always：容器一旦退出始终重启
# --name jenkins：将当前容器命令为jenkins
# -p 9000:8080：将本机9000端口映射成容器8080端口
# -v /jenkins_home:/var/jenkins_home：将本机jenkins_home目录映射为容器jenkins_home目录
docker run -d --restart always --name jenkins -p 8900:8080 -p 50000:50000 -v /jenkins_home:/var/jenkins_home jenkins
