	cho"Welcome user Regestration"
	#!/bin/bash -x
	echo "enter firstName"
	read  firstName
	echo "enter lastName"
	read lastName

	firstNamePattern="^[A-Z][a-zA-Z]{3,}$"
	lastNamePattern="^[A-Z][a-zA-Z]{3,}$"

	if [[ $firstName =~ $firstNamePattern ]] && [[ $lastName =~ $lastNamePattern ]]
        then
                echo "yes"
        else
                echo "No"
 	fi


