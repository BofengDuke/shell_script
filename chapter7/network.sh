#!/bin/bash

# ifconfig
# 提取IP地址
ifconfig eth0 | egrep -o "inet [^ ]*" | grep -o "[0-9.]*"

# 获取当前系统分配到的名字服务器
cat /etc/resolv.conf

# 列出系统中开发的端口以及对应的服务信息
lsof -i

# 分两步提取信息
lsof -i | grep ":[0-9]\+->" -o | grep "[0-9]\+" -o | sort | uniq

# netstat -tnp 列出开放端口与服务
