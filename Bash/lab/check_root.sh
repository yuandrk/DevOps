#!/usr/bin/env bash

if [ $(id -u) != 0 ]
then
   echo " ---> Pelase run thrue root permission"
else
   echo " ---> Fine, you have a root permission"
fi
