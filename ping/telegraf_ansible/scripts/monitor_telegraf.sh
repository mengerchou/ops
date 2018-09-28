#!/bin/bash
#2018-09-04
source /etc/profile
process_name=telegraf
process_num=`ps -ef | grep $process_name|grep -v grep|wc -l`
if [ "$process_num" -gt "0" ] 
then
	echo "process alive"
else
	echo "process is down"
	service telegraf restart
fi
