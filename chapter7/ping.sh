#!/bin/bash
# 检测所有活动的主机

# & 符号可以将程序放到后台运行，实行并行运行
for ip in 172.24.11.{1..255};
do
   ( ping $ip -c 4 &> /dev/null
    
    if [ $? -eq 0 ];then
        echo $ip is alive
    fi )&
done
