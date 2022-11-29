
#!/usr/bin/env bash 

# Checking root permissions 

if [ "$(id -u )" != 0 ]
then 
	echo Root permissions required >&2
	exit 1
fi

echo Welcome!
read -p "Type username:" user
read -p "Type groupname:" group 
read -p "Type birthday (example:03051994)" birthday

# Variables 
useradd $user

echo $user"_"$group"_"$birthday

# Sudoers 
#cp /etc/sudoers{,.bkp}
#echo '%'$group' ALL=(ALL) ALL' >> /ect/sudoers
#mkdir /home/$group 
#useradd $user -g $group -b /home/$group -s /bin/bash
