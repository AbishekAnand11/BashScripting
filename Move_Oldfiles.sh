#!/bin/bash

Old_files=$(find . -type -f "*.sh" -mtime +1)
BackupDir="/home/ec2-user/ScriptsDuplicate"

if [ -n $Old_files ]; then
  mkdir $BackupDir
else  