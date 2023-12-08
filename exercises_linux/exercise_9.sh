#!/bin/bash


#------------------------------------------------------
#SELECT SYMBL FOR SQUARE
#------------------------------------------------------
set -f
echo -n "Please choose symbl for square [*] [#] [@]:  "
read SYMBL

#------------------------------------------------------
#SELECT ROWS FOR SQUARE
#------------------------------------------------------
echo -n "Please choose count of rows:  "
read ROWS

echo ""


#------------------------------------------------------
#CREATING SQUARE WITH LOOP
#------------------------------------------------------
TEXT=""
for((r=1; r <= $ROWS; r++))do 
	
	for((as=1; as <= $ROWS; as++));do

		TEXT+="$SYMBL "
	
	done
	TEXT+="\n"
done

echo -e "$TEXT"
