#!/bin/bash/
# curl 入门

url=https://www.baidu.com/index.html
# --silent 不显示进度信息
# -O 从URL中解析文件名，并输入数据进球
curl $url --silent -O

# -o 可以指定文件名
# 用--progress 代替 --silent， 显示带#的进度条

# 断点续传,可以指定偏移量，更高级
# 不指定offset ，curl可以自动计算从哪里开始断点续传
curl $url/file -C 

#  设置cookie: --cookie “COOKIE"
curl $url --cookie "user=name;pass=passwd"
# 保存cookie: --cookie-jar
curl $url --cookie-jar cookiejar

# 指定代理 --user-agent

# 指定其他头部信息 -H "头部信息”
curl -H "Host: www.baidu.com" -H "Accept-language: en" $url

# 指定最大下载量，单位 bytes
curl $url --max-filessize 20

# -u  完成认证
# curl -u user:psswd $url

# -I -head  打印文件头信息
curl -I $url

