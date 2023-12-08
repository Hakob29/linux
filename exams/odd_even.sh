#!/bin/bash

#---------------------------------------------------
#GET NUMBERS AND PUSH ARRAY AS A CHARS 
#---------------------------------------------------
echo -n "Please enter not a negative integer: "
read NUMBERS

ARRAY=($(echo $NUMBERS | fold -w1))




#---------------------------------------------------
#LOOP FOR ARRAY, AND GET ODD AND EVEN NUMBERS
#---------------------------------------------------
EVEN=""
ODD=""
for((i = 0; i < ${#ARRAY[@]}; i++)); do 

	if [ $((${ARRAY[i]} % 2)) -eq "0" ]; then

		EVEN+=${ARRAY[i]}
	else
		ODD+=${ARRAY[i]}
	fi	

done

#---------------------------------------------------
#PRINT RESULT
#---------------------------------------------------
echo =============================
echo "Numbers is - $NUMBERS"
echo =============================
echo "Even numbers is - $EVEN"
echo =============================
echo "Odd numbers is - $ODD"
echo =============================
