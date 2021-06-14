#!/bin/bash

echo -n "" > q4_output.txt

while read line; do                     #remove noise words
    for word in ${line[@]}; do
        f=0
        while read stop; do             #search for word in stopwords.txt
            if test "$word" = "$stop"; then
                f=1
                break
            fi
        done < "$2"
        if test $f -eq 0; then          #if absent, print
            echo  -n "$word " >> q4_output.txt
        fi
    done
    echo "" >> q4_output.txt                   #newline
done < "$1"

no_l=0
while read line; do             #number of lines in output file
    no_l=$(( $no_l+1 ))
done < q4_output.txt

echo -n "" > q4_output2.txt

i=1
while test $i -le $no_l; do     #for each line,
    read line
    l=0
    c=0
    for word in ${line[@]}; do
        l=$(( $l+1 ))            #calc length
        if test "$3" = "$word"; then
            c=$(( $c+1 ))        #and frequency
        fi
    done
    echo "$line, `echo "scale=2; $c / $l" | bc` " >> q4_output2.txt
    i=$(( $i+1 ))
done < q4_output.txt

rm q4_output.txt
mv q4_output{2,}.txt
