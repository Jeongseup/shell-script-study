#!/bin/bash

for (( i=1; i<=10; i++ ))
do
    if (( $i == 3 || $i == 6))
    # if [ $i -eq 3 -o $i -eq 6 ]
    # if (( $i > 5 ))
    then
        continue
    fi
    echo "$i"
done