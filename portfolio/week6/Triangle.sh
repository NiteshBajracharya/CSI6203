#!/bin/bash

areaOfTriangles()
{
    echo "The area of the triangle with the base: $1 and height: $2 is: " $(($1*$2/2))
}
for (( i = 1; i<=100; i++ )) do
    for (( j = 1; j <=100; j++ )) do
        areaOfTriangles $i $j
        done
    done    