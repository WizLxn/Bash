#!/bin/bash

#[ function ] funname [()]
#{
#    action;
#    [return int;]
#}

#  1、可以带function fun() 定义，也可以直接fun() 定义,不带任何参数。
#  2、参数返回，可以显示加：return 返回，如果不加，将以最后一条命令运行结果，作为返回值。 return后跟数值n(0-255 

demoFun(){
  echo "This is a shell function"
}
echo "Before function"
demoFun
echo "After function"


funWithReturn(){
  echo "Calculate two number..."
  echo "Input first value:"
  read aNum
  echo "Input second value:"
  read anotherNum
  echo "Two values were $aNum and $anotherNum !"
  return $(($aNum+$anotherNum))
}
#funWithReturn
#echo "The sum of two values is $? !"   #函数返回值在调用该函数后通过 $? 来获得


funWithParam(){
  echo "First param is $1 !"
  echo "Second param is $2 !"
  echo "Tenth param is $10 !"
  echo "Tenth param is ${10} !"  #$10 不能获取第十个参数，获取第十个参数需要${10}。当n>=10时，需要使用${n}来获取参数。 
  echo "33th param is ${33} !"
  echo "params count is $# !"
  echo "All params as a list : $* !"
}

funWithParam 4534 6 4 4 6 7 89  324  656 546 
