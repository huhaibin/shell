#!/bin/bash

# 配置要安装的常用软件
softwareName=(# =两边不能有空格
# 基础包
vim
git
bash-completion # bash命令参数自动补全，CentOS7新版不会自动安装此工具包
# web服务
nginx
npm # nodejs包管理器
php
php-fpm
composer # php包管理器
redis
)

# 拼接常用软件命令
nameList=""
for name in ${softwareName[@]}
do
    nameList=${nameList}" "${name}
done

# 批量安装常用软件
sudo yum install -y ${nameList}
