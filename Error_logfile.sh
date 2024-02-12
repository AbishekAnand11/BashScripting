#!/bin/bash

log_file="/home/ec2-user/BashScripting/error_log.txt"
if [ -e $log_file ]; then
  echo "file already exists"
else
  touch $log_file 
fi 

exec 2>> $log_file

echo "Script started.."
# wrong command to get error in script and to check whether the error populates in log file
ls /abt

echo "script ended at $(date)"