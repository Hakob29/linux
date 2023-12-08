#!/bin/bash

#--------------------------------------------------
#GET NUMBER FOR ROWS
#--------------------------------------------------
echo -n "Please enter number of Rows: - "
read N

echo ""


#--------------------------------------------------
#LOOP FOR FOUR TRIANGLE IN ONW LINE
#--------------------------------------------------
TEXT=""
for((i = 0; i < $N; i++)); do

	for((j = 0; j <= $i; j++)); do
		TEXT+=" *"
	done

    	for((a = 0; a < $(($N-$i)); a++)); do
		TEXT+="  "
	done

    	for((b = 0; b < $(($N - $i)); b++)); do
		TEXT+=" *"
	done

    	for((c = 0; c < $(($((2 * $i)) + 1)); c++)); do
		TEXT+="  "
	done

    	for((d = 0; d < $(($N - $i)); d++)); do
		TEXT+=" *"
	done

  	for((e = 0; e < $(($N - $i)); e++)); do
		TEXT+="  "
	done

	for((f = 0; f <= $i; f++)); do
		TEXT+=" *"
	done

	TEXT+="\n"
done

echo -e "$TEXT"








