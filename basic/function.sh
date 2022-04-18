#!/bin/bash

function fun1(){
	echo "func1() execute"
}

fun2() {
	echo "func2() execute"
}

# 함수 호출
fun1
fun2

