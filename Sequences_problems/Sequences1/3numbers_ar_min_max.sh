#!/bin/bash -x
read -p "Enter the Number: " a
read -p "Enter the Number: " b
read -p "Enter the Number: " c
n1=$(( ($a + $b) *$c ))
n2=$(( ($a + ($b / $c) )))
n3=$(( ($a % $b) + $c ))
n4=$(( ($a * $b) + $c ))
#maximum
if [ $n1 -gt $n2 ] && [ $n1 -gt $n3 ] && [ $n1 -gt $n4 ]
then
	echo $n1
elif [ $n2 -gt $n1 ] && [ $n2 -gt $n3 ] && [ $n2 -gt $n4 ]
then
	echo $n2
elif [ $n3 -gt $n1 ] && [ $n3 -gt $n2 ] && [ $n3 -gt $n4 ]
then
	echo $n3
else
	echo $n4
fi
# minumam value
if [ $n1 -le $n2 ] && [ $n1 -le $n3 ] && [ $n1 -le $n4 ]
then
        echo $n1
elif [ $n2 -le $n1 ] && [ $n2 -le $n3 ] && [ $n2 -le $n4 ]
then
        echo $n2
elif [ $n3 -le $n1 ] && [ $n3 -le $n2 ] && [ $n3 -le $n4 ]
then
        echo $n3
else
        echo $n4

fi
