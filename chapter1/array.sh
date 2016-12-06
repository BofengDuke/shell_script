#!/bin/bash
# 数组练习

################
# 数组
#array_var = (1 2 3 4 5 6)
# 或者单个定义
array_var[0]="text1"
array_var[5]="text5"
echo ${array_var[0]}
index=5
echo ${arrray_var[$index]}
          
# 以清单形式打印所有的值
echo ${array_var[*]}
echo ${array_var[@]}

# 打印数组长度
echo ${#array_var[*]}

