#!/bin/bash -x
declare -a fruits
counter=0
Fruits[0]="Apple"
Fruits[1]="10"
Fruits[2]="Orange"
Fruits[3]="Banana"
#echo "Element of an array" ${Fruits[@]}

# to print all elements of  an array
echo ${Fruits[@]}
#printing particular array
echo ${Fruits[1]}
#to get count of  elements of array
echo ${#Fruits[@]}
#print index of array
echo ${!Fruits[@]}

#Iterating values of array
for value in ${Fruits[@]}
do
	echo $value
done

#to print index=value
for index in ${!Fruits[@]}
do
	echo $index=${Fruits[$index]}
done
