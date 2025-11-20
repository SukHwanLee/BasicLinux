# while_ex.sh
#! /bin/bash

echo "비밀번호를 입력하세요."
read mypass

while [ $mypass != "1234" ]
do
	echo "다시 입력하세요."
	read mypass
done
echo "Pass ~~"
