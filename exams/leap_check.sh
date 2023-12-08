#!/bin/bash
	
echo -n "Please enter year: "
read YEAR

if [ $(($YEAR % 400)) == 0 ] && [ $(($YEAR % 100)) == 0 ] && [ $(($YEAR % 4)) == 0 ]; then

		echo ========================
		echo "  $YEAR is a leap year"
		echo ========================

elif [ $(($YEAR % 400)) != 0 ] && [ $(($YEAR % 100)) != 0 ] && [ $(($YEAR % 4)) == 0 ]; then

		echo ========================
                echo "  $YEAR is a leap year"
                echo ========================

elif [ $(($YEAR % 400)) != 0 ] && [ $(($YEAR % 100)) == 0 ] && [ $(($YEAR % 4)) == 0 ]; then

		echo ========================
                echo "  $YEAR is not a leap year"
                echo ======================== 

elif [ $(($YEAR % 4)) != 0 ]; then

		echo ========================
                echo "  $YEAR is not a leap year"
                echo ========================

fi
