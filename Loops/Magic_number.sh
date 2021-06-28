
#!/bin/bash -x
function handleNum(){
	if [[ $1 -ge 100 ]]
	then
		echo "start recursive generate random numbers ......"
		handleNum $(($1/10))
	else
		return $(($1/10))
	fi
}
handleNum $RANDOM
number=$?
while true
do
	 echo -n "Please enter a number:"
	read readNumber;
	echo $readNumber;
	 echo -n "need to lift (y / n):"
	read tip;
	echo $tip;
	if [[ $readNumber -gt $number ]]
	then
		echo "your number is bigger ......"
		if [ y = $tip ] ; then
			echo "the result is $number ,and your number is $readNumber "
		fi
	elif [[ $readNumber -lt $number ]]
	then 
		echo "your number is smaller ......"
		if [ y = $tip ] ; then
			echo "the result is $number ,and your number is $readNumber "
		fi
	else
		echo "you are right "
		break
	fi
done

