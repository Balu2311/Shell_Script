#!/bin/bash -x
read -p "Enter the Number: " N
ext=$N
case $ext in
	0) echo "Sunday"
		;;
	1) echo "Monday"
		;;
	2) echo "Tuesday"
		;;
	3) echo "Wednesday"
		;;
	4) echo "Thursday"
		;;
	5) echo "Friday"
		;;
	6) echo "Saturday"
		;;
	*) echo "Please Enter 0-6 valid Digits"
		;;
esac
