
#!/bin/bash -x
flip=$((RANDOM%2))
i=1
while [ $i -le 11 ]
do

if [ $flip -eq 1 ]
then
    echo  "head"
else
      echo "tail"
fi
    ((i++))
done

echo "you win 11 times"

