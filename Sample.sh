#!/bin/bash
mkdir logs
cd logs
logfile = "error_log.txt"
if [ ! -f $logfile ]; then
  touch $logfile
fi 

exec 2>> $logfile

echo "Script started.."

ls /abt

echo "script ended at $(date)"