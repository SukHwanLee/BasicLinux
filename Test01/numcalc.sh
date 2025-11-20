#! /bin/bash

:<<'END'
num1=100
num2=$num1+200
echo $num2

num3=`expr $num1 + 200`
echo $num3

num4=`expr \( $num1 + 200 \) / 10 \* 2`
echo $num4
END


x=3; y=4
z=$((x+y)); echo $z
let z=$x+$y; echo $z
z=`expr $x + $y`; echo $z

# awk
echo awk
echo $x $y | awk '{print $1+$2}'
echo $x $y | awk '{print $1/$2}'

# bc
echo bc
echo "$x+$y" | bc
echo "$x+$y" | bc -l
#result=$(echo "scale=4; $x/$y" | bc)
#echo $result

