#!/bin/bash -x
#read -p "Enter the Number: " N
read -p "Select an option which place value you want to see: " opt

case $opt in
	1)
	read -p "Enter the Number: " N
	if [ $N -eq 1 ]
	then
		echo "for getting Units place value"
	fi
	;;
	2)
	read -p "Enter the Number: " N
        if [ $N -eq 10 ]
	then
        	echo "for getting tens place value"
	fi
	;;
	3)
	read -p "Enter the Number: " N
	if [ $N -eq 100 ]
	then
        	echo "for getting Handreds place value"
	fi
	;;
	4)
	read -p "Enter the Number: " N
        if [ $N -eq 1000 ]
	then
        	echo "for getting thousends place value"
	fi
	;;
	*) echo "Enter only one to thousands values"
	;;
esac
