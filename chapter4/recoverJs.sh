#!/bin/bash
#恢复被格式化的js文件

# 说明：
# 用 “;\n" 替换";"
# 用”{\n\t" 替换“{”， "\n}"替换"}"

cat $1 | sed 's/;/;\n/g; s/{/{\n\t/g; s/}/\n}/g ' >> tempfile
mv tempfile $1
