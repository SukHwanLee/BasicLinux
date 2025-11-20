# forin4.sh
#! /bin/bash

:<<'END'
i=1
for var in $*; do
	echo $var
done


loop_cnt=0
for file in * #현재 디렉터리 모든 파일
do
	let loop_cnt+=1
	echo $loop_cnt file: $file
done

END

for fruit in $(cat fruit_list.txt)
do
	echo fruit: $fruit
done
