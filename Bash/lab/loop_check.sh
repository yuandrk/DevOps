#!/bin/bash
WAIT_TIME=${1:-5}

echo -n "What do you want to check: "
read answer
#
# Command what you needed to run 
#

# loops for check availability
# not working 
for i in {5..1}; do 
	sleep $WAIT_TIME
	curl $answer
	if [ $? -eq 0 ]; then 
	echo "host is availiable"
	exit 1
	fi 
	echo "$((i -1 )) attempts left,.."
done

echo "I'm tired to chech that bullshit"
exit 1 


