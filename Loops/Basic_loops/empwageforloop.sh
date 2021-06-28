#!/bin/bash -x
isPartTime=1
IsFullTime=2
TotalSalary=0
empRatePerHr=20
numWorkingDays=20
for ((bday=1; day<=$numWorkingDays; day++))
do
	empCheck=$((RANDOM%3));
		case $empCheck in
			$isFullTime)
				empHrs=8
				;;
			$isPartTime)
				empHrs=4
				;;
			*)
				empHrs=0
				;;
		esac
		salary=$(($empHrs * $empRatePerHr))
		totalSalary=$(($TotalSalary + $salary))
		echo $salary
		echo $totalSalary
done

