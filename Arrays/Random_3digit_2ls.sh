
#!/bin/bash -x
maxcount=10
count=1
echo "$maxcount random numbers: "
while [ $count -le $maxcount ]
do
	number=$(( (RANDOM%900) +99 ))
	num[$count]=$number
	let "count += 1"
done
sort -n <(printf "%s\n" "${num[@]}")
#echo $num
#echo "${num[@]}"
#echo "${num[*]}"

#print second largest number
Second_largest=$(printf '%s\n' "${num[@]}" | sort -n | tail -2 | head -1 )
echo $Second_largest

#second smallest_number
Second_small=$(printf '%s\n' "${num[@]}" | sort -n | head -2 | tail -1 )
echo $Second_small

