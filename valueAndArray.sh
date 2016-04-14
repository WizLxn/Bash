#!/bin/bash
echo "Hello World!"
value="This is a value"
echo "Test out put a ${value}xxx.."
value="new data"
echo ${value}
#readonly value    #设置变量为只读
unset value      #清空变量内容
value="Vector"
#value="Hello, my name is \"${value}\"!\n"
#echo ${value}

greeting="hello, "${value}" !"  #字符串拼接
greeting_1="hello, ${value} !"
echo $greeting $greeting_1   #单行输出多个变量

#获取字符串长度
echo ${#value}

#提取子字符串
echo ${greeting:1:4}

#查找字符串
echo `expr index "${greeting}" Ve`  #查找 V或e的位置



###数组，下标从0开始，元素使用空格分割，可以单独定义数组的各个分量，并且可以不使用连续的下标，下标范围没有限制
#定义数组的一般形式为： 数组名=(值1 值2 ... 值n)
array_name=(${value} 34 "fewfw")
array_name[5]="new value"
echo ${array_name[5]}
#使用@符号获取所有元素
echo ${array_name[@]}

echo ${#array_name[@]}   #获取数组元素个数
echo ${#array_name[*]}   #获取数组元素个数
echo ${#array_name[5]}   #获取单个元素的长度
