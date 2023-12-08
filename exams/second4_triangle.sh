#!/bin/bash

#-------------------------------------------------
#GET NUMBER FOR ROWS
#-------------------------------------------------
echo -n "Please enter number of Rows: - "
read N

echo ""

#-------------------------------------------------
#LOOP FOR DRAWING TRIANGLE
#-------------------------------------------------
TEXT=""
for((i=0; i < $N; i++)); do 

	for((j=0; j <= $i; j++)); do
		TEXT+=" *"
	done
	
	for((a = 0; a <= $(($((2 * $(($N - $i)))) - 2)); a++)); do
		TEXT+="  "
	done

	for((f=0; f <= $i; f++)); do
		TEXT+=" *"
	done

	for((b=0; b <= 1; b++)); do
		TEXT+=" "
	done

	for((b = 0; b < $(($N - $i)); b++)); do
                TEXT+=" *"
        done

	for((c = 0; c < $(($((2 * $i))+1)); c++)); do
                TEXT+="  "
        done
	
	for((d = 0; d < $(($N - $i)); d++)); do
                TEXT+=" *"
        done

	TEXT+="\n"
done



echo -e "$TEXT"







