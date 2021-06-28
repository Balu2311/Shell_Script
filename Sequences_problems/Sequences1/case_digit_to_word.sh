#!/bin/bash -x
read -p "Enter the Number: " N
ext=$N
case $ext in
	0) echo "Zero"
		;;
	1) echo "One"
		;;
	2) echo "Two"
		;;
	3) echo "Three"
		;;
	4) echo "Four"
		;;
	5) echo "Five"
		;;
	6) echo "Six"
		;;
	7) echo "Seven"
		;;
	8) echo "Eigth"
		;;
	9) echo "Nine"
		;;
	*) echo "Enter single digit only"
		;;
esac
