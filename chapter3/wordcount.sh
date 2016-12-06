#!/bin/bash
# 统计文件的行数/单词数/字符数
# 统计行数
wc -l file
cat file | wc -l
      
# 统计单词数
wc -w file
cat file | wc -w
         
# 统计字符数
wc -c file
cat file | wc -c

# 全部统计 
wc file

# 打印最长行的长度
wc file -L
wc file
