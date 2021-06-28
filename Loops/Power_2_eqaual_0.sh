#!/bin/bash -x
read -p "enter the lenth of valeue: " k
for ((n=1;n<=$k;n++))
do
	output=$((2**n))
	echo $output
done






