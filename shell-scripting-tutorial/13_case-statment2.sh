#! /bin/bash

echo -e "Enter some character : \c"
read value

case $value in 
    # regular expression
    [a-z] ) 
        echo "User entered $value in from a to z" ;;
    [A-Z] ) 
        echo "User entered $value in from A to Z" ;;    
    [0-9] )
        echo "User entered $value in from 0 to 9" ;;
    ? )
        echo "User entered $value in special character" ;;
    * )
        echo "Unknown" ;;

esac