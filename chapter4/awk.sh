#!/bin/bash
# awk 入门
# awk用于数据流，可以对列和行操作

# 格式如下：
# awk ' BEGIN{ print "start" } pattern { commads } END{ print "end" }'

# 使用例子，如：
awk 'BEGIN{ print "start"  } { print  } END{ print "END" }' file
# 处理流程如下：
# 1，执行BEGIN{ commands } 语句块中的语句
# 2, 从文件或stdin中读取一行，然后执行pattern{ command }。重复这个过程，直到文件全部被读取完毕
# 3, 当读至输入流末尾时，之心END{ command } 语句块

# pattern 是可选的，如果提供，如果匹配了则执行{ command } 里面的内容
# 如果不提供，则默认全部都匹配，
# { } 类似于循环体，会对文件的每一行迭代


# 通常将变量放在 BEGIN中
cat file | awk 'BEGIN{ i=0;print "START" } {i++;print i} END{ print "END"}'


# awk 的特殊变量
# NR，表示记录数量（number of records）,在执行过程中对应与当前行号
# NF，表示字段数量（number of fields），在执行过程中对应于当前行的字段数
# $0，包含执行过程中当前行的内容
# $1, 包含第一个字段的内容
# $2, 包含第二个字段的内容
#Ex:
echo -e "line1 f2 f3\nline2 f4 f5\nline3 f6 f7" | awk '
{
    print "Line no:" NR ",No of fields:" NF ,"$0= "$0, "$1= "$1, "$2= "$2, "$3= "$3
}'

# 下面的代码中，echo 会生成一个空白行，变量comout包含命令 grep root /etc/passwd 的输出，然后打印包含root的行
# grep 默认下会读取所有的行，awk 中的 getline 可以只读取某一行
echo | awk '{grep root /etc/passwd" | getline cmdout;print cmdout }'


# awk 中的for循环有两种方式
# for(i=0;i<10;i++) {print $i;}
# for(i in array) {print array[i];}







