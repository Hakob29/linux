			#!/bin/bash

#------------------------------------------------------------
#PATH OF FILE
#------------------------------------------------------------
IFS=''
FILE=`cat /etc/passwd | grep -v '^ *#'`

#------------------------------------------------------------
#GET UUID NUMBERS OF EACH LINE AND PUSH ON ARRAY
#------------------------------------------------------------
ARRAY=()

IFS=$'\n'
for line in $FILE
do
    NUM=$((`echo $line | cut -f3 -d:`))
    ARRAY+=($NUM)
done

#------------------------------------------------------------
#SORT ALL NUMBERS 
#------------------------------------------------------------
COUNT=${#ARRAY[@]}

for((i=0; i<$COUNT; i++)); do 
	for((j=i; j<$COUNT; j++));do
	
		if [ ${ARRAY[i]} -gt ${ARRAY[j]} ]; then
			x=${ARRAY[j]}
			ARRAY[j]=${ARRAY[i]}
			ARRAY[i]=$x	
		fi
	done
done

#------------------------------------------------------------
#SORTING THE LINES IN PASSWD FILE
#------------------------------------------------------------
RESULT=()
for((i=0; i<$COUNT; i++)); do
	for line in $FILE; do
 		NUM=$((`echo $line | cut -f3 -d:`))
		        if [ ${ARRAY[i]} -eq $NUM ]; then
				RESULT+=($line "\n")
			fi
	done			 	
done
#------------------------------------------------------------
#CREATE NEW FILE WITH ALREADY SORTED PASSWD LINES
#------------------------------------------------------------

IFS=''
COMMENTS=`cat /etc/passwd | grep  '^#'`
echo $COMMENTS > sorted.txt
echo ${RESULT[@]} >> sorted.txt












