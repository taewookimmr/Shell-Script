#!/bin/bash


## 변수를 사용하는 방법
re="^[0-9]+$"
if [[ $1 =~ $re ]]; then
    echo "number"
else 
    echo "not number"
fi


## 연산자에 바로 적용하는 방법, 문자를 감싸주지 않음
if [[ $1 =~ ^[0-9]+$ ]];then
    echo "number"
else    
    echo "not number"
fi