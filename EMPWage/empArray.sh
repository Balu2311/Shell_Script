#! /bin/bash -x

# constants
IS_PRESENT_FULL_TIME=1
IS_PRESENT_PART_TIME=2
EMP_RATE_PER_HR=20
totalWorkingHour=0
function getWorkHours() {
	local empCheck=$1
	 # selection
        case $empCheck in
                $IS_PRESENT_FULL_TIME) empHrs=8;; # statement 1
                $IS_PRESENT_PART_TIME ) empHrs=4;;  # statment 2
                *) empHrs=0;; # statement 3
        esac
	echo $empHrs

}

for ((day=0;day<20;day++))
do
	# variable
	empCheck=$(( RANDOM % 3 )) # 0/1/2
	#  function call
	empHrs="$( getWorkHours $empCheck)"
	# calculation
	totalWorkingHour=$(( totalWorkingHour + empHrs))
	salary=$(( empHrs * EMP_RATE_PER_HR ))
	dailyWage[$day]=$salary
done

totalSalary=$((  totalWorkingHour * EMP_RATE_PER_HR ))
echo indexes:${!dailyWage[*]}
echo values:${dailyWage[*]}
calSalary=0
for i in ${!dailyWage[*]}
do
	calSalary=$((  calSalary + ${dailyWage[$i]} ))

done
echo calSalary:$calSalary
echo totalSalary:$totalSalary
