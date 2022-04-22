#!/bin/bash
#while loops

# while read p
# do 
#     echo $p
# done < 17_read-file-content.sh

# cat 17_read-file-content.sh | while read p
# do 
#     echo $p
# done

#  IFS는 뭐지?
while IFS=' ' read -r line
do
    echo $line
done < 17_read-file-content.sh
