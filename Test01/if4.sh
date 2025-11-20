#! /bin/bash
fname=/lib/systemd/system/cron.service
if [ -f $fname ]
then
	head -5 $fname
else
	echo "cron 서버가 설치되지 않음."
fi
