#!/bin/bash
# 按列合并文件
paste file1 file2

# -d 指定界定符
paste file1 file2 -d ','

# 逆序输出行
# 默认分隔符是 \n, -s 可以指定
# tac | file1
seq 5 | tac

