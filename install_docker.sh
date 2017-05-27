#!/bin/bash

# 使用默认镜像源安装
sudo yum instal docker

# 将当前用户加入docker组（方便直接使用docker命令，否则需要sudo使用root权限）
sudo groupadd docker
sudo usermod -aG docker $USER

# 启动docker服务
sudo systemctl start docker

# 配置阿里云专属Docker仓库加速地址
sudo mkdir -p /etc/docker
sudo tee /etc/docker/daemon.json <<-'EOF'
{
  "registry-mirrors": ["https://i9nnnhhg.mirror.aliyuncs.com"]
}
EOF
sudo systemctl daemon-reload
sudo systemctl restart docker

# 测试docker服务
echo "测试docker hello world..."
sudo docker run hello-world
