#! /bin/bash

isPresent=1
empCheck=$((RANDOM%2))

if [[ $isPresent -eq $empCheck ]]
then
    empHrs=8
    empRatePerHour=20
    salary=$((empHrs*empRatePerHour))
else
    salary=0;
fi

echo $salary
