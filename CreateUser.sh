#!/bin/bash
read -p "Enter username : " name
# -s is silent. i.e., to enter the pass without displaying 
read -s -p "Enter password : " pass
read -p "Enter Home dir : " homedir

if [ -z $homedir ]; then
  homedir="/home/$name"
fi  

# -s is to set the shell for the user
sudo useradd -m -d $homedir -s /bin/bash $name

echo "$username:$password" | sudo chpasswd

if [ $? -eq 0 ]; then
    echo "User account '$username' created successfully."
else
    echo "Failed to create user account '$username'."
fi