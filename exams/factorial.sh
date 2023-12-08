#!/bin/bash

#----------------------------------------
#GET NATURAL NUMBER
#----------------------------------------
echo -n "Please enter natural number: - "
read NUM
X=$NUM

#----------------------------------------
#WHIL LOOP FOR NUMBER
#----------------------------------------
FACT=1

while [ $NUM -gt 1 ]; do
	FACT=$(($FACT * $NUM))
	NUM=$(($NUM - 1))
done

echo =============================
echo "Factorial For $X is - $FACT"
echo =============================
