#!/bin/bash/
# 正则表达式的使用

# 匹配所有的英文单词
# ( ?[a-z][A-Z]+ ?)
# "?" 用于匹配单词前后可能出现的空格
# "[a-z][A-Z]+ 代表一个或多个字母

# 匹配IP地址
# [0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}

# [a-z]*.[0-9] 表示匹配0个或多个[a-z]([a-z]*),接任意单个字符(.) ，再接[0-9] 任意数字
# 如，能匹配 abcdeO9

###########################################
# grep的正则表达式用法
# 搜索单词，返回文本行
grep match_pattern filename
grep "match_pattern" filename
grep "match_text" file1 file2 file3

# 从stdin中读取
echo -e "this is a word\nnext line" | grep word

# 高亮单词
grep "match_text" file --color=auto

# grep 通常将”match_pattern"视为通配符，如果需要使用正则表达式,
# 加上 -E ， 或者使用egrep
grep -E "[a-z]+"
egrep "[a-z]+"

# 只输出文件中匹配到的文本部分 -o
echo "this is a line." | grep -o -E "[a-z]+\."

# 统计文件或文本中包含匹配字符的行数
grep -c "text" file

# 统计匹配项的数量
echo -e  "1 2 3 4 5\nhello\n 6 7" | egrep -o "[0-9]" | wc -l

# 打印匹配所在的行数
grep "text"  -n file
# 匹配所在的字符偏移
echo "gnu is not unix" | grep -b -o "not"

# 搜索多个文件并找出匹配文本位于哪个文件
grep -l "text" file1 file2

# 忽略样式大小
echo "hello world" | grep -i "Hello"

# 使用-e来支持多个匹配样式
echo "this is a line of text" | grep -e "this" -e "line" -o

# 提供一个样式文件，逐行写下需要匹配的样式，执行 -f
# echo pat_file
# hello 
# cool
grep -f pat_file source_file
echo "hello this is cool" | grep -f pat_file

# 搜索包括的文件，如 .c和.cpp 文件
grep "main()" . -r --include *.{c,cpp}

# xargs 可以将文件名列表作为命令行参数提供给其他命令
# 
grep "test" file* -lZ | xargs -0 rm





