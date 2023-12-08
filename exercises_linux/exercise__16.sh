#!/bin/bash

mkdir $HOME/logs

touch $HOME/logs/errors
touch $HOME/logs/errors_count

echo -n "Please enter directory absolute path name you want to create: "
read DIR_NAME

if [ ! -e "$DIR_NAME" ]; then

	echo "Please enter the valid absolute path:"
	exit 1
else
	echo "Great, it seems you understand absolute path: "
fi

echo "Now let's check if path already exists…"

if [ -d "$DIR_NAME" ]; then

	echo "Specified path exists !!!"


	echo -n "Would you like to create new files in specified directory ?: "
	read  ANSWER

	if [ "$ANSWER" == "YES" ] || [ "$ANSWER" == "Yes" ] || [ "$ANSWER" == "yes" ]; then 

		echo "Let's create files ..."

	echo Please provide relative file names separated with spaces: 
	read FILE_NAMES

	ARRAY=($FILE_NAMES)

	for((i=0; i<${#ARRAY[@]}; i++)); do
	
		echo "Creating a new file: $DIR_NAME/${ARRAY[i]}"
		touch $DIR_NAME/${ARRAY[i]} 2>  $HOME/logs/errors 
		
	done

	elif [ "$ANSWER" == "No" ] || [ "$ANSWER" == "NO" ] || [ "$ANSWER" == "no" ]; then

		echo "Ok, I will not create any file" 
	
	else
		echo "It seems you did not choose a valid option..." 
		exit 2
	fi

else

	echo "I could not find the specified directory:"
	echo "Would you like to create a new directory ?: "
	read  ANSWER2
	
	 if [ "$ANSWER2" == "YES" ] || [ "$ANSWER2" == "Yes" ] || [ "$ANSWER2" == "yes" ]; then
	
		echo "let’s create dir [$DIR_NAME]"
		mkdir $DIR_NAME 2> $HOME/logs/errors   
	
	 elif [ "$ANSWER2" == "NO" ] || [ "$ANSWER2" == "No" ] || [ "$ANSWER2" == "no" ]; then
	
		echo "Ok, I Will not create any directory" 

	 else

		echo "It seems you don't choose a valid option" 
		exit 3
	 fi

fi


IFS=$'\n' 
for line in $HOME/logs/errors; do 
	
	NUM=$(echo $line | cut -f1 -d: | grep -Eo '[0-9]{1,9}')
	echo -e "$NUM \n" > $HOME/logs/errors_count
done





















