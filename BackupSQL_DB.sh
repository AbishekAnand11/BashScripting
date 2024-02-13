#!/bin/bash

DB_USER=""
DB_PASS=""
DB_NAME=""

Backupdir="Path/to/directory"
Backupfile="$Backupdir/$DB_NAME-Backup-$(date +%Y%m%d ).sql"

mysqldump $DB_USER -p $DB_PASS $DB_NAME > $Backupfile

#Checking whether the backup is sucessfull ?

if [ $? eq 0 ]; then
  echo "Back completed sucessfully"
else
  echo "Backup failed"
fi  