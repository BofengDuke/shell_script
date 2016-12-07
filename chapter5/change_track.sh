#!/bin/bash
#文件名：change_track.sh
#用途： 跟踪网页更新

if [ $# -ne 1 ];then
    echo -e "$Usage $0 URL\n"
    exit -1
fi

first_time=0
if [ ! -e "last.html" ];then
    first_time=1
fi

curl --silent $1 -o recent.html

if [ $first_time -ne 1 ];then
    changes=$(diff -u last.html recent.html)
    if [ -n "$changes" ];then
        echo -e "Changes:\n"
        echo "$changes"
    else
        echo -e "\nWebsites has no changes"
    fi
else
    echo "[First run] Archiving..."
fi

cp recent.html last.html
