#! /bin/bash

count=10
# -eq 비교시 문자열 숫자를 넣더라도 알아서 형변환 후 comparison
if [ $count -gt "10" ]
then
    # statement
    echo "true"
fi

# 일반적인 숫자 비교는 아래와 같이 [] 가 아닌 ()로 진행
if (($count >= 10))
then
    # statement
    echo "true"
fi

word=a
# '['열고 ']'닫고 사이에는 반드시 space bar가 필요
if [[ $word < "b" ]]
then 
    echo "condition is true"
fi

word2=a
if [[ $word2 == "b" ]]
then
    echo "true here"
elif [[ $word2 == "a" ]]
then
    echo "true2 here"
else
    echo "false there"
fi