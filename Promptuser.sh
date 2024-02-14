#!/bin/bash

read -p "enter a number :" num
echo "User entered the Number $num"

if [ $num -gt 0 ]; then
  echo "the number is positive"
else 
  echo "Enter a valid positive number"
fi  
