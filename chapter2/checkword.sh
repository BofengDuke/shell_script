#!/bin/bash
word=$1
grep "^$1$" ../dict/cracklib-small -q
if [ $? -eq 0 ];then
    echo $word is cracklib-small word;
else
    echo $word is not a dictionary word;
fi
