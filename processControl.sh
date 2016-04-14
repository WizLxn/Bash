#!/bin/bash

#if else

a=10
b=20
if [ $a ==  $b ]
then
  echo "$a equals $b"
elif [ $a -gt $b ]
then
  echo "$a greater than $b"
elif [ $a -lt $b ]
then
  echo "$a litter than $b"
else
  echo "no match condition"
fi

#for
for loop in 1 2 3 4 5
do
  echo "The value is: $loop"
done


#while
int=1
while(( $int<=5 ))
do
  echo $int
  let "int++"
done


#case
echo 'Input a number between 1 and 4 :'
read aNum
case $aNum in
  1) echo 'You input 1'
  ;;
  2) echo 'You input 2'
  ;;
  3) echo 'You input 3'
  ;;
  4) echo 'You input 4'
  ;;
  *) echo 'Your input value not between 1 and 4.'
  ;;
esac


#break
while :
do 
  echo -n "Input a value between 1 and 5:"
  read aNum
  case $aNum in
    1|2|3|4|5)
      echo "You input $aNum"
    ;;
    *) 
      echo "Your input value not between 1 and 5, game over!"
      break;
    ;; 
   esac
done
