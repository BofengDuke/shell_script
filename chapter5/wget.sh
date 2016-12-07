#!/bin/bash/
# 入门wget

# wget url

url=https://baidu.com


# -O 指定下载的文件的输出名字
# -o 指定一个日志文件
wget https://baidu.com -O baidu.html -o wgetLog.log

# -t 下载被迫中断，可重复多次下载
wget -t 5 $url

# --limit-rate 限速, k,m 指定单位
wget --limit-rate 20k $url

# -Q ,--quota ，限制下载量

# 断点续传
wget -c $url

######################3
# curl 的使用
# curl 是是写入stdout，需要重定向到文件
curl $url > baidu_curl.html

# --mirror  复制或镜像整个网站
wget --mirror $url
#或者 -l 指定层级，-r 递归， -N 对文件使用时间戳
# wget -r -N -l DEPTH URL

# 访问需要认证的网站
# wget --user username --password pass URL


