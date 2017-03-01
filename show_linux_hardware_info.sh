#!/bin/bash

echo "CPU型号和个数："
cat /proc/cpuinfo | grep name | cut -f2 -d: | uniq -c

echo "CPU核心数量："
cat /proc/cpuinfo | grep physical | uniq -c

echo "内存大小："
free -m

echo "硬盘大小："
df -h

echo "Linux系统信息："
lsb_release -a
