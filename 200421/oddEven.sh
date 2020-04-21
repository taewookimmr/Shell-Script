#!/bin/zsh

for ips in $(cat ipaddr_list1)
do
    subip="${ips:(-1):1}"
    if [ "$(($subip % 2))" != 0 ];then
        echo "$ips is odd"
    else
        echo "$ips is even"
    fi
done