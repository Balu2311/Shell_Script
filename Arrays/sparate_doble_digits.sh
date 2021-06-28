
#!/bin/bash -x
for((i=1;i<=100;i++))
do
#	echo $i
if [ $i -eq $(($i%10)) ]
then
	twic=$(($i*11))
	arr[i]=$twic
	echo $twic
fi
done

echo "${arr[@]}"
