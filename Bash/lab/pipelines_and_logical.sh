#!/bin/bash
if [ -z $2 ] || [ ! -z $3 ]; then 
	echo "You need to set exactly 2 parameters"
	exit 1
fi 

isnumber='^[-]?[0-9]+$'

if [[ $1 =~ $isnumber ]] && [[ $2 =~ $isnumber ]]; then 
	echo "The sum of number are $(( $1 + $2 ))"
else 
	echo "Please enter numbers only!"
fi
