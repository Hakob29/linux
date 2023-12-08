#!/bin/bash

#--------------------------------------------------
#IF GIVEN VALUE EQUAL TO ONE
#--------------------------------------------------
if [ $# -ne 1 ]; then	
echo "Please enter lines:"
echo "e.g."
echo "$0 3-7"
exit 1
fi

#--------------------------------------------------
#GET LINES NUMBERS
#--------------------------------------------------
value=$1
ARR=($(echo $value | fold -w1))
NUMBERS=()
for((i=${ARR[0]}; i <= ${ARR[2]}; i++)); do

	NUMBERS+=($i)

done

#---------------------------------------------------
#GET PASSWD FILE WITH LINE NUMBERS
#---------------------------------------------------

IFS=''
FILE=`cat /etc/passwd | grep -v '^ *#' | nl`

#---------------------------------------------------
#LOOP FILE, COMPARE ARRAY NUMBERS AND LINES NUMBERS
#---------------------------------------------------
TEXT+="\n"
IFS=$'\n' 
for line in $FILE; do 
	
	NUM=$(echo $line | cut -f1 -d: | grep -Eo '[0-9]{1,9}')
	for((i=0; i<=${#NUMBERS[@]}; i++)); do 
	
		if [[ ${NUMBERS[i]} -eq $NUM ]]; then
			TEXT+=$line
			TEXT+="\n"		
	
		fi
	done
done

#---------------------------------------------------
#PRINT RESULT
#---------------------------------------------------
echo -e "$TEXT"







