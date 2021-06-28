
#!/bin/bash -x
read -p "Enter the nth of hormonic: " n
sum=0
for((i=1; i<=n; i++))
do
	sum=$(echo $sum 1 $i | awk '{printf "%.2f", $1 + $2/$3 }' )
#	echo $sum
done
echo $sum

