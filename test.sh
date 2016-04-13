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

