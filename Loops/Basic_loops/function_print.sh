#!/bin/bash -x
function print_msg()
{
	echo "Hello $1 $2 "
}

read -p "Enter parameter of function: " param
#calling function
print_msg $param hi
