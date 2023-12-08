#!/bin/bash

#----------------------------------------------------------------
#INPUT USER EMAIL
#----------------------------------------------------------------
echo -n "Please enter email address: "
read EMAIL

#----------------------------------------------------------------
#CUT EMAIL AND SAVE ONLY GMAIL.COM OR MAIL.RU
#----------------------------------------------------------------
MAIL=`echo $EMAIL | cut -f2 -d@`


#----------------------------------------------------------------
#COMPARE IF GIVEN EMAIL EQUAL TO GAMIL.COM OR MAIL.RU
#----------------------------------------------------------------
if [ "$MAIL" == "gmail.com" ] || [ "$MAIL" == "mail.ru" ]; then

	echo ===================
	echo "Email is Valid"
        echo ===================

else
        echo ===================
	echo "Email is Invalid"
        echo ===================
fi
