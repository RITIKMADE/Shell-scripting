#!/bin/bash
if apt list --installed | grep -q apache2; then
    echo "apache2 is already installed"
else 
    echo "apache2 is not available. Installing now..."
    sudo apt install apache2 -y
fi


# mkdir new 
# if [ -d "$1" ]; then
# echo "created"
# else 
#     echo "falied"
# fi