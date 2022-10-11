#!usr/bin/enc bash 

echo Welcome!
read -p "Type username:" user
read -p "Type groupname:" group 

groupadd $group
cp /etc/sudoers{,.bkp}
echo '%'$group' ALL=(ALL) ALL' >> /ect/sudoers
mkdir /home/$group 
useradd $user -g $group -b /home/$group -s /bin/bash
