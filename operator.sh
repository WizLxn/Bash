#!/bin/bash

#原生bash不支持数学运算，可以通过awk和expr实现
#表达式和运算符之间要有空格，如2+2是错误的，必须是2 + 2。
#完整的表达式使用``包含
val=`expr 2 + 2`
echo "sum : ${val}"


a=10
b=20
echo "10+20: "`expr $a + $b`
echo "10-20: "`expr $a - $b`
echo "10*20: "`expr $a \* $b`  ## * 前需要加反斜杠
echo "20/10: "`expr $b / $a`
echo "20%10: "`expr $b % $a`
if [ $a ==  $b ]
then
  echo "$a equals $b"
fi

if [ $a != $b ]
then
  echo "$a not equals $b"
fi


########  关系运算符
#关系运算符只支持数字，不支持字符串，除非字符串的值是数字
#-eq 	检测两个数是否相等，相等返回 true。 	
#-ne 	检测两个数是否相等，不相等返回 true。 	
#-gt 	检测左边的数是否大于右边的，如果是，则返回 true。 
#-lt 	检测左边的数是否小于右边的，如果是，则返回 true。 
#-ge 	检测左边的数是否大等于右边的，如果是，则返回 true。 
#-le 	检测左边的数是否小于等于右边的，如果是，则返回 true。 	

if [ $a -eq $b ]
then
  echo "$a equals $b"
else
  echo "$a not equals $b"
fi

if [ $a -ne $b ]
then
  echo "$a not equals $b"
else
  echo "$a equals $b"
fi


#### 布尔运算符
#! 	非运算，表达式为 true 则返回 false，否则返回 true。 
#-o 	或运算，有一个表达式为 true 则返回 true。  同|| 	
#-a 	与运算，两个表达式都为 true 才返回 true。  同&&

if [ $a -lt 100 -o $b -gt 100 ]
then
  echo "$a -lt 100 -o $b -gt 100, result true"
else
  echo "$a -lt 100 -o $b -gt 100, result false"
fi

if [ $a -lt 100 -a $b -gt 15 ]
then
  echo "$a -lt 100 -a $b -gt 15, result true"
else
  echo "$a -lt 100 -a $b -gt 15, result false"
fi


#### 字符串运算符
#= 	检测两个字符串是否相等，相等返回 true。 	
#!= 	检测两个字符串是否相等，不相等返回 true。 	
#-z 	检测字符串长度是否为0，为0返回 true。 	
#-n 	检测字符串长度是否为0，不为0返回 true。 
#str 	检测字符串是否为空，不为空返回 true。 	[ str ]

a="abc"
b="efg"

if [ $a = $b ]
then
  echo "$a = $b : true"
else
  echo "$a = $b : false"
fi

if [ -z $a ]
then
  echo "-z $a : length is zero"
else
  echo "-z $a : length is not zero"
fi

if [ $a ]
then
  echo "$a is not empty"
else
  echo "$a is empty"
fi 


#### 文件测试运算符
#用于检测Unix文件的各种属性
#-b file 	检测文件是否是块设备文件，如果是，则返回 true。 
#-c file 	检测文件是否是字符设备文件，如果是，则返回 true。 
#-d file 	检测文件是否是目录，如果是，则返回 true。 	
#-f file 	检测文件是否是普通文件（既不是目录，也不是设备文件），如果是，则返回 true。 	
#-g file 	检测文件是否设置了 SGID 位，如果是，则返回 true。 
#-k file 	检测文件是否设置了粘着位(Sticky Bit)，如果是，则返回 true。 	
#-p file 	检测文件是否是具名管道，如果是，则返回 true。 
#-u file 	检测文件是否设置了 SUID 位，如果是，则返回 true。 	
#-r file 	检测文件是否可读，如果是，则返回 true。 
#-w file 	检测文件是否可写，如果是，则返回 true。 
#-x file 	检测文件是否可执行，如果是，则返回 true。 
#-s file 	检测文件是否为空（文件大小是否大于0），不为空返回 true。 	
#-e file 	检测文件（包括目录）是否存在，如果是，则返回 true。 


file="operator.sh"
if [ -r $file ]
then
  echo "$file can read"
else
  echo "$file can not read"
fi

if [ -w $file ]
then
  echo "$file can write"
else
  echo "$file can not write"
fi

if [ -d $file ]
then
  echo "$file is a dictionary"
else
  echo "$file is not a dictionary"
fi

