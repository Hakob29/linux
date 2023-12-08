#!/bin/bash

#---------------------------------------------------
#ENTER MIN AND MAX NUMBERS
#---------------------------------------------------
echo "Please Enter the Minimum & Maximum Values: "
echo -n "Minimum - "
read MIN

echo -n "Maximum - "
read MAX

#---------------------------------------------------
#FOR LOOP ON GIVEN NUMBERS, WITH % GET PERFECT
#---------------------------------------------------
for((num=$MIN; num<=$MAX; num++)); do
   sum=0	
	for((i=1; i < $num; i++)); do

	if [ $(($num % $i)) -eq 0 ]; then

		sum=$(($sum+$i))

	fi

	done

	if [ $sum -eq $num ]; then
		echo "$num is a Perfect Number !"
	fi
done
