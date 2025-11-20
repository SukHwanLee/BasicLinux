#! /bin/bash

hap=0
for i in {1..10}
do
	let hap=$hap+$i
done
echo "1부터 10까지의 합:"$hap
