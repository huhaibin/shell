#!/bin/bash

# 配置要安装的php扩展
extensionName=(# =两边不能有空格
php
php-fpm
composer # php包管理器
php-mcrypt
php-pdo
php-mbstring
php-xml
php-mysql
)

# 拼接php扩展命令
nameList=""
for name in ${extensionName[@]}
do
    nameList=${nameList}" "${name}
done

# 批量安装常用软件
sudo yum install -y ${nameList}
