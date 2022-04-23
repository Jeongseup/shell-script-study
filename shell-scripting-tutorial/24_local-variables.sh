#!/bin/bash


function print() {
    # access global variable
    # name=$1

    # if you want to declare variable locally?
    local name=$1
    echo "the name is $name"
}

# global variable
name="tom"

echo "the name is $name : Before"

print seup

echo "the name is $name : After"
