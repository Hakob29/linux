#!/bin/bash


#---------------------------------------------------------
#IF GIVEN VALUES MORE OR LESS 2, EXIT
#---------------------------------------------------------
if [ $# -ne 2 ]; then

	echo "Please enter after $0 Line Number and /file.txt path, Thank you!"
	echo "e.g. [$0 3 /file.txt"]
	exit 1
fi

LINE=$1
FILEPATH=$2
ARR=()
X=$LINE


#---------------------------------------------------------
#LINES TO ARRAY
#---------------------------------------------------------
IFS=$'\n' 
for line in $(cat "$FILEPATH"); do
    ARR+=($(echo "$line;"))
done

#---------------------------------------------------------
#FROM ARRAY TO TEXT, AND JOIN
#---------------------------------------------------------
TEXT=""
for((i = 0; i < ${#ARR[@]}; i++)); do 
	
	if [ $i -eq $LINE ]; then	
		TEXT+="\n"
		LINE=$(( $LINE + $X ))
	fi
	TEXT+=${ARR[i]}
	
done
#---------------------------------------------------------
#PRINT ALL LINES WITHOUT LAST [;]
#---------------------------------------------------------
echo -e "$TEXT" | rev | cut -c 2- | rev












