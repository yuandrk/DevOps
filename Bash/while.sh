#!/usr/bin/env bash
IFS=:
for line in $(cat /etc/passwd)
	do echo "This is $line"
done
