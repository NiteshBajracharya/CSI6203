#!/bin/bash
#Make a folder
read -p "Make Folder:" createFolder
mkdir "$createFolder"
#Assign Password
read -s -p "Enter Password" Password
#save password to a text file
echo -e $Password > password.txt
#move the password file to the created folder
mv password.txt $createFolder
exit 0
