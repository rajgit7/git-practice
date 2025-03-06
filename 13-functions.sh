#!/bin/bash

USERID=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "command is ...FAILED"
        exit1
    fi    
}

if [ $USERID -ne 0 ]
then
    echo "please run this script with root priveleges"
fi

dnf install git -y

VALIDATE $?

if [ $? -ne 0 ]
then
    echo "MySql is not installed...going to install"
    dnf install git -y
    VALIDATE $? "installing MySQl"
else
    echo "MySQL is already installed,nothing to do"
fi        