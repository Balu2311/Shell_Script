#/bin/bash -x
read -p "Enter the value: " n
h=0
for ((i=1; i<=n;i++))
do
	harmonic=`expr $h + $i`
	series=`expr 1/$harmonic`
	echo $series
done

