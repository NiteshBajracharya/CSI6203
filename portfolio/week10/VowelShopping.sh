#!/bin/bash

awk 'BEGIN {
    FS=","
}
    /^[aeiou]/{
        print "line with Vowel: " $1
}
/^[o]/{
    print "starts with O: "$1
}
/^([a-zA-Z]+) ([a-zA-Z]+)/{
    print "more than one words: " $1
}
$3 ~ /^[0-9]+$/{
    print "having whole number prices: " $1
   
}' ../week9/shopping.csv