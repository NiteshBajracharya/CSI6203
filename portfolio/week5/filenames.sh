#!/bin/bash


IFS=$'\n'

for line in $(cat filenames.txt); do
if [ -f "$line" ] ; then
    echo "$line - the file exists"
elif [ -d "$line" ] ; then 
    echo "$line - this is a directory"
else
    echo "$line - I don't know what that is!"
fi 
done
exit 0