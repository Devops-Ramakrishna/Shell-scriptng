#! /bin/bash


ID=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo " ERROR : $2 ... failed "
        exit 1
    else
        echo " $2 ... success "
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

VALIDATE $? " mysql installation "

yum install git -y

VALIDATE $? " git installation "


