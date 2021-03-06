#!/bin/bash
VAR=hack.fun.book.txt
echo "VAR = $VAR"

# % 属于非贪婪操作。
# 操作符% 使用 .* 从右到左找出匹配通配符的字符串
# 移除.*最右边的内容
echo ${VAR%.*}

# 操作符 %% 使用 .* 从右到左执行贪婪匹配
echo ${VAR%%.*}

# 操作符 # 使用 *. 从左到右找出匹配通配符的字符串
echo ${VAR#*.}

# 操作符 ## 使用 *. 从左到右执行贪婪匹配
echo ${VAR##*.}




