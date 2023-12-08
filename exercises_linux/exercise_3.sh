				#!/bin/bash

#---------------------------------------------------------
#IF GIVEN VALUE EQUAL TO 1
#---------------------------------------------------------
if [ $# -lt 1 ]; then
	echo "Please enter line of  numbers..., Thank you!"
	exit 1
fi



#---------------------------------------------------------
#INPUT VALUE
#---------------------------------------------------------
NUM=$1


#---------------------------------------------------------
#COMPARE NUMBERS
#---------------------------------------------------------
ARRAY=($(echo $NUM | fold -w1))
COUNT=${#ARRAY[@]}
SUM=0
for((i=0; i<$COUNT; i++)); do
	for((j=i; j<$COUNT; j++)); do
		
		if [ ${ARRAY[i]} -gt ${ARRAY[j]} ]; then
			SUM=$(($SUM + 1))	
		fi
	done
done



#---------------------------------------------------------
#COMPARE COUNT OF SUM
#---------------------------------------------------------
if [ $SUM -ne 0 ]; then
	echo "False..."
else
	echo "True..."
fi










