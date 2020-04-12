#!/bin/zsh

arr_test_string=("abc" "def" "ghi" "jkl")
echo ${arr_test_string[2]}
echo ${arr_test_string[@]}

arr_test_string+=("mno")
arr_test_string+=("pqr" "stu")
for i in ${arr_test_string[@]}; do
    echo $i
done

## 배열에서 원소 삭제
## /를 사용해 해동 문다열 부분이 있으면 삭제, 삭제하고자 하는 문자나 문자열이 포함되어 있는 부분을 모두 삭제
## unset을 이용해 삭제하는 것을 recommend한다

remove_element=("abc")
arr_test_string=("${arr_test_string[@]/$remove_element}")

echo ${arr_test_string[1]}
echo ${#arr_test_string[1]}

echo ${arr_test_string[2]}
echo ${#arr_test_string[2]}

echo ${arr_test_string//def/xyz}
echo ${#arr_test_string[@]} ## 배열 전체 개수 출력

unset arr_test_string
echo ${arr_test_string}
echo ${#arr_test_string[@]}