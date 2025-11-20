# forin3.sh
#! /bin/bash

for var in {1..5}
do
	echo var : $var
done

for var in {1..10..2}
do
	echo var : $var
done

for ((i=0; i<5; i++)); do
	echo $i
done
