#!/bin/bash

#This function prints a given error

printError()
{
    echo -e "\033{31mERROR:\033[0m $1"
}

#this function will get a value between the 2nd and 3rd arguments

getNumber()
{
    read -p "$1: "
    while (( $REPLY < $2 || $REPLY > $3 )); do
    printError "Input must be between $2 and $3"
    read -p "$1 "
done
}
getNumber "Please type a number between 1 and 100" 1 100
while true;do
    read -p "Input number between 1 and 100 :" REPLY

    if (( $REPLY == 42 )); then
        echo -e  "Right !"
        exit 0
    elif (( $REPLY > 42 )); then
        echo "too high"
    else
        echo "too low"
    fi 
done                  
