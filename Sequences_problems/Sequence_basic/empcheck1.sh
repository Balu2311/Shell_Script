
#!/bin/bash -x
randomCheck=$((RANDOM%3))
if [ $randomCheck -eq 1 ]
then
	echo "Employee is fulltime present"
elif [ $randomCheck -eq 2 ]
then
	echo "Employee is part time"
else
	echo "Employee absent"
fi

