#!/bin/bash


function insert
{
    echo "$fname,$lname,$num,$comp" >> contacts.csv
}

function edit
{
    echo -n "" > contacts1.csv

    while read line; do
        if test "$(echo $line | awk -F, '{print $1}')" = "$fsearch"; then
            echo "$fname,$lname,$num,$comp" >> contacts1.csv
        else
            echo $line >> contacts1.csv
        fi
    done < contacts.csv

    rm contacts.csv
    mv contacts{1,}.csv
}

function display
{
    tail -n +2 contacts.csv > contacts1.csv
    if [[ $asc -eq 1 ]]; then
        sort contacts1.csv
    else if [[ $asc -eq 0 ]]; then
        sort -r contacts1.csv
    fi fi

    rm contacts1.csv
}

function search 
{
    while read line; do
        if test "$(echo $line | awk -F, '{print $1}')" = "$search" -a "$col" = "fname"; then
            echo "Contact:"
            echo "First name: $(echo $line | awk -F, '{print $1}')"
            echo "Last name: $(echo $line | awk -F, '{print $2}')"
            echo "Number: $(echo $line | awk -F, '{print $3}')"
            echo "Company: $(echo $line | awk -F, '{print $4}')"
        else if test "$(echo $line | awk -F, '{print $2}')" = "$search" -a "$col" = "lname"; then
            echo "Contact:"
            echo "First name: $(echo $line | awk -F, '{print $1}')"
            echo "Last name: $(echo $line | awk -F, '{print $2}')"
            echo "Number: $(echo $line | awk -F, '{print $3}')"
            echo "Company: $(echo $line | awk -F, '{print $4}')"
        else if test "$(echo $line | awk -F, '{print $3}')" = "$search" -a "$col" = "number"; then
            echo "Contact:"
            echo "First name: $(echo $line | awk -F, '{print $1}')"
            echo "Last name: $(echo $line | awk -F, '{print $2}')"
            echo "Number: $(echo $line | awk -F, '{print $3}')"
            echo "Company: $(echo $line | awk -F, '{print $4}')"
        else if test "$(echo $line | awk -F, '{print $4}')" = "$search" -a "$col" = "company"; then
            echo "Contact:"
            echo "First name: $(echo $line | awk -F, '{print $1}')"
            echo "Last name: $(echo $line | awk -F, '{print $2}')"
            echo "Number: $(echo $line | awk -F, '{print $3}')"
            echo "Company: $(echo $line | awk -F, '{print $4}')"
        fi fi fi fi
    done < contacts.csv
}

function delete
{
    echo "fname,lname,mobile,office" > contacts1.csv

    while read line; do
        if test "$(echo $line | awk -F, '{print $1}')" = "$search" -a "$col" = "fname"; then
            continue;
        else if test "$(echo $line | awk -F, '{print $2}')" = "$search" -a "$col" = "lname"; then
            continue;
        else if test "$(echo $line | awk -F, '{print $3}')" = "$search" -a "$col" = "number"; then
            continue;
        else if test "$(echo $line | awk -F, '{print $4}')" = "$search" -a "$col" = "company"; then
            continue;
        fi fi fi fi
        echo $line >> contacts1.csv
    done < $(tail -n +2 contacts.csv)

    rm contacts.csv
    mv contacts{1,}.csv
}

#((((((((
while getopts ":C:f:l:n:o:k:c:v:ad" o; do
    case $o in
    C) func=$OPTARG ;;
    f) fname=$OPTARG ;;
    l) lname=$OPTARG ;;
    n) num=$OPTARG ;;
    o) comp="$OPTARG" ;;
    k) fsearch=$OPTARG ;;
    c) col=$OPTARG ;;
    v) search=$OPTARG ;;
    a) asc=1 ;;
    d) asc=0 ;;
    esac
done

if test "$func" = "insert"; then insert
else if test "$func" = "edit"; then edit
else if test "$func" = "display"; then display
else if test "$func" = "search"; then search
else if test "$func" = "delete"; then delete
fi fi fi fi fi
