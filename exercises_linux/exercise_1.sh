										#!/bin/bash
#---------------------------------------------------------
#IF GIVEN VALUE GREATHER THEN 1, EXIT
#---------------------------------------------------------
if [ $# -ne 1 ]; then
	echo "Please enter after $0 one value, Thank you!"
	exit 1
fi

#---------------------------------------------------------
#INPUT VALUE
#---------------------------------------------------------
VALUE=$1

#---------------------------------------------------------
#VALUE TO CHARACTERS AND TO ARRAY
#---------------------------------------------------------
ARRAY=($(echo $VALUE | fold -w1))

#---------------------------------------------------------
#MID COUNT OF CHARACTERS AND LAST CHARACTER
#---------------------------------------------------------
MID=$((`echo ${#ARRAY[@]} / 2`))
LAST=$((${#ARRAY[@]} - 1))

#---------------------------------------------------------
#COMPARE CHARACTERS WITH UPPER AND LOWE CASE
#---------------------------------------------------------
COUNT=0
for (( i=0, l=($LAST); i<$MID; i++, l-- )); do

	if [[ ${ARRAY[i]} =~ [a-z] ]]; then
  		   letter=$(echo ${ARRAY[i]} | tr [:lower:] [:upper:])
	elif [[ ${ARRAY[i]} =~ [A-Z] ]]; then
		   letter=$(echo ${ARRAY[i]} | tr [:upper:] [:lower:])
	fi

	
	if [ ${ARRAY[i]} == ${ARRAY[l]} ] || [ $letter == ${ARRAY[l]} ]; then
		COUNT=$((COUNT + 1))
	fi
done

#---------------------------------------------------------
#COMPARE MATCHING CHARACTERS AND MID
#---------------------------------------------------------
if [ $COUNT -eq $MID ]; then

	echo ==========================
	echo "Yessss, It is palindrome!"
	echo ==========================
else
	echo =============================
	echo "Nooooo, It isn't palindrome!"
	echo ============================
fi









