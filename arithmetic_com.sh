#!/bin/bash -x
read -p "Enter the value: " a
read -p "Enter the value: " b
read -p "Enter the value: " c
uc2=$(( a + b * c ))
echo $uc2
uc3=$(( a * b + c ))
echo $uc3
uc4=$(( c + a / c ))
echo $uc4
uc5=$(( a % b + c ))
echo $uc5
#create dict
declare -A comp
comp[uc2]=$uc2
comp[uc3]=$uc3
comp[uc4]=$uc4
comp[uc5]=$uc5
#print key values
for key in ${!comp[@]}
do
        echo $key=${comp[$key]}
done
# print values to array
for value in ${comp[@]}
do
	echo $value=${comp[$value]}
done
#sort the  desending order
sort -nr <(printf "%s\n" "${comp[@]}")
#assending order
sort -n <(printf "%s\n" "${comp[@]}")


