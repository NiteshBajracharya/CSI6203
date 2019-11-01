#!/bin/bash


#Requesting the filename for user input
read -p "Please type the name of the file:" filename

sed -i '/Linux/i The next line contains the word Linux!' $filename

echo "editing file..."
echo "done!"
