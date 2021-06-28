#!/bin/bash -x
a=$(( (RANDOM%900) +99))
b=$(( (RANDOM%900) +99))
c=$(( (RANDOM%900) +99))
d=$(( (RANDOM%900) +99))
e=$(( (RANDOM%900) +99))

#maxmum Value
if [ $a -gt $b ] && [ $a -gt $c ] && [ $a -gt $d ] && [ $a -gt $e ] 
then
	echo $a "Max"
        if [ $b -gt $a ] && [ $b -gt $c ] && [ $b -gt $d ] && [ $b -gt $e ]
        then
        	echo $b "Max"
		if [ $c -gt $a ] && [ $c -gt $b ] && [ $c -gt $d ] && [ $c -gt $e ]
		then
        		echo $c "Max"
			if [ $d -gt $a ] && [ $d -gt $b ] && [ $d -gt $c ] && [ $d -gt $e ]
			then
        			echo $d "Max"
			else
				echo $e "Max"
			fi
		fi
	fi

fi

#minum value

if [ $a -le $b ] && [ $a -le $c ] && [ $a -le $d ] && [ $a -le $e ]
then
        echo $a "Min"
        if [ $b -le $a ] && [ $b -le $c ] && [ $b -le $d ] && [ $b -le $e ]
        then
                echo $b "Min"
                if [ $c -le $a ] && [ $c -le $b ] && [ $c -le $d ] && [ $c -le $e ]
                then
                        echo $c "Min"
                        if [ $d -le $a ] && [ $d -le $b ] && [ $d -le $c ] && [ $d -le $e ]
                        then
                                echo $d "Min"
                        else
                                echo $e "Min"
                        fi
                fi
        fi

fi


