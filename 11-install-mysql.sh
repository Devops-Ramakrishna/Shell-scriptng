#! /bin/bash


ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo " ERROR : run this script with root user "
    exit 1 # you can give other than 0
else
    echo " you are root user "
fi # fi means reverse of fi, it indicating condition end

yum install mysql -y

if [ $? -ne 0 ]
then
    echo " ERROR : mysql is not installed "
    exit 1
else
    echo " mysql is installed successfully "
fi

yum install git -y

if [ $? -ne 0 ]
then
    echo " ERROR : git is not installed "
    exit 1
else
    echo " git is installed successfully "
fi
