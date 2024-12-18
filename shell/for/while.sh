# var=6
# while [  "$var" -le 1 ]
# do  echo $var
# var=$(($var + 2))
# done

var=$(service docker status)
if  [[ "$var" == *"Docker is not running"* ]];
then 
echo "docker is not running"
$1 service docker start
fi