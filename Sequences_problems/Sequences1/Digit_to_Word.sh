#!/bin/bash -x
read -p "Enter the Number: " N
if [ $N -eq 0 ]
then
	echo "Zero"
elif [ $N -eq 1 ]
then
	echo "One"
elif [ $N -eq 2 ]
then
        echo "Two"
elif [ $N -eq 3 ]
then
        echo "Three"
elif [ $N -eq 4 ]
then
        echo "Four"
elif [ $N -eq 5 ]
then
        echo "Five"
elif [ $N -eq 6 ]
then
        echo "Six"
elif [ $N -eq 7 ]
then
        echo "Seven"
elif [ $N -eq 8 ]
then
        echo "Eigth"
elif [ $N -eq 9 ]
then
        echo "Nine"
else
	echo "Please Enter Single Digits"
fi
