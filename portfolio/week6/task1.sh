#!/bin/bash

#The error message is shown in red by this function

VAR1=$1

printError(){
    echo -e "\033[31mERROR: \033[31m$VAR1"
}

printError