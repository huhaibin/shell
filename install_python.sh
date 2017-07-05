#!/bin/bash

# 配置要安装的常用软件
softwareName=(# =两边不能有空格
python-devel # python2开发环境
python34-devel # python34开发环境
)

# 拼接常用软件命令
nameList=""
for name in ${softwareName[@]}
do
    nameList=${nameList}" "${name}
done

# 批量安装常用软件
sudo yum install -y ${nameList}
