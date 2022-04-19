#! /bin/bash

age=25

if [[ "$age" -gt 18 && "$age" -lt 30 ]]
# if [ "$age" -gt 18 -a "$age" -lt 30 ]
# if [ "$age" -gt 18 ] && [ "$age" -lt 30 ]

then
    echo "valid"
    else
    # 신기한 게 일반적인 if else 가 아닌 하나라도 체크되면 그 안에서 if else로 들어간다.
    echo "not valid"
fi

