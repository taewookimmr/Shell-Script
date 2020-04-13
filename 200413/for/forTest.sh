#!/bin/zsh

for ((i=0;i<10;i++)); do
    touch test${i}.txt
done


for ((i=0;i<10;i++)); do
    echo ${i}번째 파일입니다. >> test${i}.txt
done

for ((i=0;i<10;i++)); do
    result="`expr $i % 2`"  
    if [ "${result}" -eq 0 ]; then
        cat test${i}.txt
    fi
done
