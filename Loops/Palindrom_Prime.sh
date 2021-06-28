#!/bin/bash -x
read -p "Enter the number: " n
number=$n
reverse=0
while [ $n -gt 0 ]
do
a=`expr $n % 10 `
n=`expr $n / 10 `
reverse=`expr $reverse \* 10 + $a`
done
echo $reverse
if [ $number -eq $reverse ]
then
	for((i=2; i<=$n/2; i++))
	do
        ans=$(( n%i ))
        if [ $ans -eq 0 ]
        then
                echo "$n is a not prime"
                exit 0
	fi
	done
else
	echo "$n is a Palindrome also prime number"
fi
