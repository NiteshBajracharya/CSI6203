#!/bin/bash
ping -c 1 8.8.8.8 && echo "internet seems to be connected."
if [ "$?" -ne "0" ]
then
    echo "Host unreachable."
    exit 1
fi

read -p "Please type a website URL to download or type 'exit' to quit: " websiteURL

while [ "$websiteURL" != "exit" ]; do
    wget  $websiteURL
    read -p "Please type a website URL to download or type 'exit' to quit:" websiteURL
done 
echo "Thank you!"
exit 0
