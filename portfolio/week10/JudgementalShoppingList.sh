#!/bin/bash

awk 'BEGIN {
    FS=",";

    printf("-----------------------------------------------------------------------------\n")
    printf "%-15s | %-15s | %-15s | %-10s\n",
    "Item","Quantity","Price","Total", "comment"
    printf("-----------------------------------------------------------------------------\n")
}

{
    printf "%-15s | %-15s | %-15s | %-10s\n",
    $1,$2,"$"$3,"$"($2*$3)
    {
        if( $2*$3 > 5)
            {print "Thats a bit expensive ! Are you sure? "}
        else if( $2*$3 >5 )
            {print "Do you really need that many? "}
        else if($3 < 3)
            {print "such a cheapstake !!"}
    }
    
}
 
    END {
           
        printf("-----------------------------------------------------------------------------\n")
               
}' ../week9/shopping.csv

awk -F',' 'BEGIN {totalQuantity=0};
    {totalQuantity=totalQuantity+$2}
    {totalPrice=totalPrice+$3}
    {totalSum=totalSum+($2+$3)}
    END {
        printf "%-15s | %-15s | %-15s | %-10s\n",
        "TOTAL", totalQuantity, "$"(totalPrice), "$"(totalSum)
        printf("-----------------------------------------------------------------------------\n")
    }' ../week9/shopping.csv

