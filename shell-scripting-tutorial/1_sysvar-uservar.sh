#!/bin/bash
# des) '#'는 hash, '!'는 bang을 뜻함. 자세한 의미는 모르겠지만 쉘 스크립트를 사용하겠다는 의미.

# scripts
echo "hello, seup"

# system variables in operating system. 
echo $BASH
echo $(bash --version)
echo $HOME
echo $PWD

# user created variables in operating system.
# variable letter should not start from number
name=Jeongseup
age=27

echo My name is $name
echo My age is $age


