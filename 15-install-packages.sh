#! /bin/bash

ID=$(id -u)

R="\e[31m"
G="\e[32m"
N="\e[0m"


if [ $ID -ne 0 ]
then
    echo " $R ERROR : run this script with root user $N "
    exit 1 # you can give other than 0
else
    echo " you are root user "
fi # fi means reverse of fi, it indicating condition end

echo " All arguments : $@ "


