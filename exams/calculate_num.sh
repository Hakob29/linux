#!/bin/bash


#--------------------------------------------------
#GET NUMBERS AND PUSH ON ARRAY
#--------------------------------------------------
echo -n "Please enter numbers: "
read NUM

ARRAY+=($NUM)
SUM=0
ADD=1


#--------------------------------------------------
#LOOP IN ARRAY AND PRINT RESULT
#--------------------------------------------------
for((i=0; i < ${#ARRAY[@]}; i++)); do 
	SUM=$(($SUM + ${ARRAY[i]}))
	ADD=$(($ADD * ${ARRAY[i]}))
done
echo =============================================
echo "Array of given numbers - [ ${ARRAY[@]} ]"
echo =============================================
echo "Sum of this numbers - $SUM"
echo =================================
echo "Product of this numbers - $ADD"
echo =================================

