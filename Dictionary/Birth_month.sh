#!/bin/bash -x
declare -A same_Birth_Month

count=0
while [ $count -ne 50 ]
do
	birthday="Day_"$((RANDOM%12 + 1))"_199"$((RANDOM%9 +1))
	year=$( echo $birthday | awk -F"[ _ ]" '{print $3}' )
	if [ $year -eq 1992 -o $year -eq 1993 ]
	then
		Mob=$( echo $birthday | awk -F"[ _ ]" '{print $2}' )
		same_Birth_Month[$Mob]=$(( ${same_Birth_Month[$Mob]} +1 ))
		(( count++ ))
	fi
done

echo " month : birthday in same month "
for key in ${!same_Birth_Month[*]}
do
	echo " $key : ${same_Birth_Month[$key]} "
done
