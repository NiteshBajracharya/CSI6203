#!/bin/bash

cd ..

grep -r sed
echo "Sed statements"

grep -r "^m"
echo "Lines that start with letter m"

grep -r -E '\<[0-9]{3}\>'
echo "Lines that contain three digit numbers"

grep -r -i '^[aeiou]'
echo "Lines that start with a Vowel"

grep -r -i -w '\<for>\'
echo "Lines that contains the for loops"

grep -r |echo | grep '*[[:blank]]*[[:blank]]*'
echo "echo statements with at least three words"
