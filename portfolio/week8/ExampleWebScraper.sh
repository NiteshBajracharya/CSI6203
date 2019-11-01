#!/bin/bash


curl -s http://www.example.com | 
grep -o "<title>.*</title>" |
sed 's/<title>//' | sed 's/<\/title>//'


curl -s http://www.example.com |
sed -n '/<p>/,/<\/p>/{ /html>/d; s/<[^>]*>//g; p}' |
sed 's/<p>//' |
sed 's/<\/p>//'