	echo"Welcome user Regestration"
	#!/bin/bash -x

	firstNamePattern="^[A-Z][a-zA-Z]{3,}$"
	lastNamePattern="^[A-Z][a-zA-Z]{3,}$"
	emailPattern="^[a-zA-Z]{1,}[0-9]*([._+-]{1,}[a-z]+){0,1}[@][a-zA-Z0-9]+[.][a-z]{2,4}([.][a-z]{2}){0,1}"
	mobilePattern="^[0-9]{2}[ ]{1}[0-9]{10}$"
	passwordRule1="^[a-zA-Z]{8,10}$"
	passwordRule2="[a-zA-Z]*[A-Z]+[a-zA-Z]*{8,}$"
	passwordRule3="[a-zA-Z0-9]*[A-Z]+[a-zA-Z0-9]*{8,}$"

	function fullNameValidation(){	
		echo "enter firstName"
		read firstName

		echo "enter lastname"
		read lastName

		if [[ $firstName =~ $firstNamePattern ]] && [[ $lastName =~ $lastNamePattern ]]
        	then
                echo "yes"
        	else
                echo "Inavlid"
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
	
	function passwordValidation(){
		echo "enter password"
		read password

		if [[ $password =~ $passwordRule3 ]]
			then
				echo "yes"
		else
				echo "invalidEmail"
		fi
	}

	
	
	fullNameValidation
	emailIdValidation
	mobileNumberValidation
	passwordValidation
