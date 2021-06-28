#!/bin/bash -x
declare -a Dobledigitarray
countarray=0
for ((count=1 ; count < 100 ; count++ ))
do
	if [ $((count%10)) -eq $(((count/10)%10)) ]
	then
		Dobledigitarray[ ((countarray++)) ]=$count
	fi
done
echo "Dobledigitnumbers is ${Dobledigitarray[@]}"
