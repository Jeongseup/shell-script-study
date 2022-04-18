#!/bin/bash

function func(){
        a=10
        b=5

        if [ ${a} -eq ${b} ]; then
                echo "a와 b는 같다."
        fi

        if [ ${a} -ne ${b} ]; then
                echo "a와 b는 같지 않다."
        fi

        if [ ${a} -gt ${b} ]; then
                echo "a가 b보다 크다."
        fi

        if [ ${a} -ge ${b} ]; then
                echo "a가 b보다 크거나 같다."
        fi

        if [ ${a} -lt ${b} ]; then
                echo "a가 b보다 작다."
        fi

        if [ ${a} -le ${b} ]; then
                echo "a가 b보다 작거나 같다."
        fi

}

#함수 호출
func
