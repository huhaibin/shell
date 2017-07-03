#!/bin/bash

# 配置要安装的常用软件
softwareName=(# =两边不能有空格
# 基础包
vim
git
wget
bash-completion # bash命令参数自动补全，CentOS7新版不会自动安装此工具包
gcc
g++
net-tools # 包含基本的网络工具包，ifconfig, netstat等
redhat-lsb # 系统版本信息查看工具
)

# 拼接常用软件命令
nameList=""
for name in ${softwareName[@]}
do
    nameList=${nameList}" "${name}
done

# 批量安装常用软件
sudo yum install -y ${nameList}
