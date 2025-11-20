# forcontinue.sh
#! /bin/bash

FILES="$@"
for file in $FILES
do
	if [ -f ${file}.bak ]; then
		echo "${file}.bak이 이미 존재함."
		continue
	fi
	cp $file $file.bak
done
