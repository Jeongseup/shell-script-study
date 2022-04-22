#! /bin/bash
# while loops
n=1

while (( $n <= 10 ))
do
    # command1
    echo "$n"

    # n=$(( n+1 ))
    ((n++))
    # ((++n))
done
