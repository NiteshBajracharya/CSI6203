#!/bin/bash
read -p "type the name of the folder you would like: " newFolder
if [ -d "$newFolder" ]; then
    echo "Folder already exists"
    
else
        mkdir $newFolder
fi

