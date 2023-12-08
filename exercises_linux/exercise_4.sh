#!/bin/bash

#---------------------------------------------------------
#IF GIVEN VALUES MORE OR LESS 2, EXIT
#---------------------------------------------------------
if [ $# -ne 2 ]; then

        echo "Please after $0 enter Length of characters [#], and length of delimiter [_#_]"
        exit 1
fi

LENGTH=$1
SYMB=$2
DELIMITER="_#_"
TEXT=""
X=$SYMB

#---------------------------------------------------------
#LOOP ADD [#] & [_#_] TO TEXT
#---------------------------------------------------------
for((i=1; i <= $LENGTH; i++));do

	TEXT+=#

if [ $i -eq $SYMB ]; then

	TEXT+=$DELIMITER
	SYMB=$(( $SYMB + $X ))	
fi

done

echo ===========================
echo $TEXT
echo ===========================
