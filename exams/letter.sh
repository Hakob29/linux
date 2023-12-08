#!/bin/bash

#----------------------------------------------------
#CHECK IF GIVEN NUMBER IS ODD 
#----------------------------------------------------
echo -n "Please enter odd number, for rows - "
read NUM

if [ $(($NUM % 2)) -eq 0 ]; then
echo "Please enter odd number, even can't be work:"
exit 1
fi



#----------------------------------------------------
#LOOP FOR LETTER, LIKE A QUARTER
#----------------------------------------------------
TEXT=""
for((i=1; i <= $NUM; i++)); do


	for((j=1; j<=$NUM; j++)); do


		if [ $i -eq 1 ] || [ $i -eq $NUM ] || [ $j -eq 1 ] || [ $j -eq $NUM ] || [ $j -eq $i ] || [ $(($i + $j)) -eq $(($NUM+1)) ]; then

				TEXT+="* "
		else
				TEXT+="  "
		fi
	done
TEXT+="\n"

done

echo ""
echo -e "$TEXT"
