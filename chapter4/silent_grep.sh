#!/bin/bash
#文件名：slient_grep.sh
#测试文件是否包含特定的文本内容

# 提示：
# -q 静默模式
# 命令行运行成功返回0，失败返回非0值


if [ $# -ne 2 ];then
    echo "$0 match_text filename"
fi

match_text = $1
filename = $2

grep -q $match_text $filename
if [ $? -eq 0 ];then
    echo "The text exists in the file"
else
    echo "Not exist"
fi


