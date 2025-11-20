# forlist.sh
#! /bin/bash

list="1 2 3 4 5"
for var1 in $list
do
	echo var value : $var1
done

for var2 in "1 2 3 4 5"
do
	echo var value : $var2
done

arr=(1 2 3 4 5)
for var3 in "${arr[@]}"
do
	echo var value : $var3
done
