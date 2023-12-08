#!/bin/bash


#------------------------------------------------------
#SELECT SYMBL FOR SQUARE
#------------------------------------------------------
set -f 
echo -n "Please select symbl for square [*] [#] [@]:  "
read SYMBL

#------------------------------------------------------
#SQUARE WIDTH NUMBER
#------------------------------------------------------
echo -n "Please select width for square:  "
read WIDTH

echo ""
TEXT=""


#------------------------------------------------------
#LOOP FOR CREATING SQUARE
#------------------------------------------------------
for((i = 1; i <= $WIDTH; i++));do

	for((j = 1; j <= $WIDTH; j++));do

		if [ $i -eq 1 ] || [ $i -eq $WIDTH ] || [ $j -eq 1 ] || [ $j -eq $WIDTH ]; then
			TEXT+="$SYMBL "
	
		else
			TEXT+="  "
		fi
	done
	TEXT+="\n"

done


echo -e "$TEXT"
