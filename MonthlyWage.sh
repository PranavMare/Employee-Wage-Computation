#! /bin/bash -x

isFullTime=2
isPartTime=1
empRatePerHour=20
numWorkingDays=20
totalSalary=0

for (( day=1 ; day<=$numWorkingDays ; day++ ))
do
    empCheck=$((RANDOM%3))
    case $empCheck in 
        $isFullTime )
            empHrs=8;;
        $isPartTime )
            empHrs=4;;
        * )
            empHrs=0;;
    esac

    salary=$((empHrs*empRatePerHour))
    totalSalary=$((totalSalary+salary))
done

echo $totalSalary
