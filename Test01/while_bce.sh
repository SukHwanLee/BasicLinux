# while_bce.sh
#! /bin/bash

echo "무한반복 입력을 시작합니다."
echo "b:break, c:continue, e:exit"

while [ 1 ]; do
	read input
	case $input in
		b | B)
			break ;;
		c | C)
			echo "continue 입력하여 while 조건으로 들어감"
			continue;;
		e | E)
			echo "exit 입력하여 프로그램 종료됨"
			exit 1;;
	esac;
done
echo "break하여 while 빠져나와 이 문장이 출력됨"
