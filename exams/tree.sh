#!/bin/bash

#---------------------------------------------------
#GET COUNT OF ROWS 
#---------------------------------------------------
echo -n "Please enter count of rows: - "
read ROWS

if [ $ROWS -gt 10 ]; then
	
echo "Max count of rows 10: Please try again !"
exit 1
fi 


#---------------------------------------------------
#LOOP FOR TREE 
#---------------------------------------------------
str=1
sp=$((4 * 5))
TEXT=""
for((m=1; m<=4; m++)); do 

	for((i=$str; i<=$ROWS; i++)); do
		
		for((j=$sp; j > $i; j--)); do

			TEXT+=" "	

		done		
		
		for((k=1; k<=$i; k++)); do
	
			TEXT+="* "
		done
            TEXT+="\n"
	done
	str=$(($str+3))
	ROWS=$(($ROWS+3))
done
for((i=1; i<=3; i++)); do

	TEXT+="                  ****"
	TEXT+="\n"
done

echo ""
echo ========================================
echo " ========= Merry Christmas ============"
echo ""
echo -e "$TEXT"












