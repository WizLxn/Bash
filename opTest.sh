#!/bin/bash

# test 命令用于检查某个条件是否成立，它可以进行数值、字符和文件三个方面的测试。

#-eq 	等于则为真
#-ne 	不等于则为真
#-gt 	大于则为真
#-ge 	大于等于则为真
#-lt 	小于则为真
#-le 	小于等于则为真
num1=100
num2=100

if test $[num1] -eq $[num2]
then
  echo "两数相等"
else
  echo "两数不相等！"
fi


#= 	等于则为真
#!= 	不相等则为真
#-z 字符串 	字符串的长度为零则为真
#-n 字符串 	字符串的长度不为零则为真
str1="rumoob"
str2="rumoob"

if test str1=str2
then
  echo "strs equal"
else
  echo "strs not equal"
fi



#-e 文件名 	如果文件存在则为真
#-r 文件名 	如果文件存在且可读则为真
#-w 文件名 	如果文件存在且可写则为真
#-x 文件名 	如果文件存在且可执行则为真
#-s 文件名 	如果文件存在且至少有一个字符则为真
#-d 文件名 	如果文件存在且为目录则为真
#-f 文件名 	如果文件存在且为普通文件则为真
#-c 文件名 	如果文件存在且为字符型特殊文件则为真
#-b 文件名 	如果文件存在且为块特殊文件则为真

cd /bin
if test -e ./bash
then
  echo 'file exists'
else
  echo "file not exists"
fi


# ( -a )、或( -o )、非( ! )三个逻辑操作符用于将测试条件连接起来，其优先级为："!"最高，"-a"次之，"-o"最低
cd /bin
if test -e ./notFile -o ./bash
then
  echo "one file exists!"
else
  echo "no file exists"
fi
