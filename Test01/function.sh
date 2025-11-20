# function.sh
#! /bin/bash

:<<'END'
# function 1
value=1234;

my_function1(){
   local value=5678
   echo "function: value= ${value}"
}
 
echo "before  : value= ${value}"
 
# call my_function
my_function1
 
echo "after   : value= ${value}"

echo; echo
END

# function 2
value=1234;

my_function2(){
   local value=$1
   echo "It’s my_function= ${value}"
   #echo "$value+100" | bc
}
 
# call my_function
result=$(my_function2 5678)
 
echo "my_function : [ ${result} ]"
#echo -e "my_function : \n${result}"

echo; echo

# function3
my_function3(){
    echo "argv: $1 $2"
    eval "$3='yy'"
}
 
# call my_function
result=""
my_function3 "myname" "acepro" result
 
echo "my_function [ ${result} ]"


