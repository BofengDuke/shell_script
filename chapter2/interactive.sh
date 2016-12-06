#/bin/bash
#文件名：interactive.sh
#作用：交互输入自动化
    
read -p "Enter number:" no;
read -p "Enter name: " name

echo You have entered $no,$name

# Usage: echo -e "1\nhello\n" | ./interactive.sh
# echo -e 用来生成序列

# or Usage：
# echo -e "1\nhello\n" >  input.data
# ./interactive.sh < input.data

