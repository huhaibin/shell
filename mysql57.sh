#!/bin/bash

# 安装mysql5.7的官方源
wget https://repo.mysql.com/mysql57-community-release-el7-9.noarch.rpm
yum install -y mysql57-community-release-el7-9.noarch.rpm

# 安装mysql5.7
sudo yum install -y mysql-community-server

# 启动mysql服务
sudo systemctl start mysqld.service

# 查看临时密码
grep "password" /var/log/mysqld.log

# 执行安全设定
mysql_secure_installation
