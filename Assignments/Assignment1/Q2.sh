#!/bin/bash

echo -n "" > q2_output.txt
read line < "$1"

for word in $line; do
        if [[ "$word" =~ ^[0-3] ]]; then    #starts with 0/1/2/3 => date
                d=${word:0:2}
                m=${word:3:2}
                y=${word:6:4}
                if [[ ($(date +%m) -lt $m) || (($(date +%m) -eq $m) && ($(date +%d) -lt $d))]]
                then
                        echo $(( $(date +%Y) - $y - 1 )) >> q2_output.txt #birthday not over
                else
                        echo $(( $(date +%Y) - $y )) >> q2_output.txt     #birthday over
                fi
        else
        echo -n "$word " >> q2_output.txt                    #not a date; name
        fi
done
