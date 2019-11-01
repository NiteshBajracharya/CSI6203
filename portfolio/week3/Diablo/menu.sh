#!/bin/bash

echo "1. create a folder"
echo "2. List files in a folder"
echo "3. copy a folder"
echo "4. save a password"
echo "5. Read a password"
echo "6. Print newest file"

read num
echo

if [[ $num == 1 ]]; then
    bash ~/CSI6203/portfolio/week2/createFolder.sh
elif [[ $num == 2 ]]; then
    bash ~/CSI6203/portfolio/week3/week2/listFiles.sh
elif [[ $num == 3 ]]; then
    bash ~/CSI6203/portfolio/week3/foldercopier.sh
elif [[ $num == 4 ]]; then
    bash ~/CSI6203/portfolio/week2/savePass.sh
elif [[ $num == 5 ]]; then
    bash ~/CSI6203/portfolio/week3/readPassword.sh
elif [[ $num == 6 ]]; then
    bash ~/CSI6203/portfolio/week3/parameterReader.sh
fi
exit 0
