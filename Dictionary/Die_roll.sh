#!/bin/bash -x
declare -A DieRoll
min=0
while [ $min -eq 0 ]
do
	roll=$(( RANDOM%6 +1 ))
	DieRoll[$roll]=$(( ${diceDict[$roll]} +1 ))
	for i in ${!DieRoll[*]}
	do
		if [ ${DieRoll[$i]} -eq 10 ]
		then
			min=0
			for i in ${!DieRoll[*]}
			do
				echo "$i:${DieRoll[$i]}"
			done
		fi
	done
done

