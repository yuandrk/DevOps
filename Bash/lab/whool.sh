#!/bin/bash

# needed to set sring line 
my_var="several random words"

# it's output string 
echo $my_var 

# exemple function 
function print_argument {
	echo "Argument amount: $#";
	for (( i=1; i<=$#; i++)) ; do
	echo ${@:${i}:1};
done
}


