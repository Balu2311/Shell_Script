#!/bin/bash -x
array=(1 3 4 5 6)
sum=0
for i in ${array[@]}
do
	sum=$(($sum + $i))
	echo $sum
done

