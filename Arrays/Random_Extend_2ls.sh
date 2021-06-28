
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
#print the array
echo "${num[@]}"

# print the second largest number
if [ "${#num[@]}" -lt 2 ]
then
  echo Incoming array is not large enough >&2
  exit 1
fi

largest=${num[0]}
secondGreatest='unset'

for((i=1; i < ${#num[@]}; i++))
do
  if [[ ${num[i]} > $largest ]]
  then
    secondGreatest=$largest
    largest=${num[i]}
  elif (( ${num[i]} != $largest )) && { [[ "$secondGreatest" = "unset" ]] || [[ ${num[i]} > $secondGreatest ]]; }
  then
    secondGreatest=${num[i]}
  fi
done

echo "secondGreatest = $secondGreatest"

#print the second smallest number
if [ "${#num[@]}" -gt 2 ]
then
  echo Incoming array is not small enough >&2
  exit 1
fi

smallest=${num[0]}
secondsmallest='unset'

for((i=1; i < ${#num[@]}; i++))
do
  if [[ ${num[i]} > $smallest ]]
  then
    secondsmallest=$smallest
    smallest=${num[i]}
  elif (( ${num[i]} != $smallest )) && { [[ "$secondsmallest" = "unset" ]] || [[ ${num[i]} > $secondsmallest ]]; }
  then
    secondsmallest=${num[i]}
  fi
done

echo "secondsmallest = $secondsmallest"

