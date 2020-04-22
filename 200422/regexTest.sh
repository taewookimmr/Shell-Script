#!/bin/zsh

## https://prani.tistory.com/117
## 정규표현식 : 텍스트에서 패턴을 인식하는 심볼 표기법   
## grep 
## -grep [option][pattern][file]

## option
## -i : 대소문자 구분 안함
## -v : 반전 매치
## -c : 정규표현식에 매치하는 행의 수 출력
## -l : 일치하는 행을 포함하는 각각의 파일 이름을 출력
## -n : 일치하는 행 앞에 파일의 행 번호를 붙여 출력 
## -h : 복수 파일 검색에서, 파일명을 출력에서 숨김, hide라고 생각하면됨

## 정규표현식 = 리터럴 + 메타문자
## 메타문자 ^ & . [] - () \ | ? * + {}

## 1. 앵커 메타 문자 : ^행의시작, $행의끝

## 문장의 시작이 pas인 것을 찾아달라는 명령
grep -h -n '^pas' dirlist*.txt

## 문장의 끝이 zip으로 끝나는 것을 찾아달라는 명령 
grep -h 'zip$' dirlist*.txt

## .을 사용하면 어떤 문자든 일치시킨다는 의미
## .만 쓰면 어떤 문자든 일치
## .abc 라고 쓰면 dabc, zabc 는 걸리지만 abcz는 걸리지 않음
grep -h '.z.' dirlist*.txt


## 대괄호[] 표현식과 문자클래스
## 대괄호 안에 놓인 메타문자는 특수 의미가 사라진다. 일반 리터럴로 취급된다.
## 대괄호 안의 ^은 부정이 되고, -는 문자 범위를 의미한다.

## am이나 pm이 포함된 것을 찾아달라는 명령
grep -h '[ap]m' dirlist*.txt

## ^이 들어가면 부정 : am, pm을 제외한 것들 : bm cm dm em ... 등등등
grep -h '[^ap]m' dirlist*.txt

## ^는 []밖에 있으므로 ~로 시작하는 것을 뜻함
grep -h '^[A-Z]' dirlist*.txt

## 확장 정규표현식? alternation
echo "AAA"|grep -E 'AAA|BBB'
echo "BBB"|grep -E 'AAA|BBB'
echo "CCC"|grep -E 'AAA|BBB'


## 수량 한정자(확장 정규표현식 기능) : ?, *, +, {}
## ? : 앞의 항목이 없거나 한번만 나타남, 앞의 요소는 선택적이라는 것

## 전화번호 양식 (000) 000-0000, 000 000-0000
## 위와 같이 두가지 양식이 있는데, 이 두개를 모두 나타내는 정규식은 다음과 같다.
## ^\(?[0-9][0-9][0-9]\)? [0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]$
## 위를 축약하면 ^\(?[0-9]{3}\)? [0-9]{3}-[0-9]{4}

echo "(070) 123-4567" | grep -E '^\(?[0-9][0-9][0-9]\)? [0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]$'
echo "(070) 123-4567" | grep -E '^\(?[0-9][0-9][0-9]\)? [0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]$'
echo "070 123-4567" | grep -E '^\(?[0-9]{3}\)? [0-9]{3}-[0-9]{4}'