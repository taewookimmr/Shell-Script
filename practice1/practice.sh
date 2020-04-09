## annotation
echo "hello world"
printf "hello world\n"
printf "%s %s\n" hello world

printf "--------------------\n"

## 함수
## function을 생략해도 된다
## 함수 호출부는 함수 선언부보다 아래에 위치해야 한다.
string_test(){
    echo "starting test"
}

function string_test2(){
    echo "string test 2"
    echo "params : ${@}"
}

string_test
string_test2
string_test2 "hello" "world"

printf "--------------------\n"
## 변수
## 앞뒤 공백없이=사용
## 기본적으로 전역으로 생성됨, 단 함수 안에서만 지역변수를 사용할 수 있다. 이때 local을 붙여준다.
## 기본적으로는 현재 스크립트에서만 사용할 수 있다. 자식 스크립트에서 사용하기 위해서는 export 키워드를 붙여준다. 

string="hello world bye world"
echo ${string}
string_test3(){
    local string="locally used string"
    echo ${string}
}

string_test3
export string_for_child="hello my child"
source ./export_test.sh

printf "--------------------\n"
## 예약 변수, reserved variable
## 반복문도 공부

declare -a list
list=(${HOME} ${PATH} ${LANG} ${PWD} ${FUNCNAME} ${SECONDS} ${SHLVL} ${SHELL} ${PPID} ${MAIL} ${OSTYPE} ${TERM} ${HOSTYPE} ${LOGNAME} ${UID})
for e in ${list}; do;
    echo ${e};
done

## 위치 매개 변수, positional parameters
parameter_test(){
    echo 실행된 스크립트 이름 $0
    echo 전체 인자 값 $*
    echo 전체 인자 값 $@
    echo 매개 변수 총 개수 $#
    echo $1
    echo $2
}
parameter_test "good" "make"

## 매개 변수 확장(Parameter Expension)
testString="abc-efg-123-abc"
parameter_test_expension(){
    echo \${변수}  ${testString}
    echo \%{변수:위치} 위치 다음부터 문자열 추출 ${testString:4}
    echo \%{변수:위치:길이} 위치 다음부터 지정한 길이 만큼의 문자열 추출 ${testString:4:3}
    echo 나중에 더 보도록 합시다.
}
parameter_test_expension