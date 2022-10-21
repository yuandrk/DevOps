#!/usr/bin/env bash 

# Перевірка права рута! 
# Checking root permissions 

if [ "$(id -u )" != 0 ]
then 
	echo root permissions required >&2
	echo "Потрібні права рута!"
	exit 1
fi

echo Welcome!
read -p "Type username:" user
read -p "Type groupname:" group 

# Variables 
groupadd $group

# Sudoers 
cp /etc/sudoers{,.bkp}
echo '%'$group' ALL=(ALL) ALL' >> /ect/sudoers
mkdir /home/$group 
useradd $user -g $group -b /home/$group -s /bin/bash
