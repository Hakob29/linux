#!/bin/bash


#----------------------------------------
#GET ODD NATURAL NUMBERS FROM 1 TO 99
#----------------------------------------
num=1
TEXT=""
while [ $num -le 100 ]; do 

	if [ $(($num % 2)) -ne 0 ]; then

	TEXT+=$num
	TEXT+=" "
	fi
        num=$(($num + 1))
done

echo =========================================
echo HERE IS ODD NATURAL NUMBERS FROM 1 TO 99
echo =========================================
echo $TEXT
