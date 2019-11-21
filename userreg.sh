	cho"Welcome user Regestration"
	#!/bin/bash -x
	echo "enter firstName"

	read  firstName

	firstName="^[A-Z][a-zA-Z]{3,}$"

	if [[ $firstName =~ $firstName ]]
        then
                echo "yes"
        else
                echo "No"
 	fi


