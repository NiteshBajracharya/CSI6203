#!/bin/bash
read -p "Make Folder:" createFolder
mkdir "$createFolder"
read -s -p "Enter Password" Password
echo $Password > password.txt