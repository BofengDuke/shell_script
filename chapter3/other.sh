#!/bin/bash

# /dev/zero 是字符设备，会不断返回0值字节(\0)
dd if=/dev/zero of=junk.data bs=1M count=1

# 比较不同
diff file1 file2
# 更详细输出
diff -u file1 file2
# 得到更详细文件
diff -u file1 file2 > version.patch
# 修补文件和撤销
patch -p1 file1 < version.patch


# 打印头N行和尾N行
head -n 4 file
tail -n 4 file

# 只列出目录的方法
ls -d */
  # -F,令所有输出项都添加上一个代表文件类型的字符，如@ × | 等
  # 目录项是 / 字符，以/$作为行尾进行标记
ls -F | grep "/$"
  # -d是目录文件类型字符，^ 是行首标记
ls -l | grep "^d"
find . type d -maxdepth 1 -print


# 打印目录树
# PATTERN 是描述样式的通配符
tree path -P PATTERN
tree path -P "*.sh"
tree -h
# 生成html输出
tree path -H http://localhost -o out.html


