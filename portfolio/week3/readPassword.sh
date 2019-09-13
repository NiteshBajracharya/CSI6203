#!/bin/bash
read -p "Name of the file you would like to open:" file

if [ -f "$file" ]; then
    cat "$file"

else
    echo "sorry the file "$file" is not found!"
fi 
