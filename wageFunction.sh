#! /bin/bash -x

#constants
IS_PART_TIME=1
IS_FULL_TIME=2
NUM_WORKING_DAYS=20
MAX_HOURS_IN_MONTH=100
EMP_RATE_PER_HOUR=20

#variables
totalEmpHrs=0
totalWorkingDays=0

function getWorkingHours(){
    case $1 in 
        $IS_FULL_TIME )
            empHrs=8;;
        $IS_PART_TIME )
            empHrs=4;;
        * )
            empHrs=0;;
    esac
    echo $empHrs
}

while [[ $totalEmpHrs -lt $MAX_HOURS_IN_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
    ((totalWorkingDays++))
    workHours="$( getWorkingHours $((RANDOM%3)) )"
    totalEmpHrs=$((totalEmpHrs+workHours))
done

totalSalary=$((totalEmpHrs*EMP_RATE_PER_HOUR))


