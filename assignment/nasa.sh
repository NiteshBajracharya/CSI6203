#!/bin/bash

echo "Connecting to nasa.gov ...\n"

#Save the content to the directory.
PICDIRECTORY=~/Pictures
DESCRIPTION_DIR=~/Assignment
function get_page {
    #Download page to find image
    wget http://apod.nasa.gov/apod/ --quiet -O /tmp/apod.html
    grep -m 1 jpg /tmp/apod.html | sed -e 's/<//' -e 's/>//' -e 's/.*=//' -e 's/"//g' -e 's/^/http:\/\/apod.nasa.gov\/apod\//' > /tmp/pic_url
} 
# Set date
DAY=$(date +'%Y%m%d')
# If the picture is not downloaded for the current date
if [ ! -e ~/Pictures/${DAY}_apod.jpg ]; then
    echo "We don't have the picture saved, save it"
    get_page
    # Got the link to the image
    PICURL=`/bin/cat /tmp/pic_url`
    echo  "Picture URL is: ${PICURL}"
    echo  "Downloading image"
    wget --quiet $PICURL -O $PICDIRECTORY/${DAY}_apod.jpg
# Else if we have it already, check if it's the most updated copy
else
    get_page
    # Got the link to the image
    PICURL=`/bin/cat /tmp/pic_url`
    echo  "URL of the Picture: ${PICURL}"
    # Get the size of the file
    SITE_FILESIZE=$(wget --spider $PICURL 2>&1 | grep Length | awk '{print $2}')
    FILEFILESIZE=$(stat -c %s $PICDIRECTORY/${DAY}_apod.jpg)
    # If the picture has been updated
    if [ $SITE_FILESIZE != $FILEFILESIZE ]; then
        echo "The picture has been updated, getting updated copy"
        rm $PICDIRECTORY/${DAY}_apod.jpg
        # Got the link to the image
        PICURL=`/bin/cat /tmp/pic_url`
        echo  "Downloading image"
        wget --quiet $PICURL -O $PICDIRECTORY/${Day}_apod.jpg
# If the picture is the same
    else
        echo "The downloaded picture is the same."
    fi
fi

# for the content of the image
 descript=$(curl -s https://apod.nasa.gov/apod/ | 
 sed -n '/Explanation:/,/<center>/{ /html>/d; s/<[^>]*>/ /g; p}' |
 sed -e 's/<[^>]*.//g' | sed -e 's/^.*>//g' )
 printf "\n$descript\n"

# For the credit of the image
 credits=$(curl -s https://apod.nasa.gov/apod/ |
 sed -n '/redit/,/Explanation/{ /html>/d; s/<[^>]*>/ /g; p}' |
 sed -e 's/<[^>]*.//g; s/^.*>//g' |
 sed -e 's/<a.*">//g' |
 sed -e 's/<.*>//g' | 
 sed -e 's/Explanation//g' | 
 sed -e 's/ Image Credit &//gi'| 
 sed -e 's/Copyright//gi;s/Image Credit://gi')
 printf "Image Credit: $credits"
 printf "\nDownload Finished\n"