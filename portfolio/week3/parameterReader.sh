#!/bin/bash
#if the parameter is more than three then print error message
read -p "total parameters: $#"

if [ $# -eq 3 ] 
then
    echo
    if [ -a "$1" ] && [ -a "$2" ] && [ -a "$3" ]; then 
    #checking the first parameter
        if [ "$1" -nt "$2" ] && [ "$1" -nt "$3" ]; then
        echo "$1 is the new file"
        #checking for the second parameter
        elif [ "$2" -nt "$1" ] && [ "$2" -nt "$3" ]; then
        echo "$2 is the new file"
        #otherwise the third parameter is the new file
        else 
        echo "$3 is the new file"
        exit 0
        fi
    #if the parameters are not files 
    else
        echo "these are not files"
        exit 0
    fi 
#if the number of parameters are less than or more than 3
else
    echo "Invalid no. of parameters!!!"
    exit 1
fi
