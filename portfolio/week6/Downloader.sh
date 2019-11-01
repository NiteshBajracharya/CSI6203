#!/bin/bash

downloaderFunction()
{
    read -p "Enter the URL to download: " input_URL
    read -p "Enter the name of the location for downloads: " location_path
    wget -p $input_URL -P $location_path
}
downloaderFunction
echo download function complete