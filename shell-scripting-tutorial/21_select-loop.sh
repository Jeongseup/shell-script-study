#!/bin/bash

select name in mark john tom ben
do
    # wait for user input selected!
    # echo "$name selected"

    case $name in 
    mark)
        echo $name selected
        ;;
    john)
        echo $name selected
        ;;
    tom)
        echo $name selected
        ;;
    ben)
        echo ben selected
        ;;
    *)
        echo "Error"
    esac
done