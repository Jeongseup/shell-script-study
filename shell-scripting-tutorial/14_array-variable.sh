#! /bin/bash

echo "my current shell is $SHELL ($0)"

# array symbol is ( ) in shell script
os=('ubuntu', 'windows', 'mac')

echo "print all array variables : ${os[@]}"
echo "${os[0]}"
echo "${os[2]}"
echo "if printing out of array indices? : ${os[3]} <- empty"

# bad array subscript.. 
echo "${os[-1]}"

# 신기한 건 에러가 나도 그 다음 줄을 실행함 ㅋㅋ 
# => 생각해봤는데.. 당연히 그렇게 할듯? 스크립트니까.
# => 그리고 에러가 나면 끝내는 게 아니라 에러 났다고 출력하는 걸 리턴하는듯

echo "print array indices ${!os[@]}"
echo "print some array index ${!os[2]}"


# print length of the array
echo "${#os[@]}"

os[0]='seup' # if insert away from array like [6], the rest are null and not printed
echo "change os[0] : ${os[0]}"

# remove element in array
unset os[2]
echo "${os[@]}, ${!os[@]}"

string=dasfklasdja
echo "${string[@]}"
echo "${#string[@]}" # why lenght is 1 not 10?

# print null..?
echo "${string[0]}" # whole values assign to the index 0
echo "${string[1]}"