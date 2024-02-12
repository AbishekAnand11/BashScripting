#!/bin/bash

logfile = "logs/error_log.txt"
if [ ! -f $logfile ]; then
  touch $logfile
fi 

exec 2>> $logfile

echo "Script started"

ls /abt

echo "script ended at $(date)"