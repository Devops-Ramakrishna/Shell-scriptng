#! /bin/bash


ID=$(id -u)

VALIDATE(){
    if [ $? -ne 0 ]
    then
        echo " ERROR : Packages are not installed "
        exit 1
    else
        echo " Packages ARE installed successfully "
    fi
}

if [ $ID -ne 0 ]
then
    echo " ERROR : run this script with root user "
    exit 1 # you can give other than 0
else
    echo " you are root user "
fi # fi means reverse of fi, it indicating condition end

yum install mysql -y

VALIDATE

yum install git -y

VALIDATE

