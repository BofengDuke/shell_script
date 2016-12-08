#!/bin/bash

# fping 
# -a 指定打印出所有活动主机地址
# -u 指定打印所有无法到达的主机
# -g 指定从Ip/mash从生成ip地址

fping -a 172.24.11.1/24 -g

# 进行dns查找
echo -e  "172.24.11.3\n172.24.11.4\n" > ip.list
fping -a -d 2>/dev/null <ip.list
