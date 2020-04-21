#!/bin/zsh
## 문자열 조작 
## https://medium.com/@jyson88/shell-script-substring-%EB%AC%B8%EC%9E%90%EC%97%B4-%EC%A1%B0%EC%9E%91-7e015d7ed083

str1=abc012
str2=abcd01234

echo "${str1:1}"
echo "${str1:1:2}" ## 문자:시작인덱스:길이
echo `expr "$str1" : '\([a-z]*[0-9][0-9]\)'` ## 정규식 사용
echo "${str1:(-2)}" # 뒤 2번째 자리부터 끝까지 출력

reverse=""
for (( i = ${#str1}-1; i >= 0; i-- ))
do
    reverse="$reverse${str1:$i:1}"
done
echo $reverse ## 역순으로 문자열 출력하기

echo ${str1} | rev ## 역순 문자열 출력