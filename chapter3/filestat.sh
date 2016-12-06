#!/bin/bash
#用途:统计文件夹中的文件类型数目

if [$# -ne 1 ];then
    echo $0 basepath
    echo 
fi
path=$1

declare -A statarray

while read line;
do
    ftype=`file -b "$line"`
    let statarray["$ftype"]++;
done< <(find $path -type f -print)

echo ========== File types and counts ========
for ftype in "$(!statayyay[@])";
do 
    echo $ftype : ${statarray["ftype"]};
done
