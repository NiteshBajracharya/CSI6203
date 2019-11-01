#!/bin/bash

awk 'BEGIN {
    FS=",";

    printf("-----------------------------------------------------------------------------\n")
    printf "%-15s | %-15s | %-15s | %-10s\n",
    "Item","Quantity","Price","Total"
    printf("-----------------------------------------------------------------------------\n")
}

{
    printf "%-15s | %-15s | %-15s | %-10s\n",
    $1,$2,"$"$3,"$"($2*$3)}
 
    END {
           
        printf("-----------------------------------------------------------------------------\n")
               
}' shopping.csv

awk -F',' 'BEGIN {totalQuantity=0};
    {totalQuantity=totalQuantity+$2}
    {totalPrice=totalPrice+$3}
    {totalSum=totalSum+($2+$3)}
    END {
        printf "%-15s | %-15s | %-15s | %-10s\n",
        "TOTAL", totalQuantity, "$"(totalPrice), "$"(totalSum)
        printf("-----------------------------------------------------------------------------\n")
    }' shopping.csv

