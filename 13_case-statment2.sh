#! /bin/bash

# receive your input
vehicle=$1

# case statment like switch in general programming lang
case $vehicle in 
    # pattern1 )
    #     statements ;;

    # pattern2 )
    #     statements ;;
    # ...

    "car" ) 
        echo "Rent of $vehicle 100 dollar" ;;

    "van" ) 
        echo "Rent of $vehicle 100 dollar" ;;

    * )
        echo "Unknown vehicle" ;;

esac