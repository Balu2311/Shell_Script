
#!/bin/bash -x
read -p "Enter the range value: " N
i=1
while [ $i -le $N ]
do
	if [ $(($i%2)) -ne 0 ]
	then
		#echo $i
		arr[i]=$i
	fi


	if [ $(($i%2)) -eq 0 ]
	then
		#echo $i
		arra[i]=$i
		#echo "Print even"
	fi
	i=$(($i+1))
done
echo "Odd: " "${arr[@]}"
echo "Even: " "${arra[@]}"
#prime
m=2
while [ $m -le $N ]
do
	i=2 flag=0
	while [ $i -le `expr $m / 2` ]
	do
		if [ `expr $m % $i` -eq 0 ]
		then

			flag=1
			break
		fi

		i=`expr $i + 1`

 	done
	if [ $flag -eq 0 ]
	then
		#echo $m
		array[m]=$m
	fi
	m=`expr $m + 1`

done
echo "Prime: " "${array[@]}"
