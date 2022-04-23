#!/bin/bash

function usage() {
    echo "you need to provide an argument : "
    echo "usage : $0 file_name"
    exit
}

function if_file_exist()  {
    local file="$1"
    [[ -f "$file" ]] && return 0 || return 1
} 

# if user don't any input? call usage function
[[ $# == 0 ]] && usage

if ( if_file_exist "$1" )
then
    echo "File found"
else
    echo "File not found"
fi