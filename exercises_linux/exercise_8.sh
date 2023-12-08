#!/bin/bash

#--------------------------------------------------------------
#SELECT SYMBL FOR TRIANGLE
#--------------------------------------------------------------
echo -n "Please choose character for tringle... [#] [*] [@]:  " 

set -f
read CHAR

#--------------------------------------------------------------
#COUNT OF ROWS 
#--------------------------------------------------------------
echo -n "Please enter count of ROWS:  " 
read ROWS

echo ""

#--------------------------------------------------------------
#CREATING TRIANGLE WITH LOOPS
#--------------------------------------------------------------
TEXT=""

for((i=1; i<=$ROWS; i++));do 

	for((space = 1; space <= $((ROWS-$i)); space++));do
		TEXT+=" "
	done
	

	for((k=0; k!= $(($((2 * $i))-1)); k++)); do
	     TEXT+=$CHAR
	done

	 TEXT+="\n"
done


echo -e "$TEXT"








