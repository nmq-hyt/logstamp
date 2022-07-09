#!/bin/bash
# a utility I made to to write messages to a file, along with a timestamp of when they were written
# take textual input, prepend datetime format dd/mm hrs/min, write as a complete single line to a particular file

LOGFILE=/home/nmq-hyt/Projects/bash/logstamp/log

if [ $1 = "-log" ]
  then
    read logmsg
    echo $(date +%d/%m@%H:%M) $logmsg >> $LOGFILE 
fi

if [ $1 = "-disp" ]
then
    cat $LOGFILE 
fi

if [ $1 = "-edit" ]
then
    vim $LOGFILE 
fi

if [ $1 = "-help" ]
then
	echo "logstamp: a little logging utility by nmq-hyt\n-log\tlog input to the file\n-disp\tdisplay the log file\n-edit edit the logfile\n-help\tlist these helpful options. \n Logstamp writes to a file to save its information; to change that file you can edit the LOGSTAMP variable."
fi

