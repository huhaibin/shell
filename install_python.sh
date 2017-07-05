#!/bin/bash

# 配置要安装的常用软件
softwareName=(# =两边不能有空格
python-dev # python开发环境
)

# 拼接常用软件命令
nameList=""
for name in ${softwareName[@]}
do
    nameList=${nameList}" "${name}
done

# 批量安装常用软件
sudo yum install -y ${nameList}
