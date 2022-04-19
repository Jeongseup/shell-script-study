#! /bin/bash

# read user inputs 
echo "Enter names : "
read n1 n2 n3
echo "Entered names : $n1 , $n2, $n3"

# read user input with print msg
read -p "username : " user_var
read -sp "password : " pass_var # hide user input, but save 
echo
echo "username : $user_var"
echo "pw : $pass_var"

# read user input by using array
echo "Enter names arr : "
read -a names
echo "Name arr :  ${names[0]}, ${names[1]} ..."
echo "All names are ${names[@]}"

echo "Enter name : "
read
echo "Entered var : $REPLY"

