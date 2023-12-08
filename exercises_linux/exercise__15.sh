#!/bin/bash

#-------------------------------------------------------
#GET MONTH NAME FROM USER
#-------------------------------------------------------

if [ $# -eq 0 ]; then
	echo "Please enter month name after $0: "
	echo "e.g."
	echo "$0 February"
	exit 1
fi

if [ $# -gt 1 ]; then 
	echo "Please enter only one value: "
	exit 1
fi

VAL=$1

#-------------------------------------------------------
#ARRAY FOR MONTHS NAME AND DAYS
#-------------------------------------------------------
MONTH=(January February March April May June July August September October November December)
DAYS=("31" "28/29" "31" "30" "31" "30" "31" "31" "30" "31" "30" "31")


#-------------------------------------------------------
#CHEACK ANSWER WITH LOOP
#-------------------------------------------------------
for((i=0; i <=${#MONTH[@]}; i++)); do 

	if [ "$VAL" == "${MONTH[i]}" ]; then

		echo "$VAL - ${DAYS[i]}"
	
	fi	

done

