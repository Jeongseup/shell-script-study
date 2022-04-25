#!/bin/bash

var=31

readonly var # like const

# var=50 # NOT reassign beacause that is readonly variable

echo "var => $var"

hello() {
    echo "Hello world"
}

readonly -f hello

hello

# CANNOT overwrite readonly function
# hello() {
#     echo "again"
# }

readonly 
readonly -f # that means built-in readonly variable