#!/bin/bash

############
# 文件描述符
# 0 --- stdin
# 1 --- stdout
# 2 --- stderr

# 将错误重定向到file2,stdout内容重定向到file1
cmd 2>stderr.txt 1> stdout.txt


################
# 别名
# alias new_command='command sequence'
# alias install='sudo apt-get install'
