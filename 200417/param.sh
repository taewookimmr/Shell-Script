#!/bin/zsh

echo "Total Param=$#, PROG: $0, param1=$1, param2=$2";

if [ "$#" -lt 1 ]; then
    echo "$# is Illegal number of parameters."
    echo "Usage: $0 [options]"
fi 
args=("$@")

for ((c=1; c<=$#; c++)); do
    echo "$c th parameter = ${args[$c]}";
done