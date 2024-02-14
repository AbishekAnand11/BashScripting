#!/bin/bash
for file in *.txt; do
#Check whether the files exists and its a proper file? ( -f )
  if [ -f $file ]; then
    #wc -l = counts the number of lines
    filecount=$(wc -l < $file)
    echo "$file : $filecount"
  fi  
done  