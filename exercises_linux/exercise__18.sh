#!/bin/bash

#-----------------------------------------------------------------------------
#IF GIVEN VALUE NOT EQUAL ONE, EXIT
#-----------------------------------------------------------------------------

if [ $# -ne 1 ];then 
	echo "Please give only one text file."
	echo "e.g."
	echo "$0 text.txt"
	exit 1
fi 



#-----------------------------------------------------------------------------
#GREP TEXT FILE WITHOUT LINES, WHICH CONTAIN "THAT" WORD:
#-----------------------------------------------------------------------------
TEXTFILE=$1

if [ -e $TEXTFILE ]; then 
	grep -vE '^That|that' $TEXTFILE > newtext.txt
	echo "The following lines have been removed from the original input."
	echo "They have been removed because they contain the word 'that'."
	echo ================================================
	IFS=$' '
	echo `grep -E "that|That" $TEXTFILE`
	echo ================================================
else
	echo "File Not Exist!"
	exit 2
fi

