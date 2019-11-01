#!/bin/bash

cat /var/log/auth.log | awk '{
    print "\n" $1 " "$2" - " $3 ": \n" $5
    print "\t"
    }

   {
        for (i=6; i<NF; i++)
        printf $i " ";
        if (NF >=6)
            print $NF;

}'