#!/bin/bash
# 批量生成缩略图

if [ $# -ne 2 ];then
    echo "Usage: $0 [size] [pic_dir] "
    exit -1
fi

echo "Start to convert ..."
size=$1
directory=$2
cd $directory
mkdir -p thumbs
for img in *.jpg;
do 
    convert   "$img" -resize $size"x" "thumbs/thumb_"$img
done

echo "End.."
