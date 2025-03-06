#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "please run this script in root priveleges"
fi

dnf install git -y

if [ $? -ne 0 ]
then 
    echo "git is not installed,going to install it"
    dnf install git -y
else 
    echo "git is a;lready installed, Nothing to do"  
fi


dnf installed mysql

if [ $? -ne 0 ]
then
    echo "MySQL is not installed..going to instsll"
    dnf install mysql -y
    if [ $? -ne 0 ]
    then
        echo "MySQL installation is failure..please check"
        exit1
    else
        echo "MySQL installation is success"
    fi
 else
     echo "MySQL is already installed ,nothing to do"
fi   