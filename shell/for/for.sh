#This is one of the loop function
# when we need to run the command repeatedly then we have friend called for loop
# paragraph="Hellow myself ritik made"
# for word in $paragraph
# do 
#  echo $word
#  done

 # assume you need to ping the multiple server you can use this function
#  servers=("1.1.1.1" "4.4.4.4")
#  for joker in $servers
#  do echo $servers
#  ping $servers
#  done

#assumme i need to create the multiples files using for loop function then we can achieve this using two methods
#FIrst Method
#In this we seperate diffrent file using space as given below
# for file in hundread thousand million billion trillion
# do 
# rm -rf $file
# done

#Second method by creating the file and mentioed all the name, and called via the $() like below
for file in "$(cat example.txt)"
do rm -rf  $file
done