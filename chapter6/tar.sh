#!/bin/bash
# tar归档入门

tar -cf output.tar file1 file2

# -r追加文件
touch file3 
tar -rvf output.tar file3

# 列出内容, 更多细节 -v -vv
tar -tf output.tar

# 提取文件
tar -xf output.tar
tar -xf output.tar -C path/

# 拼接两个文档
tar -cf file1.tar file1
tar -cf file2.tar file2
tar -Af file1.tar file2.tar

# 查看上面合并是否操作成功
tar -tvf file1.tar

# -u 文件时间更新了才追加
tar -uvvf file1.tar file2

# --delete  从归档文件中删除文件
tar -f output.tar --delete file1

# 压缩归档
# -j 指定 bunzip2 格式
# -z 指定 gzip 格式

# --totals 打印总字节数
touch file3.txt
tar -cf arc.tar * --exclude "*.txt" --totals


