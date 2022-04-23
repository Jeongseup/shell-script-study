#!/bin/bash
 
#  for command in ls pwd date
#  do 
#     echo "---------------$command----------------"
#     $command
# done

for item in *
do 
    # if it's a dir or file
    if [ -d $item ]
    then
         echo $item
    fi
done