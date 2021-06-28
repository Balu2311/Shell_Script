#!/bin/bash -x
read -p "Enter a variable1:" var1
read -p "Enter a variable2:" var2
if [ $var1 -ge $var2 ]
then
        echo "$var1 is greater than $var2"
else
        echo "$var2 is greater than $var1"
fi
