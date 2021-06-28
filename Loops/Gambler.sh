#! /bin/bash -x
echo "enter the stake,goal and number of times"
read stake
read goal
read n
win=0
loss=0
while(($stake>0))&&(($stake!=$goal))&&(($n>0))
do
     echo "enter the bet amount"
     read bet
     if (($bet>$stake))
      then
           echo "bet is more than stake"
           continue
          fi

       r=0,$(($RANDOM%10))
       if (($(awk -v x=$r -v y=0.5 'BEGIN {print(x>y)}')))
        then
                echo "you won the bet"
                 stake=$((stake-bet))
                   win=$((win+1))
         else
             echo "you lost your bet"
             stake=$((stake-bet))
             loss=$((loss+1))
          fi

            echo "$stake: $stake"
             n=$((n-1))
done
echo "no. of wins $win"

