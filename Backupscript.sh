#!/bin/bash

# Set variables
BACKUP_DIR="/home/ec2-user/BashScripting-Backup"
SOURCE_DIR="/home/ec2-user/BashScripting/"

# Create backup directory if not exists...
mkdir -p $BACKUP_DIR

# Backup files
echo "Backing up files from $SOURCE_DIR to $BACKUP_DIR..."
cp -r $SOURCE_DIR $BACKUP_DIR

echo "Backup completed successfully."
