#! /bin/bash

echo "1과 10 사이의 숫자를 입력하시오."
read NUM

case $NUM in
1) echo "One" ;;
2) echo "Two" ;;
3) echo "Three" ;;
4) echo "Four" ;;
*) echo "Invalid Number" ;;
esac
