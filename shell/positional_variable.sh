# echo "Here is my file name $0"
#  echo "here is second thing $1"
#  echo "here is second thing $#"
#!/bin/bash

# if [ "$1" != "" ]; then
#     echo "Positional parameter 1 contains something"
# else
#     echo "Positional parameter 1 is empty"
# fi

echo "This is name of the file $0"
echo "I am creating this user $1"
sudo adduser --home /home/$1