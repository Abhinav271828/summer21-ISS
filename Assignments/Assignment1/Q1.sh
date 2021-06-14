#!/bin/bash  

echo -n "" > q1_output.txt
  
while read line; do
        echo -n "${line:0:4}" >> q1_output.txt          #print first 4 chars
        for (( i=0; i<(( ${#line}-4 )); i++ )); do
                echo -n "#" >> q1_output.txt             #print '#' for remaining
        done
        echo "" >> q1_output.txt                        #newline
done < $1
