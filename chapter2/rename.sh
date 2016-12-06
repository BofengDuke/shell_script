#/bin/bash
# 用途 重命名.jpg和.png 文件

count=1;
for img in *.jpg *.png
do 
    new=image-$count.${img##*.}
    mv "$img" "$new" 2> /dev/null

    if [ $? -eq 0 ];then
        echo "Renaming $img to $new"
        let count++
    fi
done

