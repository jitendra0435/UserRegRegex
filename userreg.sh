	echo"Welcome user Regestration"
	#!/bin/bash -x

	echo "enter firstName"
		read  firstName
	echo "enter lastName"
		read lastName
	echo "enter email "
		read email

	firstNamePattern="^[A-Z][a-zA-Z]{3,}$"
	lastNamePattern="^[A-Z][a-zA-Z]{3,}$"
	emailPattern="^[a-zA-Z]{1,}[0-9]*([._+-]{1,}[a-z]+){0,1}[@][a-zA-Z0-9]+[.][a-z]{2,4}([.][a-z]{2}){0,1}"

	if [[ $firstName =~ $firstNamePattern ]] && [[ $lastName =~ $lastNamePattern ]]
        then
                echo "yes"
        else
                echo "No"
 	fi

	if [[ $email =~ $emailPattern ]]
		then
				echo "yes "
		else
				echo "enter valid email"
	fi

