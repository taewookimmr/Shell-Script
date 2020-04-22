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

grep root /etc/passwd