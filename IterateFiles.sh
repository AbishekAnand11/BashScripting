#!/bin/bash
for file in *.txt; do
  if [ -f $file ]; then
    filecount=$(wc -l < $file)
    echo "$file : $filecount"
  fi  
done  