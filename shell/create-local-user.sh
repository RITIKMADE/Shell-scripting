#!/bin/bash

if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run as root. Use sudo."
    exit 1
fi

read -p "Enter the username for the new user: " username
read -p "Enter the home directory path (leave blank for default /home/$username): " homedir
homedir=${homedir:-/home/$username}
read -p "Enter the group name (leave blank for default group '$username'): " groupname
groupname=${groupname:-$username}

# Check if the group exists, and create it if necessary
if ! getent group "$groupname" > /dev/null 2>&1; then
    echo "Group '$groupname' does not exist, creating it..."
    groupadd "$groupname"
fi

useradd -m -d "$homedir" -s /bin/bash -g "$groupname" "$username"

if [ $? -eq 0 ]; then
    echo "User '$username' created successfully."
else
    echo "Failed to create user '$username'."
    exit 1
fi

echo "Set a password for the new user:"
passwd "$username"
