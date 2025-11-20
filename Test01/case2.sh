#! /bin/bash

echo "리눅스가 재미있나요? (yes / no)"
read answer

case $answer in
	yes | y | Y | Yes | YES)
		echo "Good"
		echo "더욱 열심히 하세요." ;;
	[nN]*)
		echo "안타깝네요." ;;
	*)
		echo "yes 아니면 no를 입력하세요."
		exit 1;;
esac
