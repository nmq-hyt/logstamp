#!/bin/bash
# a utility I made to to write messages to a file, along with a timestamp of when they were written
# take textual input, prepend datetime format dd/mm hrs/min, write as a complete single line to a particular file
if [ $1 = "-l" ]
  then
    read logmsg
    echo $(date +%d/%m@%H:%M) $logmsg >> /home/nmq-hyt/Projects/bash/logstamp/log
fi

if [ $1 = "-d" ]
then
    tail /home/nmq-hyt/Projects/bash/logstamp/log
fi
