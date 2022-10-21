#!/usr/bin/env bash

#Checking root permissions
if [ "$(id -u)" != 0 ]
then
  echo root permissions required >&2
  exit 1
fi

read -p "Where is file":file

#Variables
file=/var/users.csv
oldIFS=$IFS



#Functions
check_user() {
i=1
while cut -d: -f1 /etc/passwd | grep ^$user$ > /dev/null
do 
   user=$user$i
   ((i++))
done
}

create_user() {
#Restore IFS
IFS=$oldIFS
shell=/sbin/nologin
#Create group
groupadd $group

# Sudoers
if [ "$group" = it ] || [ "$group" = security ]
then
  if ! grep "%$group" /etc/sudoers
    then 
    cp /etc/sudoers{,.bkp}
    echo '%'$group' ALL=(ALL) ALL' >> /etc/sudoers
  fi
  shell=/bin/bash
elif [ "$user" = admin ]
then
  if ! grep "$user" /etc/sudoers
    then 
    cp /etc/sudoers{,.bkp}
    echo $user' ALL=(ALL) ALL' >> /etc/sudoers
  fi
  shell=/bin/bash
fi

mkdir /home/$group
useradd $user -g $group -b /home/$group -s $shell -c "Birthday $bday"
}


#Check parameters
if [ ! -z $2 ]
then
  user=$1
  group=$2
  echo Username: $user   Group: $group
  create_user
elif [ -f $file ]
then
  IFS=$'\n'
  for line in $(cut -d, -f2,3,4,5 $file | tail -n +2 | tr '[:upper:]' '[:lower:]' | tr , ' ' )
  do
    user=$(echo $(echo "$line" | cut -c1).$(echo "$line" | cut -d' ' -f2))
    group=$(echo "$line" | cut -d' ' -f4)
    bday=$(echo "$line" | cut -d' ' -f3)
    check_user
    echo Username: $user Group: $group
    create_user
  done
else
  echo Welcome!
  select option in "Add user" "Show users" "Exit"
  do  case $option in
         "Add user")
	            read -p "Print username: " user
		    read -p "Print groupname: " group
  		    create_user ;;
         "Show users")
		    cut -d: -f1 /etc/passwd ;;
	 "Exit")
		    break ;;
	 *) echo Wrong option ;;
      esac
  done
fi