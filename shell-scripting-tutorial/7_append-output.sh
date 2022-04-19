#! /bin/bash

echo pwd
echo -e "Enter the name of the file : \c"
read file_name

# check the file is existed
if [ -f $file_name ]
then 
    # check the file has write permission
    if [ -w $file_name ]
    then
        echo "Type some text. To quit press ctrl + d"
        # '>' : angle breakit?
        # '>>' : overwrite means data
        cat >> $file_name
    else
        echo "The file do not have write permission"
    fi
else
    echo "$file_name is not existed"
fi
