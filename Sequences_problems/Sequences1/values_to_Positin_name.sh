#!/bin/bash -x
read -p "Enter the Number: " N
if [ $N -eq 1 ]
then
	echo "Units"
elif [ $N -eq 10 ]
then
	echo "Tens"
elif [ $N -eq 100 ]
then
        echo "Hundreds"
elif [ $N -eq 1000 ]
then
        echo "Thousands"
elif [ $N -eq 10000 ]
then
        echo "Ten Thousands"
elif [ $N -eq 100000 ]
then
        echo "One Lack"
elif [ $N -eq 1000000 ]
then
        echo "one Millions"
elif [ $N -eq 10000000 ]
then
        echo "Ten milions"
elif [ $N -eq 10000000 ]
then
        echo "One Core"
elif [ $N -eq 100000000 ]
then
        echo "Ten cores"
elif [ $N -eq 1000000000 ]
then
        echo "Billions"

else
	echo "Please Enter valid value"
fi
