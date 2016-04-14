#!/bin/sh

# echo用于字符串输出
echo "It is a test"
echo  It is a test   #双引号可以省略

echo "Input a string"
read name      #从标准输入中读取内容
echo "$name is a test"

####显示换行
echo -e "OK! \n"   #  -e 开启转义
echo "It is a new line"

####显示不换行
echo -e "OK! \c"  # \c 不换行
echo "In a same line"


####显示结果定向至文件
echo "It is a test" > myfile

####显示命令执行结果
echo `date`

