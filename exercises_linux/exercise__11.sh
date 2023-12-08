#!/bin/bash


#--------------------------------------------------
#WRITE TEXT TO ARRAY
#--------------------------------------------------
echo "Please enter words, after $0 ..."
read TEXT

ARR=()
for line in $TEXT; do

	
	ARR+=($line)
	ARR+=(" ")
done

#--------------------------------------------------
#LOOP IN EACH ITEM AND PRINT OUT, WITH EMPATY SPACE
#--------------------------------------------------
TEXT=()
for((i=0; i < ${#ARR[@]}; i++));do 

	TEXT+=($(echo ${ARR[i]} | fold -w1))
	if [ "${ARR[i]}" == " " ]; then

		TEXT+=(" ")
	fi
done

echo ${TEXT[1]}
echo ${TEXT[6]}
