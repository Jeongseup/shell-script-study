#! /bin/bash

# $1, 2, 3... they were passed into script like arguments in comman programming lang
echo $1 $2 $3 ' > echo $1 ..'

# if you want to use many input, you can use args array
args=("$@")
echo "Using args like ${args[0]} ${args[1]} ${args[2]}"
echo "no args ${args[3]}"

# args super commands
echo $@
echo $#