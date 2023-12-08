#!/bin/bash

#------------------------------------------
#GET NUMBER FOR FIB
#------------------------------------------
echo -n "Please enter natural number: - "
read NUM




#------------------------------------------
#FIBANACCI SERIES
#------------------------------------------
A=0
B=1
TEXT=""
for (( i=0; i <= $NUM; i++ )); do
    TEXT+="$A "
    F=$(($A + $B))
    A=$B
    B=$F
done

echo ============================
echo "   Fib For Number $NUM"
echo ============================

echo "$TEXT"
