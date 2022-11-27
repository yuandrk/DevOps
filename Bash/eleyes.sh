#!/usr/bin/env bash

if [ $(id -u) != 0 ]
then
   echo " ---> Pelase run thrue root permission"
   exit 1
else
   echo " ---> Fine, you have a root permission"
fi

echo -n "What name your S3?: "
read bucket

sudo yum install epel-release -y; sudo yum install python-pip -y

sudo yum install git -y

git clone https://github.com/Elyes-Ferjani/Restart-Python.git

cd Restart-Python

python3 -m pip install --user virtualenv

python3 -m venv env

source /home/ec2-user/Restart-Python/env/bin/activate

pip install flask; pip install boto3

python3 server.py $bucket
