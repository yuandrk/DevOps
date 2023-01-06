#!/bin/bash

# check the initial number of files on this directory
# exclude the script files
max=$(ls | cut  -d"_" -f3 | cut -d"." -f1 | sort -nr | wc -l)

ies=24

m=$(($max + $ies))
# Usage: sum int1 int2 ...

echo $m

while [[ $i -ne $m ]]
do
	        i=$(($i+1))
		 echo > yurii_andriuk_$i;
done

