#! /bin/bash

num1=20
num2=5

echo $num1 + $num2 is
echo $((num1 + num2))

echo $(( num1 + num2))
echo $(( num1 - num2))
echo $(( num1 * num2))
echo $(( num1 / num2))
echo $(( num1 % num2))

printf "\nif you want to not use (( and then use expr command like this"
echo $(expr $num1 + $num2)

