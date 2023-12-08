#!/bin/bash

#-------------------------------------------------
#GET MINIMUM MAXIUMUM AND STEP 
#-------------------------------------------------
echo -n "Please enter minimum natural number: "
read MIN

echo -n "Please enter maximum natural number: "
read MAX

echo -n "Please enter step natural number: "
read STEP

#-------------------------------------------------
#LOOP FOR GET NUMBERS 
#-------------------------------------------------
NUMBERS=()
for((i=$MIN; i <=MAX; i+=$STEP)); do

	NUMBERS+="$i"
	NUMBERS+=" "

done

echo =========HERE IS ANSWER=========
echo ""
echo " ${NUMBERS[@]}"
echo ""
echo ===============================
