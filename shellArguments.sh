#!/bin/bash
#可以在执行脚本时向脚本传递参数。脚本内获取参数的格式为:$n,$1为第一个参数

echo "Shell argument"
echo "Shell file name: $0"  #执行的文件名
echo "First argument: $1"   #第一个参数
echo "Second argument: $2"

echo "Arguments count: $#"  #参数个数
echo "All arguments: $*"    #以字符串显示所有参数
echo "Process ID: $$"     #脚本进程ID
echo "The last process ID: $!"  #后台最后一个进程的ID
echo "All arguments: $@"   #类同$*，但每个参数都用"括起来

echo "Shell option: $-"   #shell当前的选项
echo "Exit status $?"    #最后命令的退出状态

##$* 与 $@ 区别 只有在双引号中体现出来。
#假设在脚本运行时写了三个参数 1、2、3，，则 " * " 等价于 "1 2 3"（传递了一个参数），而 "@" 等价于 "1" "2" "3"（传递了三个参数）


echo "--- \$* ---"
for i in "$*"; do
  echo $i
done

echo "--- \$@ ---"
for i in "$@"; do
  echo $i
done



