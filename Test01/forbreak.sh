# forbreak.sh
#! /bin/bash

for file in /etc/*
do
	if [ "${file}" == "/etc/shadow" ]; then
		echo yes
		break
	fi
done
