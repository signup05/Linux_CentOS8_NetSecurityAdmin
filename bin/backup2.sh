#!/bin/bash

LOG_FILE=/var/log/backup.log
echo >> $LOG_FILE

echo "===== Backup START : `date` ===========" >>  $LOG_FILE

/root/bin/backup.sh >/dev/null 2>&1
if [ $? -eq 0 ] ; then 
	echo "Backup	[  O K  ]" >>  $LOG_FILE
else
	echo "Backup	[  FAIL ]" >>  $LOG_FILE
fi

echo "===== Backup STOP : `date` ===========" >>  $LOG_FILE
