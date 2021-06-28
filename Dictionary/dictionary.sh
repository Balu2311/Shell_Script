#!/bin/bash -x
declare -A person
person[name]="Balu"
person[city]="Veerannapalem"
person[state]="AP"

echo ${person[@]}

echo ${person[state]}

echo ${#person[@]}

echo ${!person[@]}

for key in ${!person[@]}
do
	echo $key=${person[$key]}
done

