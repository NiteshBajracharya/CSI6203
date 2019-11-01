#!/bin/bash

awk 'BEGIN {
    FS=",";

    printf "%-16s | %-16s | %-10s\n", 
    "Item", "Quantity", "Price"
    printf("-------------------------------------------------\n")
}
{
    printf "%-16s | %-16s | %-10s\n", $1,$2,"$"$3
} END {

    printf("-------------------------------------------------\n")

}' shopping.csv