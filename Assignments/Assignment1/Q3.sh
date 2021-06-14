#!/bin/bash

file=$1

array1=()       #condition1
l1=0
array2=()       #condition2
l2=0
array3=()       #condition3
l3=0
array4=()       #condition4
l4=0

while read line; do
    for word in ${line[@]}; do          #words in each line
        if [[ "$word" =~ ^s[b-z] ]]; then 
            array1+=( $word )
            l1=$(( $l1 + 1 ))
        else if [[ "$word" =~ ^wh ]]; then
            array2+=( $word )
            l2=$(( $l2 + 1 ))
        else if [[ "$word" =~ ^th ]]; then
            array3+=( $word )
            l3=$(( $l3 + 1 ))
        else if [[ "$word" =~ ^a[a-mo-z] ]]; then
            array4+=( $word )
            l4=$(( $l4 + 1 ))
        fi fi fi fi
    done
done < $1

if test ${#array1} -gt 0; then
    echo -n "${array1[0]}"
    for word in ${array1[@]:1:$l1}; do
        echo -n ",$word"
    done
fi
echo ""

if test ${#array2} -gt 0; then
    echo -n "${array2[0]}"
    for word in ${array2[@]:1:$l2}; do
        echo -n ",$word"
    done
fi
echo ""

if test ${#array3} -gt 0; then
    echo -n "${array3[0]}"
    for word in ${array3[@]:1:$l3}; do
        echo -n ",$word"
    done
fi
echo ""

if test ${#array4} -gt 0; then
    echo -n "${array4[0]}"
    for word in ${array4[@]:1:$l4}; do
        echo -n ",$word"
    done
fi
echo ""
