#!/bin/bash

#---------------------------------------------
#CHOOSE TRIANGLE
#---------------------------------------------

echo "       *         * * * * *     *             * * * * *     * * * * *             *"
echo "      * *         * * * *      * *           * * * *         * * * *           * *"
echo "     * * *         * * *       * * *         * * *             * * *         * * *"
echo "    * * * *         * *        * * * *       * *                 * *       * * * *"
echo "1) * * * * *  2)     *      3) * * * * *  4) *          5)         *  6) * * * * *"
echo ""
echo "Which triangle you want [1] | [2] | [3] | [4] | [5] | [6]"
read NUM
echo ""
if [ $NUM -ne 1 ] && [ $NUM -ne 2 ] && [ $NUM -ne 3 ] && [ $NUM -ne 4 ] && [ $NUM -ne 5 ] && [ $NUM -ne 6 ]; then
	echo "Please 1 or 2 or 3 or 4 or 5 or 6"
	exit 1
fi 


#---------------------------------------------
#ROWS COUNT
#---------------------------------------------
echo -n "Please anter rows count: "

read ROWS
echo ""
TEXT=""



#---------------------------------------------
#WRITE CHOOSEN TRIANGLE
#---------------------------------------------

if [ $NUM -eq 1 ]; then

 for((i=1; i<=$ROWS; i++)); do 
	
	for((space=$(($ROWS-$i)); space > 0; space--)); do

		TEXT+=" "

	done

	for((ast=1; ast<=$i; ast++)); do
	
		TEXT+=" *"

	done
	
	TEXT+="\n"
 done

fi

#---------------------------------------------
# 2
#---------------------------------------------

if [ $NUM -eq 2 ]; then


	for((i=$ROWS; i >= 1; i--)); do 

		for((space=$(( $ROWS - $i )); space > 0; space--)); do

			TEXT+=" "

		done

		for((ast=$i; ast > 0; ast--)); do

			TEXT+="* "
		done
		
		TEXT+="\n"
	done


fi

#---------------------------------------------
# 3 
#---------------------------------------------


if [ $NUM -eq 3 ]; then


	for((i=1; i <=$ROWS; i++)); do

		for((ast=1; ast<=$i; ast++)); do 

			TEXT+="* "

		done
		TEXT+="\n"
	done
fi


#---------------------------------------------
# 4
#---------------------------------------------

if [ $NUM -eq 4 ]; then


	for((i=$ROWS; i > 0; i--)); do

		for((ast=1; ast < $(($i - 1)); ast++)); do

			TEXT+="* "
	
		done
		TEXT+="\n"
	done

fi

if [ $NUM -eq 5 ]; then 

	for((i=0; i < $ROWS; i++)); do

        	for((k=0; k < $i; k++)); do
                	TEXT+="  "
        	done

        	for((j=0; j < $(($ROWS - $i)); j++)); do
                	TEXT+=" *"
        done
   	TEXT+="\n"
done

fi

if [ $NUM -eq 6 ]; then

	for((i=0; i < $ROWS; i++)); do

        for((j=0; j < $(($ROWS - $i)); j++)); do
                TEXT+="  "
        done

        for((k=0; k<=$i; k++)); do
                TEXT+=" *"
        done
        TEXT+="\n"
done


fi


echo -e "$TEXT"















