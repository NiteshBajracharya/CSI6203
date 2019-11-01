#!/bin/bash

downloaderFunction()
{
    read -p "Enter the URL to download: " input_URL
    read -p "Enter the name of the location for downloads: " location_path
    wget -p $input_URL -P $location_path
}
downloaderFunction

# echo download function complete

WebsiteTitle=$(sed -n '/<title>/,/<\/title>/p' $location_path/$input_URL/index.html | sed -n 's:.*<title>\(.*\)</title>.*:\1:p')

echo "Downloaded a page with the title:" $WebsiteTitle