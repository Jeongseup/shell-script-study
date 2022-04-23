#!/bin/bash

# just declare functions
function hello() {
    echo "function return"
}

quit () {
    exit 
}

function print() {
    # argument
    echo $1 $2 $3
}

# how to call the funciton declared ?

print hello world again
print world

hello
quit # if the func was called, this script will be quited
