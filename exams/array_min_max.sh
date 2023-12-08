#!/bin/bash
#------------------------------------------------------------
#NATURAL NUMBERS TO ARRAY
#------------------------------------------------------------
echo -n "Please enter natural numbers: "
read NUMBERS

ARRAY=($NUMBERS)


#------------------------------------------------------------
#NEWARRAY NUMBERS TO CHAR NUMBERS 
#------------------------------------------------------------
NEWARR=()
for((i = 0; i < ${#ARRAY[@]}; i++)); do

CHAR=()
SUM=0
	CHAR=($(echo ${ARRAY[i]} | fold -w1}))
	for((j=0; j < ${#CHAR[@]}; j++)); do
		SUM=$(($SUM + ${CHAR[j]}))
	done

	NEWARR+=($SUM)
done



#------------------------------------------------------------
#COMPARE NUMBERS MIX AND MAX 
#------------------------------------------------------------
for((i=0; i < ${#NEWARR[@]}; i++)); do

	for((j=i; j < ${#NEWARR[@]}; j++)); do

		if [ ${NEWARR[i]} -gt ${NEWARR[j]} ]; then

			x=${NEWARR[j]}
			NEWARR[j]=${NEWARR[i]}
			NEWARR[i]=$x
			tmp=${ARRAY[j]}
			ARRAY[j]=${ARRAY[i]}
			ARRAY[i]=$tmp

		fi

	done


done


echo ==============================
echo Input Numbers - $NUMBERS
echo ==============================
echo Output Numbers - ${ARRAY[@]} 
echo ==============================








