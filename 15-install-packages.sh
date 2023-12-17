#! /bin/bash

ID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo " script *is started executing at $TIMESTAMP " &>> $LOGFILE

VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo -e " $2 .... $R FAILED $N "
    else
        echo -e " $2 .... $G SUCCESS $N "
    fi


if [ $ID -ne 0 ]
then
    echo " $R ERROR : run this script with root user $N "
    exit 1 # you can give other than 0
else
    echo " you are root user "
fi # fi means reverse of fi, it indicating condition end

echo " All arguments : $@ "

# mysql git postfix

# package=git for girst time

for package in $@
do
    yum list installed $package &>> $LOGFILE
    if [ $? -ne 0]
    then
        yum install $package -y &>> $LOGFILE
        VALIADTE $? "INSTALLATION OF $package"
    else
        echo -e " $package is already installed ... $Y SKIPPING $N "
    fi
done





