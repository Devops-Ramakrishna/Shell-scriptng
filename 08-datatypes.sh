#! /bin/bash

NUMBER1=$1
NUMBER2=$2

SUM=$(($NUMBER1+$NUMBER2))

echo " Total sum is : $SUM "

echo " how many args : $# "

echo " all arg passed : $@ "

echo " script name : $0 "

