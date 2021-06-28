#!/bin/bash -x
echo "Enter numbers: "
i=0
while [ $i -lt 3 ]
do
	# To input from user
	read a[$i]

	# To increment index
	# by 1, i=i+1

	i=`expr $i + 1`
done

# Print the array starting
# from index, i=0
echo "Output :"
tota=0
for i in "${a[@]}"
do
	# access each element as $i
	echo $i
	let tota+=$i
done
if [ $tota -eq 0 ]
then
	echo "sum is zero"
else
	echo "Total: $tota"
fi
