#!/bin/bash

#-----------------------------------------------------------------
#IF ARGUMENT EQUAL 1, THEN EXIT 
#-----------------------------------------------------------------

if [ $# -ne 1 ]; then 

	echo "Please after $0 enter [KB] [MB] [GB]... Thank You!"
	exit 1
fi

VALUE=$1


#-----------------------------------------------------------------
#GET ASCII FILE AND COPY IT IN EXAMPLE FILE
#-----------------------------------------------------------------
FILE=/usr/share/misc/ascii
echo `cat  $FILE` > example.txt


#-----------------------------------------------------------------
#CHECK TIME, FIRSTNAME, START_SIZE, START_ZIP_TIME, GZIP_FILE, END_ZIP_TIME
#-----------------------------------------------------------------
TIME=`date +"%d/%m/%Y/%T +0000"`
FIRSTNAME="example.txt"
STARTSIZE=`ls -l example.txt | cut -f8 -d" "`
STARTZIP=`date +%s`
sleep 4
gzip example.txt
ENDZIP=`date +%s`  


#-----------------------------------------------------------------
#CONVERT SECONDS TO REAL TIME
#-----------------------------------------------------------------
convertsecs() {
 ((h=${1}/3600))
 ((m=(${1}%3600)/60))
 ((s=${1}%60))
 printf "%02d:%02d\n" $m $s
}


#-----------------------------------------------------------------
#CHECK TIME_ZIP, END_SIZE, END_TIME, LASTNAME
#-----------------------------------------------------------------
SUMZIP=$(($ENDZIP-$STARTZIP))
ENDSIZE=`ls -l example.txt.gz | cut -f8 -d" "`
ENDTIMEZIP=`convertsecs $SUMZIP`
LASTNAME="example.txt.gz"



#-----------------------------------------------------------------
#IF GIVEN VALUE KB, MB, GB
#-----------------------------------------------------------------
if [ $VALUE == "KB" ]; then

        STARTSIZE=$(echo "scale=4; $STARTSIZE * 0.001" | bc)kb
	ENDSIZE=$(echo "scale=4; $ENDSIZE * 0.001" | bc)kb
fi

if [ $VALUE == "MB" ]; then

        STARTSIZE=$(echo "scale=4; $STARTSIZE * 0.000001" | bc)mb
        ENDSIZE=$(echo "scale=4; $ENDSIZE * 0.000001" | bc)mb
fi

if [ $VALUE == "GB" ]; then

        STARTSIZE=$(echo "scale=4; $STARTSIZE * 0.000000001" | bc)gb
        ENDSIZE=$(echo "scale=4; $ENDSIZE * 0.000000001" | bc)gb
fi



#-----------------------------------------------------------------
#PRINT INFRMATION FOR GZIP FILE
#-----------------------------------------------------------------
echo "$TIME $FIRSTNAME start_compress gzib $STARTSIZE 00:00"  
echo "$TIME $LASTNAME done_compress gzib $ENDSIZE $ENDTIMEZIP"

echo "$TIME $FIRSTNAME start_compress gzib $STARTSIZE 00:00" >> text.txt
echo "$TIME $LASTNAME done_compress gzib $ENDSIZE $ENDTIMEZIP" >> text.txt

STARTUNZIP=`date +%s`
sleep 3
gunzip example.txt.gz
ENDUNZIP=`date +%s`
SUMUNZIP=$(($ENDUNZIP-$STARTUNZIP))
ENDTIMEUNZIP=`convertsecs $SUMUNZIP`

#-----------------------------------------------------------------
#PRINT INFRMATION FOR GUNZIP FILE
#-----------------------------------------------------------------
echo "$TIME $LASTNAME start_decompres gzib $ENDSIZE 00:00"
echo "$TIME $FIRSTNAME done_decompres gzib $STARTSIZE $ENDTIMEUNZIP"
echo "$TIME $LASTNAME start_decompres gzib $ENDSIZE 00:00" >> text.txt
echo "$TIME $FIRSTNAME done_decompres gzib $STARTSIZE $ENDTIMEUNZIP" >> text.txt


cat text.txt >> example.txt
rm text.txt















