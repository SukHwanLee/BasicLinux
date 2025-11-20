#! /bin/bash

echo "화면에 출력할 파일을 입력하세요"
read fname

if [ -f $fname ] && [ -s $fname ]; then
	head -5 $fname
else
	echo "파일이 없거나 크기가 없음"
fi
