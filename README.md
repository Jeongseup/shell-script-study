# shell-script-study


### 쉘 스크립트란? 
`cat /bin/shells` 하면 나오는 내 OS에서 사용가능한 shells들의 종류 중 `/bin/bash`를 이용해서 프로그램을 만드는 것을 뜻함.

기본적으로 .sh파일을 생성한 후에 `chmod`커맨드로 실행가능하게 해줘야 permission error가 뜨지 않는다.

---

### 변수의 종류
1. system variable
    - `$BASH` 
2. user variable
    - $변수명

단, 사용자 변수는 숫자로 시작할 수 없다.


### argument 사용법
sample.sh 뒤에 인자를 붙여주면 `echo $1 $2 $3 ' > echo $1 ..'` 과 같이 사용가능하다.
또한, `echo $@` 과 `echo $#` 같은 시스템 변수도 존재한다.

### Comparison in shell script
"$a" and "$b" mean some variables in comment

- integer comparison
    ---
    - eq : des) is equal to / ex) if [ "$a" -eq "$b" ]
    - ne : des) is not equal to / ex) if [ "$a" -ne "$b" ]
    - gt : des) is greater than / ex) if [ "$a" -gt "$b" ]
    - ge : des) is greater than or equal to / ex) if [ "$a" -ge "$b" ]
    - lt : des) is less than / ex) if [ "$a" -lt "$b" ]
    - le : des) is less than or equal to / ex) if [ "$a" -le "$b" ]
    ---
    - '>' : is greater than / ex) (( 비교연산 ... ))
    - '>=' : is greater than or equal to
    - '<' : is less than
    - '<=' : is less than or equal to
    

- string comparison
    - '=' : des) is equal to / ex) if [ "$a" = "$b" ]
    - '==' : des) is equal to / ex) if [ "$a" == "$b" ]
    - '!=' : des) is NOT equal to / ex) if [ "$a" != "$b" ]
    - '<' : des) is less than, in ASCII order / ex) [[ 비교연산 .. ]]
    - '>' : des) is greater than, in ASCII order
    - '-z' : des) string is null, that is, has zero length

### Bash Manual
```
$ man bash

       -e file
              True if file exists.
       -f file
              True if file exists and is a regular file.
```