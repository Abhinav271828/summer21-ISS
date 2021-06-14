#!/bin/bash

#((((
while getopts ":f:l:n:o:" o; do
    case $o in
        f) echo "fname $OPTARG" ;;
        l) echo "lname $OPTARG" ;;
        n) echo "num $OPTARG" ;;
        o) echo "comp $OPTARG" ;;
    esac
done
