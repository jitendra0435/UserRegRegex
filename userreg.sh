	echo"Welcome user Regestration"
	#!/bin/bash -x

	firstNamePattern="^[A-Z][a-zA-Z]{3,}$"
	lastNamePattern="^[A-Z][a-zA-Z]{3,}$"
	emailPattern="^[a-zA-Z]{1,}[0-9]*([._+-]{1,}[a-z]+){0,1}[@][a-zA-Z0-9]+[.][a-z]{2,4}([.][a-z]{2}){0,1}"
	mobilePattern="^[0-9]{2}[ ]{1}[0-9]{10}$"

	function fullNameValidation(){
		
		echo "enter firstName"
		read firstName

		echo "enter lastname"
		read lastName

		if [[ $firstName =~ $firstNamePattern ]] && [[ $lastName =~ $lastNamePattern ]]
        	then
                echo "yes"
        	else
                echo "No"
 		fi
	}


	function emailIdValidation(){
	
		echo "enter valid EmailId"
		read email

		if [[ $email =~ $emailPattern ]]
			then
				echo "yes "
		else
				echo "enter valid email"
		fi
	}


	function mobileNumberValidation(){

		echo "enetr mobile Number"
		read mobileNumber

		if [[ $mobileNumber =~ $mobilePattern ]]
			then
				echo "yes"
		else
				echo "enter valid mobile number"
		fi

	}

	
	fullNameValidation
	emailIdValidation
	mobileNumberValidation
