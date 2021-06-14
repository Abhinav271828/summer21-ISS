#!/bin/bash

if test $# -ne 0; then          #save pwd and cd to $1
    cur="$(pwd)"
    cd "$1"
fi

function countfiles ()
{
    for file in $(ls -pl | grep '^[-d]'); do
        if [[ "$file" =~ '/'$ ]]; then
            cd "$(echo ${file%?} | awk '{for (i=9;i<NF;i++) printf $i" "; print $NF}')"
            countfiles
            cd ..
        else
            globalcount=$(( $globalcount + 1 ))
        fi
    done
}


function listdirs ()
{
    for dir in $(ls -l | grep '^d'); do
        dir=$(echo $dir | awk '{for (i=9;i<NF;i++) printf $i" "; print $NF}')
        cd "$dir"
        countfiles
        echo "$dir $globalcount" >> $p/dirs.txt
        listdirs
        cd ..
    done
}

function listfiles ()
{
    for file in $(ls -l | grep '^-'); do
        file=$(echo $file | awk '{for (i=9;i<NF;i++) printf $i" "; print $NF}')
        echo "$file $(stat -f "%z" "$file")" >> $p/files.txt
    done
    for dir in $(ls -l | grep '^d'); do
        cd "$(echo $dir | awk '{for (i=9;i<NF;i++) printf $i" "; print $NF}')"
        listfiles
        cd ..
    done
}

IFS='
'
globalcount=0

countfiles

p=$(pwd)
echo -n "" > dirs.txt
listdirs

echo -n "" > files.txt
listfiles

echo -n "" > sortdirs.txt
echo -n "" > sortfiles.txt

cat dirs.txt | awk '{printf $NF" "; for (i=1;i<NF;i++) printf $i" "; print ""}' | sort -k 1 -nr > sortdirs.txt

cat files.txt | awk '{printf $NF" "; for (i=1;i<NF;i++) printf $i" "; print ""}' | sort -k 1 -nr > sortfiles.txt

echo "Directories:"
awk '{for (i=2;i<NF;i++) printf $i" "; printf ("%d, %d file(s)",$NF,$1); print ""}' sortdirs.txt

echo ""
echo "Files:"
awk '{for (i=2;i<=NF;i++) printf $i" "; print ""}' sortfiles.txt

if test $# -ne 0; then
    cd "$cur"
fi
