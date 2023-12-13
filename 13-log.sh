#! /bin/bash


ID=$(id -u)

TIMESTAMP=$(date +%F-%H-%M-%S)

LOGFILE="/tmp/$0-$TIMESTAMP.log"

R="\e[31m"
G="\e[32m"
N="\e[0m"
echo " script name : $0 "

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e " ERROR : $2 ... $R failed $N "
        exit 1
    else
        echo -e " $2 ... $G success $N "
    fi
}

if [ $ID -ne 0 ]
then
    echo " $R ERROR : run this script with root user $N "
    exit 1 # you can give other than 0
else
    echo " you are root user "
fi # fi means reverse of fi, it indicating condition end

yum install mysql -y &>> $LOGFILE

VALIDATE $? " mysql installation "

yum install git -y &>> $LOGFILE

VALIDATE $? " git installation "


