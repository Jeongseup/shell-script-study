#! /bin/bash

# echo에 -e flag를 붙이면 NOT new line이 된다.
echo -e "Enter the name of the file : \c"
read file_name

# -e flag : check read the file existed on it
# -d flag : check the directory existed on it
# -b flag : block special file..?
# -c flag : character special fiel..?
# -s flag : is empty or not?

# found
if [ -e $file_name ]
then 
    echo "$file_name found"
else
    echo "NOT found"
fi

# empty which means the file was 0Byte?
if [ -s $file_name ]
then 
    echo "$file_name is not empty"
else
    echo "$file_name is empty"
fi


# -r : has read permission?
# -w : has write permission?
# -x : has excute permission?