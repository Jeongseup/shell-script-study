# shell-script-study


### 쉘 스크립트란? 
`cat /bin/shells` 하면 나오는 내 OS에서 사용가능한 shells들의 종류 중 `/bin/bash`를 이용해서 프로그램을 만드는 것을 뜻함.

기본적으로 .sh파일을 생성한 후에 `chmod`커맨드로 실행가능하게 해줘야 permission error가 뜨지 않는다.

`#!/bin/bash`의 의미
```
That is called a shebang, it tells the shell what program to interpret the script with, when executed.
In your example, the script is to be interpreted and run by the bash shell.
Some other example shebangs are:
```
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
- bash에서 할당하는 변수는 기본적으로 integer로 할당한다.

### echo & printf
`echo`로 프린팅하다가 중간에 `\n`와 같은 new line command를 주고 싶다면 `printf`를 사용한다.

### Tips

bc 실수 자동 처리 설정[https://stackoverflow.com/questions/27470210/bash-bc-modulo-does-not-work-with-l-flag]

리눅스에는 archimetic expansion이 존재해서 이를 이용해서 variable을 increment, decrement하면 된다.

출처 : https://askubuntu.com/questions/385528/how-to-increment-a-variable-in-bash

case statement는 key-value mapping으로 처리하면 편할 듯
```shell
case $vehicle in 
    # pattern1 )
    #     statements ;;

    # pattern2 )
    #     statements ;;
    # ...

    "car" ) 
        echo "Rent of $vehicle 100 dollar" ;;

    "van" ) 
        echo "Rent of $vehicle 100 dollar" ;;

    * )
        echo "Unknown vehicle" ;;

esac
```

select 를 쓰면 CLI 처럼 만들 수 있음

### 명령어 실행
`;` : 성공여부와 상관없이 다음 명령어 실행

```shell
mkdir test;cd test # test란 폴더를 만들고 바로 cd
```

`&&`  : 성공한 경우에 다음 명령어 실행. then 같은 느낌

```shell
# before
mkdir test; cd test; touch abc # 만약 mkdir test가 실패했다면 cd가 실패하고 touch abc는 현재 pwd에서 실행

# after
mkdir test && cd test && touch abc
```

`$?` : 명령어 반환값, 이전 명령의 성공 여부를 알려준다. 0 이 아니면 다 뭔가 잘못된 것을 의미

```shell
mkdir test
echo $? # 0

mkdir test # the file exists
echo $? # 1
```

`&` : 명령어를 백그라운드로 동작시킬 때 사용


`{}` : 명령어 그룹핑 시 사용, 같은 context를 공유
```shell
mkdir test3 && {cd test3; touch abc; echo 'success!!' } || echo 'There is no dir';
```