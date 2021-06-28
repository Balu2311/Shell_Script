#!/bin/bash -x
echo "Think number b/w 1 to 100"
a=0
b=100
N=$((b-a))
mid=$((mid+N/2))
while [ $N -ne '1' ]
do
read -p "Is number greater than $mid ?? (YES/NO) " Userinput
if [ $Userinput == 'y' ]
then
	a=$mid
	N=$((b-a))
	mid=$((mid+N/2))
else
	b=$mid
	N=$((b-a))
	mid=$((mid-N/2))
fi
done
