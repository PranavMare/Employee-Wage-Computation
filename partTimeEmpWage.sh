#! /bin/bash -x

isFullTime=2
isPartTime=1
empRatePerHour=20

empCheck=$((RANDOM%3))

if [[ $empCheck -eq $isFullTime ]]
then
    empHrs=8
elif [[ $empCheck -eq $isPartTime ]]
then
    empHrs=4
else
    empHrs=0
fi

salary=$((empHrs*empRatePerHour))
echo $salary
