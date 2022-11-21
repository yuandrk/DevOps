#!/bin/bash

echo -n "Do you like the Bash course? [yes/no]:"
read answer

case $answer in

	[Yy] | [Yy][Ee][Ss] )
		echo "That's right"
		;;
	[Nn] | [Nn][Oo] )
		echo ":( it's so sad"
		exit 
		;;
	*) echo "enter Y[es] or N[o]"
		;;

esac
