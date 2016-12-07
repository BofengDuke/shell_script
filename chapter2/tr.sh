#!/bin/bash
# tr的使用

# tr 只能够通过stdin,而无法通过命令行参数来接受输入
# 格式 ： tr set1 set2
# Ex:

# 将大写转为小写
# 其中，'a-z' 是集合， 合法的集合还有'ABD-}' 'aA.' 'a-ce-x' 等等
echo "HELLO WHO IS THIS" | tr 'A-Z' 'a-z'

# 数字反转
echo 12345 | tr "0-9" '987654321'

# 将制表符换成空格
cat file | tr '\t' ' '

####
# 用tr删除内容,不需要设置set2
# cat file | tr -d '[set1]' 
echo "Hello 123 world 456" | tr -d '0-9'

# -c 使用set1 的补集
# 例子中，补集包含除数字，空格，换行符之外的所有字符，将他们都删除
echo hello 1 char 2 next 4 | tr -d -c '0-9 \n'

# -s 压缩输入中重复的字符
echo "GNU is   not     UNIX." | tr -s ' '

# 将数字列表相加
echo -e '1\n2\n3\n4\n5\n' | echo $[  $(tr '\n' '+' ) 0]

# tr 可以使用字符类
# 如：alnum 字母和数字
# digit 数字 ； lower 小写字母；space 空白字母；upper 大写字母等等
tr '[:lower:]' '[:upper:]' 


