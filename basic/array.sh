#!/bin/bash

# 쉘 스크립트에서는 1차원 배열만 지원하며, ()를 사용한다.
arr=("hello" "world" 1 2 3 4 5)

echo "배열 전체 : ${arr[@]}"
echo "배열 원소의 갯수 : ${#arr[@]}"
echo "배열 첫번째 : ${arr}, 혹은 ${arr[0]}"
echo "5번 index를 갖는 배열의 원소 : ${arr[5]}"

arr[5]="five"

echo "5번 index를 갖는 배열의 원소 : ${arr[5]}"

# 5번 원소 해제
unset arr[5]
echo "5번 원소 삭제 후"

echo "5번 index를 갖는 배열의 원소 : ${arr[5]}"
echo "6번 index를 갖는 배열의 원소 : ${arr[6]}"
