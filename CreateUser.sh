#!/bin/bash

# Prompt the administrator for the username
read -p "Enter the username for the new user: " username

# Prompt the administrator for the home directory
read -p "Enter the home directory for the new user (press Enter for default): " home_dir

# If the home directory is not provided, set it to the default
if [ -z "$home_dir" ]; then
    home_dir="/home/$username"
fi

# Prompt the administrator for the password
read -s -p "Enter the password for the new user: " password
echo

# Create the user account with the provided information
sudo useradd -m -d "$home_dir" -s /bin/bash "$username"

# Set the password for the new user
echo "$username:$password" | sudo chpasswd

# Check if the user account creation was successful
if [ $? -eq 0 ]; then
    echo "User account '$username' created successfully."
else
    echo "Failed to create user account '$username'."
fi
