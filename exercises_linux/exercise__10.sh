#!/bin/bash


#-----------------------------------------------------------------------------
#IF GIVEN VALUE NOT EQUAL TO GID OR UID, EXIT
#-----------------------------------------------------------------------------
val=$1

if [ "$val" != "uid" ] && [ "$val" != "gid" ]; then

	echo  "Please choose how to sort /etc/passwd file with [uid] or [gid]:"
	echo  "e.g. "
	echo  "$0 uid"
	exit 1
fi



#-----------------------------------------------------------------------------
#SORTID WITH UID OR GID 
#-----------------------------------------------------------------------------
case $val in 
	"uid")
		IFS=''	
		FILE=`cat /etc/passwd | grep -v '^ *#'`
		ARRAY=()
			IFS=$'\n'
			for line in $FILE; do
    			NUM=$((`echo $line | cut -f3 -d:`))
   			 	if [ $NUM -ge 5 ] && [ $NUM -lt 1000 ]; then

					ARRAY+=($NUM)
				fi
			done
	
		RESULT=()
				for((i=0; i<${#ARRAY[@]}; i++)); do
					for line in $FILE; do
 					NUM=$((`echo $line | cut -f3 -d:`))
				       			 if [ ${ARRAY[i]} -eq $NUM ]; then
								RESULT+=($line "\n")
				         	         fi
					done			 	
			done
		echo -e ${RESULT[@]} > $HOME/user.log
		sort -n -t':' -k3 $HOME/user.log > $HOME/sorted.log
	;;
	"gid")
	 IFS=''
                FILE=`cat /etc/passwd | grep -v '^ *#'`
                ARRAY=()
                        IFS=$'\n'
                        for line in $FILE; do
                        NUM=$((`echo $line | cut -f4 -d:`))
                                if [ $NUM -ge 5 ] && [ $NUM -lt 1000 ]; then

                                        ARRAY+=($NUM)
                                fi
                        done

                RESULT=()
                                for((i=0; i<${#ARRAY[@]}; i++)); do
                                        for line in $FILE; do
                                        NUM=$((`echo $line | cut -f4 -d:`))
                                                         if [ ${ARRAY[i]} -eq $NUM ]; then
                                                                RESULT+=($line "\n")
                                                         fi
                                        done
                        done
                echo -e ${RESULT[@]} > $HOME/user.log
                sort -n -t':' -k4 $HOME/user.log > $HOME/sorted.log
	;;
esac









