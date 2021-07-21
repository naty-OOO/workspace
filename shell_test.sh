#!/bin/bash
:<<!
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
echo $name $a
!
#数组
:<<!
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
echo "shell 传递参数实例"；
echo "执行文件名：$0";
echo "第一个参数：$1";
echo "第二个参数：$2";
echo "第三个参数：$3";
!
:<<!
echo "参数个数：$#";
echo "字符串显示：$*";
echo "当前进程id号：$$";
echo "运行最后一个进程id号:$!";
sum=`expr $1 + $2`
echo "和为$sum"
mul=`expr $1 - $2`
echo "差为$mul"
pro=`expr $1 \* $2`
echo "乘积为$pro"
div=`expr $1 / $2`
echo "商为$div"
if [ $1 == $2 ]
then
	echo "$1等于$2"
fi
if [ $1 != $2 ]
then
	echo "$1 不等于$2"
fi
if [ $1 -eq $2 ]
then
	echo "$1等于$2"
fi
if [ $1 -lt $2 ]
then
	echo "$1小于$2"
fi
if [ $1 -gt 1 -a $1 -lt 5 ]
then 
	echo $1
else
	echo "pass"
fi
！

：<<!
if [ $1 = $2 ]
then
	echo "$1等于$2"
else
	echo "$1不等于$2"
fi
if [ -n $1 ]
then 
	echo "$1字符串长度为${#1}"
else
	echo "字符串长度为0"
fi
if [ $1 ]
then 
	echo "$1字符串不空"
else
	echo "字符串空"
fi
if [ -r $0 ]
then
echo "文件可读"
else
echo "文件不可读"
fi
if [ -w $0 ]
then
echo "文件可写"
else
echo "文件不可写"
fi
if [ -x $0 ]
then
echo "文件可执行"
else
echo "文件不执行"
fi
if [ -d $0 ]
then
echo "文件是目录"
else
echo "文件不是目录"
fi
!
#输出至指定文件，输出换行、不换行
:<<!
echo "\"hello\"" > output.txt
read name
echo  -e "name is \n$name" > output.txt
echo -e "name is \c"
echo "$name"
!
:<<!
echo '$name\'
echo `date`
printf "hello\n"
printf "%-s %-s %-s\n" 姓名 性别 体重kg  
printf "%-1s %-8s %-4.2f\n" 郭靖1 男 66.1234
printf "%-10s %-8s %-4.2f\n" 杨过 男 48.6543
printf "%-10s %-8s %-4.2f\n" 郭芙 女 47.9876
!
:<<!
echo "请输入两个数"
read num1 num2
if [ $num1 == $num2 ]
then 
	echo "$num1 等于 $num2"
elif [ $num1 -gt $num2 ]
then 
	echo "$num1 大于 $num2"
else 
	echo "$num1 小于 $num2"
fi
sum=$[num1+num2]
echo "和为$sum"
!
:<<!
for i in 1 2 3 4 5
do
	echo "$i"
done
for j in hello!
do 
	echo "$j"
done

read n
i=0
while(($i <= $n))
do
	echo $i
	#let "i++"
	#i=$[i+1];
	i=`expr $i + 1`
done
echo '按下<ctrl -D>退出'
echo -n '输入网址：'
while read FILM
do 
	echo "$FILM"
done
!
:<<!
i=0
until [ $i -eq 1000 ]
do
	case $i in
	10) 
	echo $i 
	;;
	20) 
	echo $i 
	;;
	esac
	let "i++"
done
!
casefun(){
echo "请输入数字"
read num
case "$num" in
	"a") echo "您输入的是a"
	;;
	"b") echo "b您输入的是b"
	;;
	"c") echo "您输入的是c"
	;;
	"d") echo "您输入的是d"
	;;
	"e") echo "您输入的是e"
	;;
	*)   echo "error!!!!"
	;;
esac
	echo "第一个参数：$1"
	echo "第一个参数：$2"
	echo "第一个参数：$3"
	echo "第一个参数：${10}"
	echo "$*"
	return $num
}
echo "start-----------"
casefun a b c d e f g h i j k l m 
echo "返回值：$?"
echo "end--------------"


