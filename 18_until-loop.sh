#!/bin/bash
# until loops
n=1

# reverse while? while로 하면 le인데... 여기선 ge로 해야함
# until [ $n -gt 10 ]
until (( $n > 10))
do 
    echo $n
    ((n++))
done