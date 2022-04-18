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
