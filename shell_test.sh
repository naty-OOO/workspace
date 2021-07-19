#!/bin/bash
echo "hello world!"
a="hello world!!!!!"
echo "a is:"
echo $a
#列出当前文件夹文件
ls
#显示文件信息
file
b="hello"
echo "${b}world"
name="li"
echo $name
name="chenxin"
echo $name
url="http://licxxa"
readonly url
unset b
echo $b
echo ${#name}
echo ${name:0:5}
echo `expr index "$name" i`
echo $name $a
array=(
001
002
003)
array2[0]="i"
array2[1]="am"
array2[2]="king"
echo ${array[2]}
echo ${array2[2]}
echo ${array2[@]}
len=${#array[@]}
echo $len
len=${#array[*]}
echo $len
len1=${#array2[2]}
echo $len1

