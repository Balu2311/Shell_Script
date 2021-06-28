#!/bin/bash -x
echo "Following the below options: " N
echo "Feet to Inch"
echo "Feet to Meter"
echo "Inch to Feet"
echo "Meter to Feet"
read -p "Pleas Enter the choice option: " opt
ext=$opt
case $ext in
	1)
		read -p "Please Enter the feet value: " feet
		inches=$((feet * 12))
		echo "By Converting "$feet "feet to inches we got "$inches "inches "
	;;
	2)
		read -p "Please Enter the inches value: " inch
                feet=$((inch / 12))
		feet2=$((inch%12))
		echo "By Converting "$inch "inch to feet we got "$feet"."$feet2" feets"
	;;
	3)
		read -p "Please Enter the feet value: " feet
		meter=$(echo $feet 0.3048 | awk '{printf "%.2f", $1 * $2 }' )
		echo "By Converting "$feet "feet to meters we got "$meter "meter"
	;;
	4)
		read -p "Please Enter the feet value: "  meter
                feet=$(echo $meter 0.3048 | awk '{printf "%.2f", $1 / $2 }' )
		echo "By Converting "$meter "meters to feets we got "$feet "feets"

	;;
	*)
		echo "Invalid selection"
esac
