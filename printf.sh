#!/bin/bash

#printf 使用引用文本或空格分隔的参数，外面可以在printf中使用格式化字符串，还可以制定字符串的宽度、左右对齐方式等。默认printf不会添加换行符，我们可以手动添加 \n

printf "Hello, Shell\n"

printf "%-10s %-8s %-4s\n" 姓名 性别 体重kg    #%-10s 指一个宽度为10个字符（-表示左对齐，没有则表示右对齐）
printf "%-10s %-8s %-4.2f\n" 郭靖 男 66.1234   #%-4.2f 指格式化为小数，其中.2指保留2位小数
printf "%-10s %-8s %-4.2f\n" 杨过 男 48.6543 
printf "%-10s %-8s %-4.2f\n" 郭芙 女 47.9876 


#
printf "%d %s\n" 1 "abc"  #双引号
printf '%d %s\n' 1 "abc"  #单引号效果相同
printf %s abcdef          #没有引号效果也一样
printf "\n"

#多出的参数会按照之前的参数格式输出
printf %s abc def    
printf "\n"
printf "%d %s %d"  43 "fwefew" 4343 3445
printf "\n"

#如果没有arguments， %s用NULL代替，%d用0代替
printf "%s and %d \n"



###### 转义符
#\a	警告字符，通常为ASCII的BEL字符
#\b	后退
#\c	抑制（不显示）输出结果中任何结尾的换行字符（只在%b格式指示符控制下的参数字符串中有效），而且，任何留在参数里的字符、任何接下来的参数以及任何留在格式字符串中的字符，都被忽略
#\f	换页（formfeed）
#\n 	换行
#\r	回车（Carriage return）
#\t	水平制表符
#\v	垂直制表符
#\\	一个字面上的反斜杠字符
#\ddd 	表示1到3位数八进制值的字符。仅在格式字符串中有效
#\0ddd	表示1到3位的八进制值字符
