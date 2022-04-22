#!/bin/bash
# for loops

# CASE1)
# for VARIABLE in 1 2 3 4 5 .. N
# do 
#     cmd 1
#     cmd 2
#     cmd 3
#     cmd N
# done 
for i in 1 2 3 4 5
do 
    echo $i
done

# for VARIABLE in file1 file2 file3
# do 
#     cmd 1 on $VARIABLE
#     cmd 2
#     cmd N
# done 


for ((i=0; i<=10; i++)); 
do
    echo hello $i
done