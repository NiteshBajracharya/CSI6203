#!/bin/bash

#Call for the user input for two integers
echo "Enter first number:"
read a 
echo "Enter second number:"
read b 

#Choice for the user 
echo "Enter a choice"
echo "1. Addition"
echo "2. Subtraction"
echo "3. multiplication"
echo "4. division"
read num
echo


if  [[ $num == 1 ]]; then
num=$(( $a + $b )) 
echo -e "\033[34m Ans: $num" 

elif  [[ $num == 2 ]]; then
num=$(( $a - $b ))
echo -e "\033[32m Ans: $num"

elif  [[ $num == 3 ]]; then
num=$(( $a * $b ))
echo -e "\033[31m Ans: $num"

elif  [[ $num == 4 ]]; then
num=$(( $a / $b ))
echo -e "\033[35m Divide: $num"
 
fi