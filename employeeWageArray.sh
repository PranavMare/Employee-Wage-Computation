#!/bin/bash -x


IS_PART_TIME=1
IS_FULL_TIME=2
NUM_WORKING_DAYS=20
MAX_HRS_IN_MONTH=100
EMP_RATE_PER_HOUR=20

totalEmpHrs=0
totalWorkingDays=0

function getWorkingHours() {
    case $1 in 
        $IS_FULL_TIME )
            empHrs=8;;
        $IS_PART_TIME )
            empHrs=4;;
        * )
            empHrs=0;;
    esac
}

function getEmpWage() {
    local empHour=$1
}
while [[ $totalWorkingDays -lt $NUM_WORKING_DAYS && $totalEmpHrs -lt $MAX_HRS_IN_MONTH ]]
do
    ((totalWorkingDays++))
    empHrs="$( getWorkingHours $((RANDOM%3)) )"
    totalEmpHrs=$((totalEmpHrs+empHrs))
    #dailyWage[$totalWorkingDays]=$((empHrs*EMP_RATE_PER_HOUR))
    dailyWage[$totalWorkingDays]="$(getEmpWage empHrs)"
done

totalSalary=$((totalEmpHrs*EMP_RATE_PER_HOUR))

