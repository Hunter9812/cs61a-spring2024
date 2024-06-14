#!/bin/bash

start=$1
end=$2
word=$3
suffix=$4
is_sol=$5

for ((i=start; i<=end; i++))
do
    if [ $i -lt 10 ]; then
        lab_number="0$i"
    else
        lab_number="$i"
    fi

    if [ "$is_sol" = "true" ]; then
        prefix="sol-"
    else
        prefix=""
    fi
    wget -O "${word}${lab_number}.${suffix}" "https://cs61a.org/${word}/${prefix}${word}${lab_number}/${word}${lab_number}.${suffix}"
done
