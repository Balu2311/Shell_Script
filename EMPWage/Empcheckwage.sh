#!/bin/bash -x
isFullTime=1
isPartTime=2
empRateperHr=20
empFullTime=8
randomCheck=$((RANDOM%3))
case $randomCheck in
	$isFullTime)
		echo "Employee is FullTimePresent"
		empHr=8
		echo $empHr hr
		monthwage=$(( 100 * 20 ))
		echo $monthwage
		read -p "enter the working days: " n
		workhr=$(( $n * $empHr ))
		echo $workhr
		dailywage_f=$(( $empHr * 20 ))
		echo $dailywage_f
		total_wage_f=$(( $workhr * 20 ))
		echo $total_wage_f
		;;
	$isPartTime)
		echo "Employee is PartPTime"
		empHr=4
		echo $empHr hr
   		monthwage=$(( (20 *$empHr) * 20 ))
                echo $monthwage
		read -p "enter the working days: " n
                workhr=$(( $n * $empHr ))
		echo $workhr
		dailywage_p=$(( $empHr * 20 ))
                echo $dailywage_p
                total_wage_p=$(( $workhr * 20 ))
                echo $total_wage_p

		;;
	0)
        	echo "Employee is absent"
		;;
esac
#daily_wages=$(( $dailywage_f + $dailywage_p ))
#echo $daily_wages
#total_wages= $(( $total_wage_f + $total_wage_p ))
#echo $total_wages
