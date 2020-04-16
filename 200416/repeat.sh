#!/bin/zsh
## $1은 첫번째 매개변수, $n은 n번째 매개변수

depth=$2

space="(${depth})"
count=1
while [ $count -le $depth ]; do 
    count=$((count+1))
    space="----$space"
done

for dir in `ls $1`
do
    if [ -d $1/$dir ]; then
        echo "$space$dir"
        nextdepth=$((depth+1))
        $PWD/repeat.sh $1/$dir $nextdepth
    fi

    if [ -f $1/$dir ]; then
        echo -e "\e[31m$space$dir(File)\e[0m"
    fi
done

## rwx = 4 + 2 + 1 