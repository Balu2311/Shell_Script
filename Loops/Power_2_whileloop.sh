#!/bin/bash -x
read -p "Enter the number: " n
i=1
while [ $i -le $n ]
do
        p=$((2**$i))
	echo $p
	if [ $p -eq 256 ]
	then
		break
	fi
	i=$(( $i+1))
done



