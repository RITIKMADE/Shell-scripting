#used for arthmetic expression, always remeber to use space in between arthetic operation and value like below
#expr $1 + $2

#this does not give you proper answer like in decimal see  example below
# if you divide 10 /3 it will give answer 3, even the correct answer is 3.33
#expr $1 / $2 


# we can use Double Parenthesis
A=3
B=10
echo "divide of $((B / A))"