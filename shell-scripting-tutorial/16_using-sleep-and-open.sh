#! /bin/bash
# while loops
n=1

while (( $n <= 3 ))
do
    # command1
    echo "$n"
    
    (( n++ ))
    open -a Terminal.app & 
    # program sleep
    # sleep 1

done
