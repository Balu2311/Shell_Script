
#!/bin/bash -x
declare -A take
for ((i=1;i<=3;i++))
do
	read -p "Enter dictionary key: " key
	read -p "Enter dictionary value: " value
	take[$key]="$value"
done

#print values
echo ${take[@]}

#print exat key value
echo ${take[c]}

#print count values
echo ${#take[@]}

# print key 
echo ${!take[@]}

#print key and value  in sequnce
for key in ${!take[@]}
do
	echo $key=${take[$key]}
done

