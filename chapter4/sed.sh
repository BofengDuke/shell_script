#!/bin/bash
# sed 入门
# sed 最常用是进行文本替换

# 替换文本
# sed 's/pattern/replace_string/' file
cat file | sed 's/pattern/replace_string/' file

# 保存文件，
sed 's/text/replace/' file > newfile
mv newfile file

# 或者使用 -i ，直接作用于原文件
sed -i  's/text/replace/' file

# sed 默认只会替换每一行中第一个匹配的内容
# 参数g 可以替换全部
sed 's/text/replace/g' file

# 忽略前N个，从第N+1个开始替换
sed 's/text/replace/3g/' file

# | / ： 在sed中是作为界定符使用

# 移除空白行，在空白行中，行首紧跟着行尾
# /pattern/d 会移除匹配的样式
sed '/^$/d' file

# 用&标记匹配样式的字符串，能够在替换时使用已匹配的内容
# \w\+ 匹配每一个单词
echo "this is an example" | sed 's/\w\+/[&]/g'

# 只匹配给定样式的其中一部分
# 模式被包括在被使用斜线转义过的()中
# 下面的这条命令将 digit 7 替换成 
# \1 表示匹配到的第一个子串
echo "this is a digit 7 in a number" | sed 's/digit \([0-9]\)/\1/'

# 交换两个单词
echo "first SECOND" | sed 's/\([a-z]\+\) \([A-Z]\+\)/\2 \1/'

# 组合多个表达式
# 下面两行表达式等价
sed 'expression' | sed 'expression'
sed 'expression; expression'

# 表达式中右变量时，可以使用双引号
text=hello
echo hello world | sed 's/$text/HELLO/'

# 移除某一段话中的 包含moblie phones的句子
sed '/s/ [^.]*moblie phones[^.]*\.//g' file
