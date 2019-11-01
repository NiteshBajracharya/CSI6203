#!/bin/bash

bash ../week6/Triangle.sh | 
awk '{ sub(/The area of the triangle with the base/, "Base: ")}1'| 
awk '{ sub(/and height/, "Height: ")}1'|
awk '{ sub(/is: /, "Area: ")}1'

bash ../week6/Triangle.sh | 
awk -F ':' '{sum+=$2} END { print "Total Area is:" sum }'