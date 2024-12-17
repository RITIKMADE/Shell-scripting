#!/bin/bash
# if apt list --installed | grep -q apache2; then
#     echo "apache2 is already installed"
# else 
#     echo "apache2 is not available. Installing now..."
#     sudo apt install apache2 -y
# fi


# mkdir new 
# if [ -d "$1" ]; then
# echo "created"
# else 
#     echo "falied"
# fi

# if [ "$1" -ge "2" ];
# then echo "Its less than 2"
# else echo "Its greater than 2"
# fi

if [ "$?" = "0,127" ];
then echo "Previous command run properly"
else echo "Previous command doest not run properly"
fi