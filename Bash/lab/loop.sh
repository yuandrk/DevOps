#!/bin/bash 

for i in {1..1000}; do 
	if [ $i -eq 10 ]; then 
		echo "skipping the 10"
		continue
	fi

	if [ $i -eq 20 ]; then 
		echo "exiting loop at 20"
		break
	fi
	echo "[[[ number $i ]]]"
done 
echo "Good bye my lover" 
